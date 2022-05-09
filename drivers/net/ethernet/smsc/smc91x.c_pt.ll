; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/smsc/smc91x.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/smc91x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
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
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__param_str_nowait = internal constant [14 x i8] c"smc91x.nowait\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nowait = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_nowait = internal constant %struct.kernel_param { ptr @__param_str_nowait, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @nowait } }, section "__param", align 4
@__UNIQUE_ID_nowaittype339 = internal constant [27 x i8] c"smc91x.parmtype=nowait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nowait340 = internal constant [46 x i8] c"smc91x.parm=nowait:set to 1 for no wait state\00", section ".modinfo", align 1
@__param_str_watchdog = internal constant [16 x i8] c"smc91x.watchdog\00", align 1
@watchdog = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_watchdog = internal constant %struct.kernel_param { ptr @__param_str_watchdog, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @watchdog } }, section "__param", align 4
@__UNIQUE_ID_watchdogtype341 = internal constant [29 x i8] c"smc91x.parmtype=watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_watchdog342 = internal constant [54 x i8] c"smc91x.parm=watchdog:transmit timeout in milliseconds\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [45 x i8] c"smc91x.file=drivers/net/ethernet/smsc/smc91x\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [19 x i8] c"smc91x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias345 = internal constant [29 x i8] c"smc91x.alias=platform:smc91x\00", section ".modinfo", align 1
@__initcall__kmod_smc91x__403_2492_smc_driver_init6 = internal global ptr @smc_driver_init, section ".initcall6.init", align 4
@smc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smc_drv_probe, ptr @smc_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @smc91x_match, ptr @smc91x_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_drv_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_smc_driver_exit = internal global ptr @smc_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smc91x\00", [25 x i8] zeroinitializer }, align 32
@smc91x_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,lan91c94\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,lan91c111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@smc91x_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"LNRO0003\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@smc_drv_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @smc_drv_suspend, ptr @smc_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smc_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"at least one of 8-bit or 16-bit access support is required.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smc_drv_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/ethernet/smsc/smc91x.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smc_drv_probe._entry_ptr = internal global ptr @smc_drv_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa-u16-align4\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smc91x-regs\00", [20 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@smc_drv_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: not found (%d).\0A\00", [41 x i8] zeroinitializer }, align 32
@smc_drv_probe._entry_ptr.14 = internal global ptr @smc_drv_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smc91x-attrib\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Detected possible byte-swapped interface at IOADDR %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: IOADDR %p doesn't match configuration (%x).\0A\00", [47 x i8] zeroinitializer }, align 32
@chip_ids = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr null, ptr null, ptr null, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: IO %p: Unrecognized revision register 0x%04x, Contact author.\0A\00", [61 x i8] zeroinitializer }, align 32
@smc_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smc_probe\00", [22 x i8] zeroinitializer }, align 32
@smc_probe._entry_ptr = internal global ptr @smc_probe._entry, section ".printk_index", align 4
@version = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"smc91x.c: v1.1, sep 22 2004 by Nicolas Pitre <nico@fluxnic.net>\00", [32 x i8] zeroinitializer }, align 32
@smc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't autodetect your IRQ. Use irq=xx.\0A\00", [53 x i8] zeroinitializer }, align 32
@smc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @smc_open, ptr @smc_close, ptr @smc_hard_start_xmit, ptr null, ptr null, ptr null, ptr @smc_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@smc_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @smc_ethtool_getdrvinfo, ptr null, ptr null, ptr null, ptr null, ptr @smc_ethtool_getmsglevel, ptr @smc_ethtool_setmsglevel, ptr @smc_ethtool_nwayreset, ptr @ethtool_op_get_link, ptr null, ptr @smc_ethtool_geteeprom_len, ptr @smc_ethtool_geteeprom, ptr @smc_ethtool_seteeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_ethtool_get_link_ksettings, ptr @smc_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@smc_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&lp->phy_configure)\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s (rev %d) at %p IRQ %d\00", [39 x i8] zeroinitializer }, align 32
@smc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.3, i32 2027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c DMA %p\00", [22 x i8] zeroinitializer }, align 32
@smc_probe._entry_ptr.28 = internal global ptr @smc_probe._entry.26, section ".printk_index", align 4
@smc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.3, i32 2031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c%s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@smc_probe._entry_ptr.31 = internal global ptr @smc_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" [nowait]\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Invalid ethernet MAC address. Please set using ifconfig\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ethernet addr: %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@smc_probe.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.36, i8 1, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@smc_probe.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.37, i8 1, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PHY LAN83C183 (LAN91C111 Internal)\0A\00", [60 x i8] zeroinitializer }, align 32
@smc_probe.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.38, i8 1, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PHY LAN83C180\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMC91C90/91C92\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMC91C94\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMC91C95\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMC91C96\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SMC91C100\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMC91C100FD\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMC91C11xFD\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@smc_reset.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smc_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"timeout %s line %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Far too big packet error.\0A\00", [37 x i8] zeroinitializer }, align 32
@smc_set_multicast_list.invert3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\04\02\06\01\05\03\07", [24 x i8] zeroinitializer }, align 32
@smc_timeout.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smc_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"TX timeout (INT 0x%02x INTMASK 0x%02x MEM 0x%04x FIFO 0x%04x EPH_ST 0x%04x)\0A\00", [51 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Memory allocation failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY reset timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Auto negotiation NOT supported\0A\00", [32 x i8] zeroinitializer }, align 32
@smc_interrupt.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smc_interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UNSUPPORTED: ERCV INTERRUPT\0A\00", [35 x i8] zeroinitializer }, align 32
@smc_tx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smc_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"smc_tx with nothing on FIFO.\0A\00", [34 x i8] zeroinitializer }, align 32
@smc_tx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.61, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s occurred on last xmit\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"late collision\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"too many collisions\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"unexpectedly large number of bad collisions. Please check duplex setting.\0A\00", [53 x i8] zeroinitializer }, align 32
@smc_tx.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.47, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smc_tx.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.47, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smc_rcv.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smc_rcv\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smc_rcv with nothing on FIFO.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fubar (rxlen %u status %x\0A\00", [37 x i8] zeroinitializer }, align 32
@smc_rcv.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.47, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smc_rcv.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.47, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smc_rcv.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.47, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32768, i64 65535]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32768, i64 65535]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1505344, i64 42081360]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 90, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 97, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"smc_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2481, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2485, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"smc91x_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2188, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"smc91x_acpi_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2181, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"smc_drv_pm_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2476, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2269, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2283, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2292, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2304, i32 45 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2315, i32 45 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2319, i32 42 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2337, i32 59 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2409, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2124, i32 77 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1865, i32 9 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1893, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"chip_ids\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 733, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1908, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1916, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 47, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1922, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1960, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"smc_netdev_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1748, i32 36 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"smc_ethtool_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1734, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1971, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2022, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2027, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2029, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2034, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2037, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2042, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2044, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 2046, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 735, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 736, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 737, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 738, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 739, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 740, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [38 x i8] c"../drivers/net/ethernet/smsc/smc91x.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 741, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 326, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1176, i32 21 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1177, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1177, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 653, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant [8 x i8] c"invert3\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1411, i32 30 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1341, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 565, i32 19 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1052, i32 20 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1079, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1282, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 714, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 735, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 740, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 408, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [38 x i8] c"../drivers/net/ethernet/smsc/smc91x.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 430, i32 20 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_alias345, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_nowait340, ptr @__UNIQUE_ID_nowaittype339, ptr @__UNIQUE_ID_watchdog342, ptr @__UNIQUE_ID_watchdogtype341, ptr @__exitcall_smc_driver_exit, ptr @__initcall__kmod_smc91x__403_2492_smc_driver_init6, ptr @__param_nowait, ptr @__param_watchdog, ptr @smc_driver_exit, ptr @smc_drv_probe._entry, ptr @smc_drv_probe._entry.12, ptr @smc_drv_probe._entry_ptr, ptr @smc_drv_probe._entry_ptr.14, ptr @smc_probe._entry, ptr @smc_probe._entry.26, ptr @smc_probe._entry.29, ptr @smc_probe._entry_ptr, ptr @smc_probe._entry_ptr.28, ptr @smc_probe._entry_ptr.31, ptr @nowait, ptr @watchdog, ptr @smc_driver, ptr @.str, ptr @smc91x_match, ptr @smc91x_acpi_match, ptr @smc_drv_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @chip_ids, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @version, ptr @smc_probe.__key, ptr @.str.21, ptr @.str.22, ptr @smc_netdev_ops, ptr @smc_ethtool_ops, ptr @smc_probe.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @smc_set_multicast_list.invert3, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91x_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91x_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_drv_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_drv_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_set_multicast_list.invert3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smc_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @smc_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 224, i32 noundef 1, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.do.end160_crit_edge, label %if.end

entry.do.end160_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end160

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %cfg = getelementptr i8, ptr %call1, i32 2520
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end21, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %1, align 4
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %cfg, align 4
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %shr = lshr i32 %8, 4
  %and = and i32 %shr, 3
  %io_shift = getelementptr i8, ptr %call1, i32 2512
  %9 = ptrtoint ptr %io_shift to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %io_shift, align 4
  %10 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %do.end, label %if.end21.thread

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #16
  br label %out_free_netdev

if.end21:                                         ; preds = %if.end
  %call23 = tail call ptr @of_match_device(ptr noundef nonnull @smc91x_match, ptr noundef %dev) #13
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then81, label %if.end21.if.then25_crit_edge

if.end21.if.then25_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.end21.thread:                                  ; preds = %if.then6
  %call23281 = tail call ptr @of_match_device(ptr noundef nonnull @smc91x_match, ptr noundef %dev) #13
  %tobool24.not282 = icmp eq ptr %call23281, null
  br i1 %tobool24.not282, label %if.end21.thread.if.end95_crit_edge, label %if.end21.thread.if.then25_crit_edge

if.end21.thread.if.then25_crit_edge:              ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.end21.thread.if.end95_crit_edge:               ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then25:                                        ; preds = %if.end21.thread.if.then25_crit_edge, %if.end21.if.then25_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val, align 4, !annotation !191
  %power_gpio = getelementptr i8, ptr %call1, i32 2332
  %call.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 7) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then25.cleanup.thread_crit_edge, label %if.end.i

if.then25.cleanup.thread_crit_edge:               ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end.i:                                         ; preds = %if.then25
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.try_toggle_control_gpio.exit.thread_crit_edge, label %if.then6.i

if.end.i.try_toggle_control_gpio.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_toggle_control_gpio.exit.thread

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #13
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call.i, i32 noundef 0) #13
  br label %try_toggle_control_gpio.exit.thread

try_toggle_control_gpio.exit.thread:              ; preds = %if.then6.i, %if.end.i.try_toggle_control_gpio.exit.thread_crit_edge
  %13 = ptrtoint ptr %power_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %power_gpio, align 4
  %reset_gpio = getelementptr i8, ptr %call1, i32 2336
  %call.i243 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 7) #13
  %cmp.i.i244 = icmp ugt ptr %call.i243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i244, label %try_toggle_control_gpio.exit.thread.cleanup.thread_crit_edge, label %if.end.i247

try_toggle_control_gpio.exit.thread.cleanup.thread_crit_edge: ; preds = %try_toggle_control_gpio.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end.i247:                                      ; preds = %try_toggle_control_gpio.exit.thread
  %tobool3.not.i246 = icmp eq ptr %call.i243, null
  br i1 %tobool3.not.i246, label %try_toggle_control_gpio.exit251.thread.thread, label %if.then38

try_toggle_control_gpio.exit251.thread.thread:    ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i243, ptr %reset_gpio, align 4
  br label %if.end39

if.then38:                                        ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #13
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call.i243, i32 noundef 0) #13
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i243, ptr %reset_gpio, align 4
  tail call void @usleep_range_state(i32 noundef 750, i32 noundef 1000, i32 noundef 2) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %try_toggle_control_gpio.exit251.thread.thread
  %call.i252 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull %val, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool42.not = icmp eq i32 %call.i252, 0
  br i1 %tobool42.not, label %if.then43, label %if.end39.if.end67.sink.split_crit_edge

if.end39.if.end67.sink.split_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.sink.split

if.then43:                                        ; preds = %if.end39
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and44 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then43.if.end49_crit_edge, label %if.then46

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %cfg, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.then43.if.end49_crit_edge
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp ne i32 %21, 0
  %and50 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond242 = and i1 %cmp, %tobool51.not
  br i1 %or.cond242, label %if.end49.if.end56_crit_edge, label %if.then52

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg, align 4
  %or55 = or i32 %23, 2
  store i32 %or55, ptr %cfg, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end49.if.end56_crit_edge
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and57 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end67_crit_edge, label %if.end56.if.end67.sink.split_crit_edge

if.end56.if.end67.sink.split_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.sink.split

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end67.sink.split:                              ; preds = %if.end56.if.end67.sink.split_crit_edge, %if.end39.if.end67.sink.split_crit_edge
  %.sink284 = phi i32 [ 4, %if.end56.if.end67.sink.split_crit_edge ], [ 2, %if.end39.if.end67.sink.split_crit_edge ]
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg, align 4
  %or62 = or i32 %27, %.sink284
  store i32 %or62, ptr %cfg, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.end56.if.end67_crit_edge
  %call.i253 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %val, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool70.not = icmp eq i32 %call.i253, 0
  br i1 %tobool70.not, label %if.then71, label %if.end67.if.end77.thread_crit_edge

if.end67.if.end77.thread_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.thread

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %io_shift72 = getelementptr i8, ptr %call1, i32 2512
  %30 = ptrtoint ptr %io_shift72 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %io_shift72, align 4
  br label %if.end77.thread

cleanup.thread:                                   ; preds = %try_toggle_control_gpio.exit.thread.cleanup.thread_crit_edge, %if.then25.cleanup.thread_crit_edge
  %ret.0.ph.in = phi ptr [ %call.i, %if.then25.cleanup.thread_crit_edge ], [ %call.i243, %try_toggle_control_gpio.exit.thread.cleanup.thread_crit_edge ]
  %ret.0.ph = ptrtoint ptr %ret.0.ph.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  br label %out_free_netdev

if.end77.thread:                                  ; preds = %if.then71, %if.end67.if.end77.thread_crit_edge
  %call.i254 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  %pxa_u16_align4 = getelementptr i8, ptr %call1, i32 2526
  %frombool = zext i1 %call.i254 to i8
  %31 = ptrtoint ptr %pxa_u16_align4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %pxa_u16_align4, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  br label %if.end95

if.then81:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfg, align 4
  %or90 = or i32 %33, 7
  store i32 %or90, ptr %cfg, align 4
  %34 = load i32, ptr @nowait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool91.not = icmp eq i32 %34, 0
  %cond = select i1 %tobool91.not, i32 0, i32 8
  %or94 = or i32 %cond, %or90
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or94, ptr %cfg, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then81, %if.end77.thread, %if.end21.thread.if.end95_crit_edge
  %leda = getelementptr i8, ptr %call1, i32 2524
  %36 = ptrtoint ptr %leda to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %leda, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool97.not = icmp eq i8 %37, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %if.end95.if.end106_crit_edge

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

land.lhs.true98:                                  ; preds = %if.end95
  %ledb = getelementptr i8, ptr %call1, i32 2525
  %38 = ptrtoint ptr %ledb to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ledb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool100.not = icmp eq i8 %39, 0
  br i1 %tobool100.not, label %if.then101, label %land.lhs.true98.if.end106_crit_edge

land.lhs.true98.if.end106_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then101:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %leda to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %leda, align 4
  %41 = ptrtoint ptr %ledb to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %ledb, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %land.lhs.true98.if.end106_crit_edge, %if.end95.if.end106_crit_edge
  %dma = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 53
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %dma, align 1
  %call107 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.11) #13
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %if.end111, label %if.end106.if.end114_crit_edge

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.end111:                                        ; preds = %if.end106
  %call110 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %tobool112.not = icmp eq ptr %call110, null
  br i1 %tobool112.not, label %if.end111.out_free_netdev_crit_edge, label %if.end111.if.end114_crit_edge

if.end111.if.end114_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.end111.out_free_netdev_crit_edge:              ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_netdev

if.end114:                                        ; preds = %if.end111.if.end114_crit_edge, %if.end106.if.end114_crit_edge
  %res.0276 = phi ptr [ %call110, %if.end111.if.end114_crit_edge ], [ %call107, %if.end106.if.end114_crit_edge ]
  %43 = ptrtoint ptr %res.0276 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %res.0276, align 4
  %io_shift115 = getelementptr i8, ptr %call1, i32 2512
  %45 = ptrtoint ptr %io_shift115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_shift115, align 4
  %shl = shl i32 16, %46
  %call116 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %44, i32 noundef %shl, ptr noundef nonnull @.str, i32 noundef 0) #13
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end114.out_free_netdev_crit_edge, label %if.end119

if.end114.out_free_netdev_crit_edge:              ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_netdev

if.end119:                                        ; preds = %if.end114
  %call120 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 64
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call120, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp122 = icmp slt i32 %call120, 0
  br i1 %cmp122, label %if.end119.out_release_io_crit_edge, label %if.end125

if.end119.out_release_io_crit_edge:               ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_io

if.end125:                                        ; preds = %if.end119
  %call127 = call ptr @irq_get_irq_data(i32 noundef %call120) #13
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call127, i32 0, i32 3
  %48 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %common.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %and.i = and i32 %51, 15
  %call.i255 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #13
  %tobool.not.i = icmp eq ptr %call.i255, null
  br i1 %tobool.not.i, label %if.end125.if.end139_crit_edge, label %if.end.i257

if.end125.if.end139_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.end.i257:                                      ; preds = %if.end125
  %52 = ptrtoint ptr %call.i255 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i255, align 4
  %54 = ptrtoint ptr %io_shift115 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_shift115, align 4
  %shl.i = shl i32 65536, %55
  %call2.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %53, i32 noundef %shl.i, ptr noundef nonnull @.str, i32 noundef 0) #13
  %tobool3.not.i256 = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i256, label %if.end.i257.out_release_io_crit_edge, label %if.end.i257.if.end139_crit_edge

if.end.i257.if.end139_crit_edge:                  ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.end.i257.out_release_io_crit_edge:             ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_io

if.end139:                                        ; preds = %if.end.i257.if.end139_crit_edge, %if.end125.if.end139_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %call140 = call fastcc i32 @smc_enable_device(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.out_release_attrib_crit_edge

if.end139.out_release_attrib_crit_edge:           ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_attrib

if.end143:                                        ; preds = %if.end139
  %57 = ptrtoint ptr %res.0276 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %res.0276, align 4
  %59 = ptrtoint ptr %io_shift115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %io_shift115, align 4
  %shl146 = shl i32 16, %60
  %call147 = call ptr @ioremap(i32 noundef %58, i32 noundef %shl146) #13
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %if.end143.out_release_attrib_crit_edge, label %if.end150

if.end143.out_release_attrib_crit_edge:           ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_attrib

if.end150:                                        ; preds = %if.end143
  %call151 = call fastcc i32 @smc_probe(ptr noundef nonnull %call1, ptr noundef nonnull %call147, i32 noundef %and.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152.not = icmp eq i32 %call151, 0
  br i1 %cmp152.not, label %if.end150.cleanup162_crit_edge, label %out_iounmap

if.end150.cleanup162_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup162

out_iounmap:                                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  call void @iounmap(ptr noundef nonnull %call147) #13
  br label %out_release_attrib

out_release_attrib:                               ; preds = %out_iounmap, %if.end143.out_release_attrib_crit_edge, %if.end139.out_release_attrib_crit_edge
  %ret.1 = phi i32 [ %call140, %if.end139.out_release_attrib_crit_edge ], [ %call151, %out_iounmap ], [ -12, %if.end143.out_release_attrib_crit_edge ]
  %call.i259 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #13
  %tobool.not.i260 = icmp eq ptr %call.i259, null
  br i1 %tobool.not.i260, label %out_release_attrib.out_release_io_crit_edge, label %if.then.i263

out_release_attrib.out_release_io_crit_edge:      ; preds = %out_release_attrib
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_io

if.then.i263:                                     ; preds = %out_release_attrib
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %call.i259 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call.i259, align 4
  %63 = ptrtoint ptr %io_shift115 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_shift115, align 4
  %shl.i262 = shl i32 65536, %64
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %shl.i262) #13
  br label %out_release_io

out_release_io:                                   ; preds = %if.then.i263, %out_release_attrib.out_release_io_crit_edge, %if.end.i257.out_release_io_crit_edge, %if.end119.out_release_io_crit_edge
  %ret.2 = phi i32 [ %call120, %if.end119.out_release_io_crit_edge ], [ -16, %if.end.i257.out_release_io_crit_edge ], [ %ret.1, %out_release_attrib.out_release_io_crit_edge ], [ %ret.1, %if.then.i263 ]
  %65 = ptrtoint ptr %res.0276 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %res.0276, align 4
  %67 = ptrtoint ptr %io_shift115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %io_shift115, align 4
  %shl157 = shl i32 16, %68
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %66, i32 noundef %shl157) #13
  br label %out_free_netdev

out_free_netdev:                                  ; preds = %out_release_io, %if.end114.out_free_netdev_crit_edge, %if.end111.out_free_netdev_crit_edge, %cleanup.thread, %do.end
  %ret.3 = phi i32 [ %ret.2, %out_release_io ], [ -6, %do.end ], [ -19, %if.end111.out_free_netdev_crit_edge ], [ -16, %if.end114.out_free_netdev_crit_edge ], [ %ret.0.ph, %cleanup.thread ]
  call void @free_netdev(ptr noundef nonnull %call1) #13
  br label %do.end160

do.end160:                                        ; preds = %out_free_netdev, %entry.do.end160_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out_free_netdev ], [ -12, %entry.do.end160_crit_edge ]
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %ret.4) #16
  br label %cleanup162

cleanup162:                                       ; preds = %do.end160, %if.end150.cleanup162_crit_edge
  %retval.0 = phi i32 [ %ret.4, %do.end160 ], [ 0, %if.end150.cleanup162_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_drv_remove(ptr noundef %pdev) #2 align 64 {
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
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #13
  %base = getelementptr i8, ptr %1, i32 2504
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %5) #13
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.smc_release_attrib.exit_crit_edge, label %if.then.i

entry.smc_release_attrib.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_release_attrib.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %io_shift.i = getelementptr i8, ptr %1, i32 2512
  %8 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_shift.i, align 4
  %shl.i = shl i32 65536, %9
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %shl.i) #13
  br label %smc_release_attrib.exit

smc_release_attrib.exit:                          ; preds = %if.then.i, %entry.smc_release_attrib.exit_crit_edge
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.11) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %smc_release_attrib.exit.if.end_crit_edge

smc_release_attrib.exit.if.end_crit_edge:         ; preds = %smc_release_attrib.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %smc_release_attrib.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %smc_release_attrib.exit.if.end_crit_edge
  %res.0 = phi ptr [ %call3, %smc_release_attrib.exit.if.end_crit_edge ], [ %call4, %if.then ]
  %10 = ptrtoint ptr %res.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res.0, align 4
  %io_shift = getelementptr i8, ptr %1, i32 2512
  %12 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift, align 4
  %shl = shl i32 16, %13
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %shl) #13
  tail call void @free_netdev(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_enable_device(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %io_shift = getelementptr i8, ptr %1, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 65536, %5
  %call3 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %shl) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %if.then17, label %do.body7.do.end20_crit_edge

do.body7.do.end20_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body7.do.end20_crit_edge
  %7 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_shift, align 4
  %shl22 = shl i32 32768, %8
  %add.ptr = getelementptr i8, ptr %call3, i32 %shl22
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !194
  %10 = and i8 %9, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !195
  tail call void @arm_heavy_mb() #13
  %or = or i8 %9, -128
  %11 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_shift, align 4
  %shl34 = shl i32 32768, %12
  %add.ptr35 = getelementptr i8, ptr %call3, i32 %shl34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %or) #13, !srcloc !196
  %13 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift, align 4
  %shl39 = shl i32 32768, %14
  %add.ptr40 = getelementptr i8, ptr %call3, i32 %shl39
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !198
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift, align 4
  %shl48 = shl i32 32768, %18
  %add.ptr49 = getelementptr i8, ptr %call3, i32 %shl48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 %10) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !199
  tail call void @arm_heavy_mb() #13
  %19 = or i8 %10, 1
  %20 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift, align 4
  %shl57 = shl i32 32768, %21
  %add.ptr58 = getelementptr i8, ptr %call3, i32 %shl57
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 %19) #13, !srcloc !196
  %22 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_shift, align 4
  %shl62 = shl i32 32770, %23
  %add.ptr63 = getelementptr i8, ptr %call3, i32 %shl62
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !200
  %25 = and i8 %24, -33
  %cfg = getelementptr i8, ptr %1, i32 2520
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg, align 4
  %28 = trunc i32 %27 to i8
  %29 = shl i8 %28, 4
  %30 = and i8 %29, 32
  %31 = or i8 %30, %25
  %spec.select = xor i8 %31, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !201
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_shift, align 4
  %shl82 = shl i32 32770, %33
  %add.ptr83 = getelementptr i8, ptr %call3, i32 %shl82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 %spec.select) #13, !srcloc !196
  br i1 %tobool16.not, label %if.then93, label %do.end20.do.body95_crit_edge

do.end20.do.body95_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body95

if.then93:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body95

do.body95:                                        ; preds = %if.then93, %do.end20.do.body95_crit_edge
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool103.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool103.not, label %if.then107, label %do.body95.do.end110_crit_edge, !prof !203

do.body95.do.end110_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end110

do.end110:                                        ; preds = %if.then107, %do.body95.do.end110_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #13, !srcloc !204
  tail call void @iounmap(ptr noundef nonnull %call3) #13
  tail call void @msleep(i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end110 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_probe(ptr noundef %dev, ptr noundef %ioaddr, i32 noundef %irq_flags) unnamed_addr #2 align 64 {
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
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %6 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_shift, align 4
  %shl = shl i32 14, %7
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %shl
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #13, !srcloc !205
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !206
  %conv = zext i16 %11 to i32
  br label %cond.end36

cond.false:                                       ; preds = %entry
  %and7 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body29, label %cond.true9

cond.true9:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 %shl
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  %conv16 = zext i8 %12 to i32
  %13 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift, align 4
  %shl20 = shl nuw i32 1, %14
  %add = add i32 %shl20, %shl
  %add.ptr21 = getelementptr i8, ptr %ioaddr, i32 %add
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !208
  %conv25 = zext i8 %15 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %or = or i32 %shl26, %conv16
  br label %cond.end36

do.body29:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1859, 0\0A.popsection", ""() #13, !srcloc !209
  unreachable

cond.end36:                                       ; preds = %cond.true9, %cond.true
  %cond37 = phi i32 [ %conv, %cond.true ], [ %or, %cond.true9 ]
  %and41 = and i32 %cond37, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 13056, i32 %and41)
  %cmp.not = icmp eq i32 %and41, 13056
  br i1 %cmp.not, label %do.body48, label %if.then

if.then:                                          ; preds = %cond.end36
  %and43 = and i32 %cond37, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 51
  br i1 %cmp44, label %if.then46, label %if.then.err_out_crit_edge

if.then.err_out_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.then46:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, ptr noundef %ioaddr) #16
  br label %err_out

do.body48:                                        ; preds = %cond.end36
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg, align 4
  %and51 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body60, label %do.body54

do.body54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_shift, align 4
  %shl58 = shl i32 12, %19
  %add.ptr59 = getelementptr i8, ptr %ioaddr, i32 %shl58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #13, !srcloc !211
  br label %do.end108

do.body60:                                        ; preds = %do.body48
  %20 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift, align 4
  %shl64 = shl i32 14, %21
  %and67 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %ioaddr, i32 %shl64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.end108

if.else71:                                        ; preds = %do.body60
  %and74 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body96, label %do.body77

do.body77:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %add.ptr84 = getelementptr i8, ptr %ioaddr, i32 %shl64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !215
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_shift, align 4
  %shl90 = shl nuw i32 1, %23
  %add91 = add i32 %shl90, %shl64
  %add.ptr92 = getelementptr i8, ptr %ioaddr, i32 %add91
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92, i8 0) #13, !srcloc !196
  br label %do.end108

do.body96:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1876, 0\0A.popsection", ""() #13, !srcloc !216
  unreachable

do.end108:                                        ; preds = %do.body77, %if.then69, %do.body54
  %24 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_shift, align 4
  %shl111 = shl i32 14, %25
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg, align 4
  %and115 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %cond.false125, label %cond.true117

cond.true117:                                     ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr120 = getelementptr i8, ptr %ioaddr, i32 %shl111
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr120) #13, !srcloc !205
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %conv124 = zext i16 %29 to i32
  br label %cond.end163

cond.false125:                                    ; preds = %do.end108
  %and128 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body154, label %cond.true130

cond.true130:                                     ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr135 = getelementptr i8, ptr %ioaddr, i32 %shl111
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr135) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  %31 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_shift, align 4
  %shl143 = shl nuw i32 1, %32
  %add144 = add i32 %shl143, %shl111
  %add.ptr145 = getelementptr i8, ptr %ioaddr, i32 %add144
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr145) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !219
  %conv149 = zext i8 %33 to i32
  %shl150 = shl nuw nsw i32 %conv149, 8
  br label %cond.end163

do.body154:                                       ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1877, 0\0A.popsection", ""() #13, !srcloc !220
  unreachable

cond.end163:                                      ; preds = %cond.true130, %cond.true117
  %cond164 = phi i32 [ %conv124, %cond.true117 ], [ %shl150, %cond.true130 ]
  %and165 = and i32 %cond164, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 13056, i32 %and165)
  %cmp166.not = icmp eq i32 %and165, 13056
  br i1 %cmp166.not, label %do.body170, label %cond.end163.err_out_crit_edge

cond.end163.err_out_crit_edge:                    ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

do.body170:                                       ; preds = %cond.end163
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cfg, align 4
  %and173 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %do.body183, label %do.body176

do.body176:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_shift, align 4
  %shl180 = shl i32 12, %37
  %add.ptr181 = getelementptr i8, ptr %ioaddr, i32 %shl180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 256) #13, !srcloc !211
  br label %do.end232

do.body183:                                       ; preds = %do.body170
  %38 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift, align 4
  %shl187 = shl i32 14, %39
  %and190 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.else194, label %if.then192

if.then192:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1102 = getelementptr i8, ptr %ioaddr, i32 %shl187
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1102, i16 256) #13, !srcloc !213
  br label %do.end232

if.else194:                                       ; preds = %do.body183
  %and197 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %do.body220, label %do.body200

do.body200:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !222
  tail call void @arm_heavy_mb() #13
  %add.ptr207 = getelementptr i8, ptr %ioaddr, i32 %shl187
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr207, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !223
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift, align 4
  %shl214 = shl nuw i32 1, %41
  %add215 = add i32 %shl214, %shl187
  %add.ptr216 = getelementptr i8, ptr %ioaddr, i32 %add215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr216, i8 0) #13, !srcloc !196
  br label %do.end232

do.body220:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1889, 0\0A.popsection", ""() #13, !srcloc !224
  unreachable

do.end232:                                        ; preds = %do.body200, %if.then192, %do.body176
  %42 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_shift, align 4
  %shl235 = shl i32 2, %43
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cfg, align 4
  %and239 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %cond.false249, label %cond.true241

cond.true241:                                     ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr244 = getelementptr i8, ptr %ioaddr, i32 %shl235
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr244) #13, !srcloc !205
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  %conv248 = zext i16 %47 to i32
  br label %cond.end287

cond.false249:                                    ; preds = %do.end232
  %and252 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %do.body278, label %cond.true254

cond.true254:                                     ; preds = %cond.false249
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr259 = getelementptr i8, ptr %ioaddr, i32 %shl235
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr259) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !226
  %49 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_shift, align 4
  %shl267 = shl nuw i32 1, %50
  %add268 = add i32 %shl267, %shl235
  %add.ptr269 = getelementptr i8, ptr %ioaddr, i32 %add268
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr269) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !227
  %conv273 = zext i8 %51 to i32
  %shl274 = shl nuw nsw i32 %conv273, 8
  br label %cond.end287

do.body278:                                       ; preds = %cond.false249
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1890, 0\0A.popsection", ""() #13, !srcloc !228
  unreachable

cond.end287:                                      ; preds = %cond.true254, %cond.true241
  %cond288 = phi i32 [ %conv248, %cond.true241 ], [ %shl274, %cond.true254 ]
  %and289 = lshr i32 %cond288, 3
  %shr290 = and i32 %and289, 992
  %52 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_shift, align 4
  %shl292 = shl i32 %shr290, %53
  %54 = ptrtoint ptr %ioaddr to i32
  %shl294 = shl i32 992, %53
  %and295 = and i32 %shl294, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %and295, i32 %shl292)
  %cmp296.not = icmp eq i32 %and295, %shl292
  br i1 %cmp296.not, label %cond.end287.do.body300_crit_edge, label %if.then298

cond.end287.do.body300_crit_edge:                 ; preds = %cond.end287
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body300

if.then298:                                       ; preds = %cond.end287
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, ptr noundef %ioaddr, i32 noundef %shl292) #16
  br label %do.body300

do.body300:                                       ; preds = %if.then298, %cond.end287.do.body300_crit_edge
  %55 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfg, align 4
  %and303 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %do.body313, label %do.body306

do.body306:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %io_shift, align 4
  %shl310 = shl i32 12, %58
  %add.ptr311 = getelementptr i8, ptr %ioaddr, i32 %shl310
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr311, i32 768) #13, !srcloc !211
  br label %do.end362

do.body313:                                       ; preds = %do.body300
  %59 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %io_shift, align 4
  %shl317 = shl i32 14, %60
  %and320 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  br i1 %tobool321.not, label %if.else324, label %if.then322

if.then322:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1103 = getelementptr i8, ptr %ioaddr, i32 %shl317
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1103, i16 768) #13, !srcloc !213
  br label %do.end362

if.else324:                                       ; preds = %do.body313
  %and327 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %do.body350, label %do.body330

do.body330:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !230
  tail call void @arm_heavy_mb() #13
  %add.ptr337 = getelementptr i8, ptr %ioaddr, i32 %shl317
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr337, i8 3) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  tail call void @arm_heavy_mb() #13
  %61 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %io_shift, align 4
  %shl344 = shl nuw i32 1, %62
  %add345 = add i32 %shl344, %shl317
  %add.ptr346 = getelementptr i8, ptr %ioaddr, i32 %add345
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr346, i8 0) #13, !srcloc !196
  br label %do.end362

do.body350:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1902, 0\0A.popsection", ""() #13, !srcloc !232
  unreachable

do.end362:                                        ; preds = %do.body330, %if.then322, %do.body306
  %63 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_shift, align 4
  %shl365 = shl i32 10, %64
  %65 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cfg, align 4
  %and369 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369)
  %tobool370.not = icmp eq i32 %and369, 0
  br i1 %tobool370.not, label %cond.false379, label %cond.true371

cond.true371:                                     ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr374 = getelementptr i8, ptr %ioaddr, i32 %shl365
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr374) #13, !srcloc !205
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !233
  %conv378 = zext i16 %68 to i32
  br label %cond.end417

cond.false379:                                    ; preds = %do.end362
  %and382 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool383.not = icmp eq i32 %and382, 0
  br i1 %tobool383.not, label %do.body408, label %cond.true384

cond.true384:                                     ; preds = %cond.false379
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr389 = getelementptr i8, ptr %ioaddr, i32 %shl365
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr389) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !234
  %conv393 = zext i8 %69 to i32
  %70 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_shift, align 4
  %shl397 = shl nuw i32 1, %71
  %add398 = add i32 %shl397, %shl365
  %add.ptr399 = getelementptr i8, ptr %ioaddr, i32 %add398
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr399) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !235
  %conv403 = zext i8 %72 to i32
  %shl404 = shl nuw nsw i32 %conv403, 8
  %or405 = or i32 %shl404, %conv393
  br label %cond.end417

do.body408:                                       ; preds = %cond.false379
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1903, 0\0A.popsection", ""() #13, !srcloc !236
  unreachable

cond.end417:                                      ; preds = %cond.true384, %cond.true371
  %cond418 = phi i32 [ %conv378, %cond.true371 ], [ %or405, %cond.true384 ]
  %shr422 = lshr i32 %cond418, 4
  %and423 = and i32 %shr422, 15
  %arrayidx = getelementptr [16 x ptr], ptr @chip_ids, i32 0, i32 %and423
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %75 = add nsw i32 %and423, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %75)
  %tobool424.not = icmp ult i32 %75, 7
  %and425 = and i32 %cond418, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 13056, i32 %and425)
  %cmp426.not = icmp eq i32 %and425, 13056
  %or.cond = select i1 %tobool424.not, i1 %cmp426.not, i1 false
  br i1 %or.cond, label %land.end, label %if.then428

if.then428:                                       ; preds = %cond.end417
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, ptr noundef %ioaddr, i32 noundef %cond418) #16
  br label %err_out

land.end:                                         ; preds = %cond.end417
  %.b1094 = load i1, ptr @smc_probe.__already_done, align 1
  br i1 %.b1094, label %land.end.if.end442_crit_edge, label %if.then436, !prof !237

land.end.if.end442_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end442

if.then436:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @smc_probe.__already_done, align 1
  %call441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @version) #16
  br label %if.end442

if.end442:                                        ; preds = %if.then436, %land.end.if.end442_crit_edge
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %76 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %54, ptr %base_addr, align 32
  %base = getelementptr i8, ptr %dev, i32 2504
  %77 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %ioaddr, ptr %base, align 4
  %and450 = and i32 %cond418, 255
  %version = getelementptr i8, ptr %dev, i32 2340
  %78 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and450, ptr %version, align 4
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @smc_probe.__key, i16 noundef signext 3) #13
  %79 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cfg, align 4
  %and458 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and458)
  %tobool459.not = icmp eq i32 %and458, 0
  br i1 %tobool459.not, label %do.body468, label %do.body461

do.body461:                                       ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !238
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_shift, align 4
  %shl465 = shl i32 12, %82
  %add.ptr466 = getelementptr i8, ptr %ioaddr, i32 %shl465
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr466, i32 256) #13, !srcloc !211
  br label %do.body518

do.body468:                                       ; preds = %if.end442
  %83 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_shift, align 4
  %shl472 = shl i32 14, %84
  %and475 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and475)
  %tobool476.not = icmp eq i32 %and475, 0
  br i1 %tobool476.not, label %if.else479, label %if.then477

if.then477:                                       ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1104 = getelementptr i8, ptr %ioaddr, i32 %shl472
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1104, i16 256) #13, !srcloc !213
  br label %do.body518

if.else479:                                       ; preds = %do.body468
  %and482 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and482)
  %tobool483.not = icmp eq i32 %and482, 0
  br i1 %tobool483.not, label %do.body505, label %do.body485

do.body485:                                       ; preds = %if.else479
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !239
  tail call void @arm_heavy_mb() #13
  %add.ptr492 = getelementptr i8, ptr %ioaddr, i32 %shl472
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr492, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !240
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_shift, align 4
  %shl499 = shl nuw i32 1, %86
  %add500 = add i32 %shl499, %shl472
  %add.ptr501 = getelementptr i8, ptr %ioaddr, i32 %add500
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr501, i8 0) #13, !srcloc !196
  br label %do.body518

do.body505:                                       ; preds = %if.else479
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1925, 0\0A.popsection", ""() #13, !srcloc !241
  unreachable

do.body518:                                       ; preds = %do.body485, %if.then477, %do.body461
  %87 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %io_shift, align 4
  %shl522 = shl i32 4, %88
  %89 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cfg, align 4
  %and526 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and526)
  %tobool527.not = icmp eq i32 %and526, 0
  br i1 %tobool527.not, label %cond.false536, label %cond.true528

cond.true528:                                     ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr531 = getelementptr i8, ptr %ioaddr, i32 %shl522
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr531) #13, !srcloc !205
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !242
  %conv535 = zext i16 %92 to i32
  br label %cond.end574

cond.false536:                                    ; preds = %do.body518
  %and539 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and539)
  %tobool540.not = icmp eq i32 %and539, 0
  br i1 %tobool540.not, label %do.body565, label %cond.true541

cond.true541:                                     ; preds = %cond.false536
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr546 = getelementptr i8, ptr %ioaddr, i32 %shl522
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr546) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  %conv550 = zext i8 %93 to i32
  %94 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_shift, align 4
  %shl554 = shl nuw i32 1, %95
  %add555 = add i32 %shl554, %shl522
  %add.ptr556 = getelementptr i8, ptr %ioaddr, i32 %add555
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr556) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !244
  %conv560 = zext i8 %96 to i32
  %shl561 = shl nuw nsw i32 %conv560, 8
  %or562 = or i32 %shl561, %conv550
  br label %cond.end574

do.body565:                                       ; preds = %cond.false536
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1926, 0\0A.popsection", ""() #13, !srcloc !245
  unreachable

cond.end574:                                      ; preds = %cond.true541, %cond.true528
  %cond575 = phi i32 [ %conv535, %cond.true528 ], [ %or562, %cond.true541 ]
  %conv576 = trunc i32 %cond575 to i8
  %97 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv576, ptr %addr, align 1
  %shr578 = lshr i32 %cond575, 8
  %conv579 = trunc i32 %shr578 to i8
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv579, ptr %0, align 1
  %99 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %io_shift, align 4
  %shl583 = shl i32 6, %100
  %101 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cfg, align 4
  %and587 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and587)
  %tobool588.not = icmp eq i32 %and587, 0
  br i1 %tobool588.not, label %cond.false597, label %cond.true589

cond.true589:                                     ; preds = %cond.end574
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr592 = getelementptr i8, ptr %ioaddr, i32 %shl583
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr592) #13, !srcloc !205
  %104 = tail call i16 @llvm.bswap.i16(i16 %103)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !246
  %conv596 = zext i16 %104 to i32
  br label %cond.end635

cond.false597:                                    ; preds = %cond.end574
  %and600 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and600)
  %tobool601.not = icmp eq i32 %and600, 0
  br i1 %tobool601.not, label %do.body626, label %cond.true602

cond.true602:                                     ; preds = %cond.false597
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr607 = getelementptr i8, ptr %ioaddr, i32 %shl583
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr607) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !247
  %conv611 = zext i8 %105 to i32
  %106 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %io_shift, align 4
  %shl615 = shl nuw i32 1, %107
  %add616 = add i32 %shl615, %shl583
  %add.ptr617 = getelementptr i8, ptr %ioaddr, i32 %add616
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr617) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !248
  %conv621 = zext i8 %108 to i32
  %shl622 = shl nuw nsw i32 %conv621, 8
  %or623 = or i32 %shl622, %conv611
  br label %cond.end635

do.body626:                                       ; preds = %cond.false597
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1926, 0\0A.popsection", ""() #13, !srcloc !249
  unreachable

cond.end635:                                      ; preds = %cond.true602, %cond.true589
  %cond636 = phi i32 [ %conv596, %cond.true589 ], [ %or623, %cond.true602 ]
  %conv637 = trunc i32 %cond636 to i8
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv637, ptr %1, align 1
  %shr639 = lshr i32 %cond636, 8
  %conv640 = trunc i32 %shr639 to i8
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv640, ptr %2, align 1
  %111 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_shift, align 4
  %shl644 = shl i32 8, %112
  %113 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cfg, align 4
  %and648 = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and648)
  %tobool649.not = icmp eq i32 %and648, 0
  br i1 %tobool649.not, label %cond.false658, label %cond.true650

cond.true650:                                     ; preds = %cond.end635
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr653 = getelementptr i8, ptr %ioaddr, i32 %shl644
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr653) #13, !srcloc !205
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !250
  %conv657 = zext i16 %116 to i32
  br label %cond.end696

cond.false658:                                    ; preds = %cond.end635
  %and661 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and661)
  %tobool662.not = icmp eq i32 %and661, 0
  br i1 %tobool662.not, label %do.body687, label %cond.true663

cond.true663:                                     ; preds = %cond.false658
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr668 = getelementptr i8, ptr %ioaddr, i32 %shl644
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr668) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  %conv672 = zext i8 %117 to i32
  %118 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %io_shift, align 4
  %shl676 = shl nuw i32 1, %119
  %add677 = add i32 %shl676, %shl644
  %add.ptr678 = getelementptr i8, ptr %ioaddr, i32 %add677
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr678) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv682 = zext i8 %120 to i32
  %shl683 = shl nuw nsw i32 %conv682, 8
  %or684 = or i32 %shl683, %conv672
  br label %cond.end696

do.body687:                                       ; preds = %cond.false658
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1926, 0\0A.popsection", ""() #13, !srcloc !253
  unreachable

cond.end696:                                      ; preds = %cond.true663, %cond.true650
  %cond697 = phi i32 [ %conv657, %cond.true650 ], [ %or684, %cond.true663 ]
  %conv698 = trunc i32 %cond697 to i8
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv698, ptr %3, align 1
  %shr700 = lshr i32 %cond697, 8
  %conv701 = trunc i32 %shr700 to i8
  %122 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv701, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  call fastcc void @smc_reset(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %123 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp705 = icmp slt i32 %124, 1
  br i1 %cmp705, label %cond.end696.while.body_crit_edge, label %cond.end696.if.else.i_crit_edge

cond.end696.if.else.i_crit_edge:                  ; preds = %cond.end696
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

cond.end696.while.body_crit_edge:                 ; preds = %cond.end696
  br label %while.body

while.body:                                       ; preds = %if.end714.while.body_crit_edge, %cond.end696.while.body_crit_edge
  %dec1124 = phi i32 [ %dec, %if.end714.while.body_crit_edge ], [ 2, %cond.end696.while.body_crit_edge ]
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 4
  %call.i = call i32 @probe_irq_on() #13
  %127 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cfg, align 4
  %and.i = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body5.i, label %do.body2.i

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @arm_heavy_mb() #13
  %129 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_shift, align 4
  %shl.i = shl i32 12, %130
  %add.ptr.i1105 = getelementptr i8, ptr %126, i32 %shl.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1105, i32 512) #13, !srcloc !211
  br label %do.body47.i

do.body5.i:                                       ; preds = %while.body
  %131 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %io_shift, align 4
  %shl7.i = shl i32 14, %132
  %and10.i = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @arm_heavy_mb() #13
  %add.ptr8.i.i = getelementptr i8, ptr %126, i32 %shl7.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 512) #13, !srcloc !213
  br label %do.body47.i

if.else13.i:                                      ; preds = %do.body5.i
  %and16.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body35.i, label %do.body19.i

do.body19.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !255
  call void @arm_heavy_mb() #13
  %add.ptr24.i = getelementptr i8, ptr %126, i32 %shl7.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 2) #13, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !256
  call void @arm_heavy_mb() #13
  %133 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %io_shift, align 4
  %shl30.i = shl nuw i32 1, %134
  %add.i = add i32 %shl30.i, %shl7.i
  %add.ptr31.i = getelementptr i8, ptr %126, i32 %add.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 0) #13, !srcloc !196
  br label %do.body47.i

do.body35.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1789, 0\0A.popsection", ""() #13, !srcloc !257
  unreachable

do.body47.i:                                      ; preds = %do.body19.i, %if.then12.i, %do.body2.i
  %135 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cfg, align 4
  %and50.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %do.body60.i, label %do.body53.i

do.body53.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !258
  call void @arm_heavy_mb() #13
  %137 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %io_shift, align 4
  %shl57.i = shl i32 13, %138
  %add.ptr58.i = getelementptr i8, ptr %126, i32 %shl57.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58.i, i8 8) #13, !srcloc !196
  br label %do.body110.i

do.body60.i:                                      ; preds = %do.body47.i
  %and67.i = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body97.i, label %if.then69.i

if.then69.i:                                      ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %io_shift, align 4
  %shl64.i = shl i32 12, %140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @arm_heavy_mb() #13
  %add.ptr8.i364.i = getelementptr i8, ptr %126, i32 %shl64.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i364.i, i16 8) #13, !srcloc !213
  br label %do.body110.i

do.body97.i:                                      ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1790, 0\0A.popsection", ""() #13, !srcloc !259
  unreachable

do.body110.i:                                     ; preds = %if.then69.i, %do.body53.i
  %141 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cfg, align 4
  %and117.i = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.else121.i, label %if.then119.i

if.then119.i:                                     ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %126, i16 8448) #13, !srcloc !213
  br label %do.body157.i.preheader

do.body157.i.preheader:                           ; preds = %do.body127.i, %if.then119.i
  br label %do.body157.i

if.else121.i:                                     ; preds = %do.body110.i
  %and124.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %do.body147.i, label %do.body127.i

do.body127.i:                                     ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !260
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %126, i8 33) #13, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  call void @arm_heavy_mb() #13
  %143 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %io_shift, align 4
  %shl141.i = shl nuw i32 1, %144
  %add.ptr143.i = getelementptr i8, ptr %126, i32 %shl141.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr143.i, i8 0) #13, !srcloc !196
  br label %do.body157.i.preheader

do.body147.i:                                     ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1796, 0\0A.popsection", ""() #13, !srcloc !262
  unreachable

do.body157.i:                                     ; preds = %cond.end223.i.do.body157.i_crit_edge, %do.body157.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %cond.end223.i.do.body157.i_crit_edge ], [ 20, %do.body157.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %145(i32 noundef 2147480) #13
  %146 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cfg, align 4
  %and160.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  br i1 %tobool161.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %io_shift, align 4
  %shl164.i = shl i32 12, %149
  %add.ptr165.i = getelementptr i8, ptr %126, i32 %shl164.i
  %150 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr165.i) #13, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !263
  %conv168.i = zext i8 %150 to i32
  br label %cond.end223.i

cond.false.i:                                     ; preds = %do.body157.i
  %and175.i = and i32 %147, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %do.body213.i, label %cond.true177.i

cond.true177.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %io_shift, align 4
  %shl171.i = shl i32 12, %152
  %add.ptr180.i = getelementptr i8, ptr %126, i32 %shl171.i
  %153 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr180.i) #13, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !264
  %154 = lshr i16 %153, 8
  %conv184.i = zext i16 %154 to i32
  br label %cond.end223.i

do.body213.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1804, 0\0A.popsection", ""() #13, !srcloc !265
  unreachable

cond.end223.i:                                    ; preds = %cond.true177.i, %cond.true.i
  %cond224.i = phi i32 [ %conv168.i, %cond.true.i ], [ %conv184.i, %cond.true177.i ]
  %and225.i = and i32 %cond224.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225.i)
  %tobool226.not.i = icmp ne i32 %and225.i, 0
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool230.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool226.not.i, i1 true, i1 %tobool230.not.i
  br i1 %or.cond.i, label %do.body232.i, label %cond.end223.i.do.body157.i_crit_edge

cond.end223.i.do.body157.i_crit_edge:             ; preds = %cond.end223.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body157.i

do.body232.i:                                     ; preds = %cond.end223.i
  %155 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cfg, align 4
  %and235.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235.i)
  %tobool236.not.i = icmp eq i32 %and235.i, 0
  br i1 %tobool236.not.i, label %do.body245.i, label %do.body238.i

do.body238.i:                                     ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !266
  call void @arm_heavy_mb() #13
  %157 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_shift, align 4
  %shl242.i = shl i32 13, %158
  %add.ptr243.i = getelementptr i8, ptr %126, i32 %shl242.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr243.i, i8 0) #13, !srcloc !196
  br label %smc_findirq.exit

do.body245.i:                                     ; preds = %do.body232.i
  %and252.i = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252.i)
  %tobool253.not.i = icmp eq i32 %and252.i, 0
  br i1 %tobool253.not.i, label %do.body282.i, label %if.then254.i

if.then254.i:                                     ; preds = %do.body245.i
  call void @__sanitizer_cov_trace_pc() #15
  %159 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %io_shift, align 4
  %shl249.i = shl i32 12, %160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @arm_heavy_mb() #13
  %add.ptr8.i365.i = getelementptr i8, ptr %126, i32 %shl249.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i365.i, i16 0) #13, !srcloc !213
  br label %smc_findirq.exit

do.body282.i:                                     ; preds = %do.body245.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1817, 0\0A.popsection", ""() #13, !srcloc !267
  unreachable

smc_findirq.exit:                                 ; preds = %if.then254.i, %do.body238.i
  %call295.i = call i32 @probe_irq_off(i32 noundef %call.i) #13
  %161 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call295.i, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295.i)
  %tobool712.not = icmp eq i32 %call295.i, 0
  br i1 %tobool712.not, label %if.end714, label %smc_findirq.exit.if.else.i_crit_edge

smc_findirq.exit.if.else.i_crit_edge:             ; preds = %smc_findirq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end714:                                        ; preds = %smc_findirq.exit
  call fastcc void @smc_reset(ptr noundef %dev)
  %dec = add nsw i32 %dec1124, -1
  %tobool708.not = icmp eq i32 %dec1124, 0
  br i1 %tobool708.not, label %if.end715, label %if.end714.while.body_crit_edge

if.end714.while.body_crit_edge:                   ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end715:                                        ; preds = %if.end714
  %162 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp717 = icmp eq i32 %.pr, 0
  br i1 %cmp717, label %if.then719, label %if.end715.if.else.i_crit_edge

if.end715.if.else.i_crit_edge:                    ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then719:                                       ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #16
  br label %err_out

if.else.i:                                        ; preds = %if.end715.if.else.i_crit_edge, %smc_findirq.exit.if.else.i_crit_edge, %cond.end696.if.else.i_crit_edge
  %163 = load i32, ptr @watchdog, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %163) #13
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %164 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %call2.i, ptr %watchdog_timeo, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %165 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @smc_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %166 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @smc_ethtool_ops, ptr %ethtool_ops, align 16
  %tx_task = getelementptr i8, ptr %dev, i32 2308
  call void @tasklet_setup(ptr noundef %tx_task, ptr noundef nonnull @smc_hardware_send_pkt) #13
  %phy_configure = getelementptr i8, ptr %dev, i32 2404
  call void @__init_work(ptr noundef %phy_configure, i32 noundef 0) #13
  %167 = ptrtoint ptr %phy_configure to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -64, ptr %phy_configure, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 2420
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @smc_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry728 = getelementptr i8, ptr %dev, i32 2408
  %168 = ptrtoint ptr %entry728 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %entry728, ptr %entry728, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2412
  %169 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %entry728, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 2416
  %170 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @smc_phy_configure, ptr %func, align 4
  %dev732 = getelementptr i8, ptr %dev, i32 2448
  %171 = ptrtoint ptr %dev732 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %dev, ptr %dev732, align 4
  %phy_id_mask = getelementptr i8, ptr %dev, i32 2380
  %172 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %dev, i32 2384
  %173 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 31, ptr %reg_num_mask, align 4
  %force_media = getelementptr i8, ptr %dev, i32 2388
  %174 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load = load i8, ptr %force_media, align 4
  %bf.clear737 = and i8 %bf.load, 63
  store i8 %bf.clear737, ptr %force_media, align 4
  %dev740 = getelementptr i8, ptr %dev, i32 2392
  %175 = ptrtoint ptr %dev740 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %dev, ptr %dev740, align 4
  %mdio_read = getelementptr i8, ptr %dev, i32 2396
  %176 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @smc_phy_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %dev, i32 2400
  %177 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @smc_phy_write, ptr %mdio_write, align 4
  %178 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %179)
  %cmp744 = icmp sgt i32 %179, 111
  br i1 %cmp744, label %if.then746, label %if.else.i.if.end747_crit_edge

if.else.i.if.end747_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end747

if.then746:                                       ; preds = %if.else.i
  %phy_type.i = getelementptr i8, ptr %dev, i32 2368
  %180 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %phy_type.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then746
  %phyaddr.036.i = phi i32 [ 1, %if.then746 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %and.i1106 = and i32 %phyaddr.036.i, 31
  %call1.i = call i32 @smc_phy_read(ptr noundef %dev, i32 noundef %and.i1106, i32 noundef 2) #13
  %call3.i = call i32 @smc_phy_read(ptr noundef %dev, i32 noundef %and.i1106, i32 noundef 3) #13
  %181 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %land.lhs.true11.i [
    i32 0, label %for.body.i.for.inc.i_crit_edge
    i32 65535, label %for.body.i.for.inc.i_crit_edge1140
    i32 32768, label %for.body.i.for.inc.i_crit_edge1141
  ]

for.body.i.for.inc.i_crit_edge1141:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge1140:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %182 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call3.i, label %cleanup.i [
    i32 0, label %land.lhs.true11.i.for.inc.i_crit_edge
    i32 65535, label %land.lhs.true11.i.for.inc.i_crit_edge1142
    i32 32768, label %land.lhs.true11.i.for.inc.i_crit_edge1143
  ]

land.lhs.true11.i.for.inc.i_crit_edge1143:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i.for.inc.i_crit_edge1142:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  %mii.i = getelementptr i8, ptr %dev, i32 2372
  %183 = ptrtoint ptr %mii.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %and.i1106, ptr %mii.i, align 4
  %shl.i1107 = shl i32 %call1.i, 16
  %or.i = or i32 %shl.i1107, %call3.i
  %184 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or.i, ptr %phy_type.i, align 4
  br label %if.end747

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true11.i.for.inc.i_crit_edge1142, %land.lhs.true11.i.for.inc.i_crit_edge1143, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge1140, %for.body.i.for.inc.i_crit_edge1141
  %inc.i = add nuw nsw i32 %phyaddr.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %for.inc.i.if.end747_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end747_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end747

if.end747:                                        ; preds = %for.inc.i.if.end747_crit_edge, %cleanup.i, %if.else.i.if.end747_crit_edge
  call fastcc void @smc_shutdown(ptr noundef %dev)
  %phy_type.i1108 = getelementptr i8, ptr %dev, i32 2368
  %185 = ptrtoint ptr %phy_type.i1108 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %phy_type.i1108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i1109 = icmp eq i32 %186, 0
  br i1 %cmp.i1109, label %if.end747.smc_phy_powerdown.exit_crit_edge, label %if.end.i1114

if.end747.smc_phy_powerdown.exit_crit_edge:       ; preds = %if.end747
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_phy_powerdown.exit

if.end.i1114:                                     ; preds = %if.end747
  call void @__sanitizer_cov_trace_pc() #15
  %mii.i1110 = getelementptr i8, ptr %dev, i32 2372
  %187 = ptrtoint ptr %mii.i1110 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %mii.i1110, align 4
  %call1.i1111 = call zeroext i1 @cancel_work_sync(ptr noundef %phy_configure) #13
  %call2.i1112 = call i32 @smc_phy_read(ptr noundef %dev, i32 noundef %188, i32 noundef 0) #13
  %or.i1113 = or i32 %call2.i1112, 2048
  call void @smc_phy_write(ptr noundef %dev, i32 noundef %188, i32 noundef 0, i32 noundef %or.i1113) #13
  br label %smc_phy_powerdown.exit

smc_phy_powerdown.exit:                           ; preds = %if.end.i1114, %if.end747.smc_phy_powerdown.exit_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %189 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 4, ptr %msg_enable, align 4
  %ctl_rfduplx = getelementptr i8, ptr %dev, i32 2356
  %190 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %ctl_rfduplx, align 4
  %ctl_rspeed = getelementptr i8, ptr %dev, i32 2360
  %191 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 10, ptr %ctl_rspeed, align 4
  %192 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %193)
  %cmp749 = icmp sgt i32 %193, 111
  br i1 %cmp749, label %if.then751, label %smc_phy_powerdown.exit.if.end754_crit_edge

smc_phy_powerdown.exit.if.end754_crit_edge:       ; preds = %smc_phy_powerdown.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end754

if.then751:                                       ; preds = %smc_phy_powerdown.exit
  call void @__sanitizer_cov_trace_pc() #15
  %194 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 1, ptr %ctl_rfduplx, align 4
  %195 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 100, ptr %ctl_rspeed, align 4
  br label %if.end754

if.end754:                                        ; preds = %if.then751, %smc_phy_powerdown.exit.if.end754_crit_edge
  %196 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %irq, align 4
  %call.i1116 = call i32 @request_threaded_irq(i32 noundef %197, ptr noundef nonnull @smc_interrupt, ptr noundef null, i32 noundef %irq_flags, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1116)
  %tobool758.not = icmp eq i32 %call.i1116, 0
  br i1 %tobool758.not, label %if.end760, label %if.end754.err_out_crit_edge

if.end754.err_out_crit_edge:                      ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.end760:                                        ; preds = %if.end754
  %call761 = call i32 @register_netdev(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call761)
  %cmp762 = icmp eq i32 %call761, 0
  br i1 %cmp762, label %if.then764, label %if.end760.err_out_crit_edge

if.end760.err_out_crit_edge:                      ; preds = %if.end760
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.then764:                                       ; preds = %if.end760
  %and765 = and i32 %cond418, 15
  %198 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base, align 4
  %200 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %74, i32 noundef %and765, ptr noundef %199, i32 noundef %201) #16
  %dma_chan = getelementptr i8, ptr %dev, i32 2500
  %202 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dma_chan, align 4
  %tobool768.not = icmp eq ptr %203, null
  br i1 %tobool768.not, label %if.then764.do.end779_crit_edge, label %do.end772

if.then764.do.end779_crit_edge:                   ; preds = %if.then764
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end779

do.end772:                                        ; preds = %if.then764
  call void @__sanitizer_cov_trace_pc() #15
  %call775 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %203) #16
  br label %do.end779

do.end779:                                        ; preds = %do.end772, %if.then764.do.end779_crit_edge
  %204 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cfg, align 4
  %and783 = and i32 %205, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and783)
  %tobool784.not = icmp eq i32 %and783, 0
  %cond785 = select i1 %tobool784.not, ptr @.str.33, ptr @.str.32
  %call786 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %cond785, ptr noundef nonnull @.str.33) #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %206 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev_addr, align 64
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %207, align 4
  %210 = and i32 %209, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.i.not.i = icmp eq i32 %210, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.end779.if.then788_crit_edge

do.end779.if.then788_crit_edge:                   ; preds = %do.end779
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then788

is_valid_ether_addr.exit:                         ; preds = %do.end779
  %add.ptr.i.i = getelementptr i8, ptr %207, i32 4
  %211 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %212 to i32
  %or.i.i = or i32 %209, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then788_crit_edge, label %if.else789

is_valid_ether_addr.exit.if.then788_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then788

if.then788:                                       ; preds = %is_valid_ether_addr.exit.if.then788_crit_edge, %do.end779.if.then788_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #16
  br label %if.end791

if.else789:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %207) #16
  br label %if.end791

if.end791:                                        ; preds = %if.else789, %if.then788
  %213 = ptrtoint ptr %phy_type.i1108 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %phy_type.i1108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp792 = icmp eq i32 %214, 0
  br i1 %cmp792, label %do.body797, label %if.else815

do.body797:                                       ; preds = %if.end791
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_probe.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_probe, %if.then807)) #13
          to label %err_out [label %if.then807], !srcloc !268

if.then807:                                       ; preds = %do.body797
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_probe.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.36) #13
  br label %err_out

if.else815:                                       ; preds = %if.end791
  %and817 = and i32 %214, -16
  %215 = zext i32 %and817 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and817, label %if.else815.err_out_crit_edge [
    i32 1505344, label %do.body823
    i32 42081360, label %do.body851
  ]

if.else815.err_out_crit_edge:                     ; preds = %if.else815
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

do.body823:                                       ; preds = %if.else815
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_probe.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_probe, %if.then835)) #13
          to label %err_out [label %if.then835], !srcloc !268

if.then835:                                       ; preds = %do.body823
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_probe.__UNIQUE_ID_ddebug401, ptr noundef %dev, ptr noundef nonnull @.str.37) #13
  br label %err_out

do.body851:                                       ; preds = %if.else815
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_probe.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_probe, %if.then863)) #13
          to label %err_out [label %if.then863], !srcloc !268

if.then863:                                       ; preds = %do.body851
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_probe.__UNIQUE_ID_ddebug402, ptr noundef %dev, ptr noundef nonnull @.str.38) #13
  br label %err_out

err_out:                                          ; preds = %if.then863, %do.body851, %if.then835, %do.body823, %if.else815.err_out_crit_edge, %if.then807, %do.body797, %if.end760.err_out_crit_edge, %if.end754.err_out_crit_edge, %if.then719, %if.then428, %cond.end163.err_out_crit_edge, %if.then46, %if.then.err_out_crit_edge
  %retval1.0 = phi i32 [ -19, %if.then428 ], [ -19, %if.then719 ], [ %call.i1116, %if.end754.err_out_crit_edge ], [ 0, %if.then807 ], [ 0, %if.then835 ], [ 0, %if.then863 ], [ %call761, %if.end760.err_out_crit_edge ], [ -19, %if.then46 ], [ -19, %if.then.err_out_crit_edge ], [ -19, %cond.end163.err_out_crit_edge ], [ 0, %if.else815.err_out_crit_edge ], [ 0, %do.body797 ], [ 0, %do.body823 ], [ 0, %do.body851 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %cfg2 = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg2, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6, label %do.body3

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !269
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #13, !srcloc !211
  br label %do.body48

do.body6:                                         ; preds = %entry
  %io_shift7 = getelementptr i8, ptr %dev, i32 2512
  %6 = ptrtoint ptr %io_shift7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_shift7, align 4
  %shl8 = shl i32 14, %7
  %and11 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 512) #13, !srcloc !213
  br label %do.body48

if.else14:                                        ; preds = %do.body6
  %and17 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body36, label %do.body20

do.body20:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  tail call void @arm_heavy_mb() #13
  %add.ptr25 = getelementptr i8, ptr %1, i32 %shl8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !271
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %io_shift7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_shift7, align 4
  %shl31 = shl nuw i32 1, %9
  %add = add i32 %shl31, %shl8
  %add.ptr32 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 0) #13, !srcloc !196
  br label %do.body48

do.body36:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #13, !srcloc !272
  unreachable

do.body48:                                        ; preds = %do.body20, %if.then13, %do.body3
  %10 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg2, align 4
  %and51 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body61, label %do.body54

do.body54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  tail call void @arm_heavy_mb() #13
  %io_shift57 = getelementptr i8, ptr %dev, i32 2512
  %12 = ptrtoint ptr %io_shift57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift57, align 4
  %shl58 = shl i32 13, %13
  %add.ptr59 = getelementptr i8, ptr %1, i32 %shl58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 0) #13, !srcloc !196
  br label %do.end110

do.body61:                                        ; preds = %do.body48
  %and68 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body98, label %if.then70

if.then70:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift64 = getelementptr i8, ptr %dev, i32 2512
  %14 = ptrtoint ptr %io_shift64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_shift64, align 4
  %shl65 = shl i32 12, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1132 = getelementptr i8, ptr %1, i32 %shl65
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1132, i16 0) #13, !srcloc !213
  br label %do.end110

do.body98:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #13, !srcloc !274
  unreachable

do.end110:                                        ; preds = %if.then70, %do.body54
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  store ptr null, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %tobool113.not = icmp eq ptr %17, null
  br i1 %tobool113.not, label %do.end110.do.body118_crit_edge, label %if.then114

do.end110.do.body118_crit_edge:                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body118

if.then114:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %17) #13
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %20 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_aborted_errors, align 8
  %inc116 = add i32 %21, 1
  store i32 %inc116, ptr %tx_aborted_errors, align 8
  br label %do.body118

do.body118:                                       ; preds = %if.then114, %do.end110.do.body118_crit_edge
  %22 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg2, align 4
  %and121 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %do.body131, label %do.body124

do.body124:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %io_shift127 = getelementptr i8, ptr %dev, i32 2512
  %24 = ptrtoint ptr %io_shift127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_shift127, align 4
  %shl128 = shl i32 12, %25
  %add.ptr129 = getelementptr i8, ptr %1, i32 %shl128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 0) #13, !srcloc !211
  br label %do.body181

do.body131:                                       ; preds = %do.body118
  %io_shift134 = getelementptr i8, ptr %dev, i32 2512
  %26 = ptrtoint ptr %io_shift134 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift134, align 4
  %shl135 = shl i32 14, %27
  %and138 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else142, label %if.then140

if.then140:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1133 = getelementptr i8, ptr %1, i32 %shl135
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1133, i16 0) #13, !srcloc !213
  br label %do.body181

if.else142:                                       ; preds = %do.body131
  %and145 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %do.body168, label %do.body148

do.body148:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !276
  tail call void @arm_heavy_mb() #13
  %add.ptr155 = getelementptr i8, ptr %1, i32 %shl135
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr155, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !277
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %io_shift134 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_shift134, align 4
  %shl162 = shl nuw i32 1, %29
  %add163 = add i32 %shl162, %shl135
  %add.ptr164 = getelementptr i8, ptr %1, i32 %add163
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr164, i8 0) #13, !srcloc !196
  br label %do.body181

do.body168:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 266, 0\0A.popsection", ""() #13, !srcloc !278
  unreachable

do.body181:                                       ; preds = %do.body148, %if.then140, %do.body124
  %io_shift184 = getelementptr i8, ptr %dev, i32 2512
  %30 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_shift184, align 4
  %shl185 = shl i32 4, %31
  %32 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfg2, align 4
  %and188 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.else192, label %if.then190

if.then190:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1134 = getelementptr i8, ptr %1, i32 %shl185
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1134, i16 128) #13, !srcloc !213
  br label %if.end225

if.else192:                                       ; preds = %do.body181
  %and195 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.body218, label %do.body198

do.body198:                                       ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !279
  tail call void @arm_heavy_mb() #13
  %add.ptr205 = getelementptr i8, ptr %1, i32 %shl185
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr205, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !280
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_shift184, align 4
  %shl212 = shl nuw i32 1, %35
  %add213 = add i32 %shl212, %shl185
  %add.ptr214 = getelementptr i8, ptr %1, i32 %add213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr214, i8 -128) #13, !srcloc !196
  br label %if.end225

do.body218:                                       ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 267, 0\0A.popsection", ""() #13, !srcloc !281
  unreachable

if.end225:                                        ; preds = %do.body198, %if.then190
  %36 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg2, align 4
  %and231 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %do.body241, label %do.body234

do.body234:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift184, align 4
  %shl238 = shl i32 12, %39
  %add.ptr239 = getelementptr i8, ptr %1, i32 %shl238
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 256) #13, !srcloc !211
  br label %do.end290

do.body241:                                       ; preds = %if.end225
  %40 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift184, align 4
  %shl245 = shl i32 14, %41
  %and248 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.else252, label %if.then250

if.then250:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1135 = getelementptr i8, ptr %1, i32 %shl245
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1135, i16 256) #13, !srcloc !213
  br label %do.end290

if.else252:                                       ; preds = %do.body241
  %and255 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %do.body278, label %do.body258

do.body258:                                       ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %add.ptr265 = getelementptr i8, ptr %1, i32 %shl245
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr265, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !284
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_shift184, align 4
  %shl272 = shl nuw i32 1, %43
  %add273 = add i32 %shl272, %shl245
  %add.ptr274 = getelementptr i8, ptr %1, i32 %add273
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr274, i8 0) #13, !srcloc !196
  br label %do.end290

do.body278:                                       ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #13, !srcloc !285
  unreachable

do.end290:                                        ; preds = %do.body258, %if.then250, %do.body234
  %44 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cfg2, align 4
  %and293 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  %spec.select = select i1 %tobool294.not, i32 32768, i32 36864
  %and305 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %if.else309, label %if.then307

if.then307:                                       ; preds = %do.end290
  call void @__sanitizer_cov_trace_pc() #15
  %conv308 = trunc i32 %spec.select to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %46 = lshr exact i16 %conv308, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %46) #13, !srcloc !213
  br label %if.end342

if.else309:                                       ; preds = %do.end290
  %and312 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %do.body335, label %do.body315

do.body315:                                       ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !287
  tail call void @arm_heavy_mb() #13
  %shr326 = lshr exact i32 %spec.select, 8
  %conv327 = trunc i32 %shr326 to i8
  %47 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_shift184, align 4
  %shl329 = shl nuw i32 1, %48
  %add.ptr331 = getelementptr i8, ptr %1, i32 %shl329
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr331, i8 %conv327) #13, !srcloc !196
  br label %if.end342

do.body335:                                       ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 292, 0\0A.popsection", ""() #13, !srcloc !288
  unreachable

if.end342:                                        ; preds = %do.body315, %if.then307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #13
  %50 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfg2, align 4
  %and348 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %tobool349.not = icmp eq i32 %and348, 0
  br i1 %tobool349.not, label %do.body358, label %do.body351

do.body351:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !289
  tail call void @arm_heavy_mb() #13
  %52 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_shift184, align 4
  %shl355 = shl i32 12, %53
  %add.ptr356 = getelementptr i8, ptr %1, i32 %shl355
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 0) #13, !srcloc !211
  br label %do.body408

do.body358:                                       ; preds = %if.end342
  %54 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_shift184, align 4
  %shl362 = shl i32 14, %55
  %and365 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365)
  %tobool366.not = icmp eq i32 %and365, 0
  br i1 %tobool366.not, label %if.else369, label %if.then367

if.then367:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1136 = getelementptr i8, ptr %1, i32 %shl362
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1136, i16 0) #13, !srcloc !213
  br label %do.body408

if.else369:                                       ; preds = %do.body358
  %and372 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %tobool373.not = icmp eq i32 %and372, 0
  br i1 %tobool373.not, label %do.body395, label %do.body375

do.body375:                                       ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !290
  tail call void @arm_heavy_mb() #13
  %add.ptr382 = getelementptr i8, ptr %1, i32 %shl362
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr382, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !291
  tail call void @arm_heavy_mb() #13
  %56 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_shift184, align 4
  %shl389 = shl nuw i32 1, %57
  %add390 = add i32 %shl389, %shl362
  %add.ptr391 = getelementptr i8, ptr %1, i32 %add390
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr391, i8 0) #13, !srcloc !196
  br label %do.body408

do.body395:                                       ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #13, !srcloc !292
  unreachable

do.body408:                                       ; preds = %do.body375, %if.then367, %do.body351
  %58 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_shift184, align 4
  %shl412 = shl i32 4, %59
  %60 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cfg2, align 4
  %and415 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and415)
  %tobool416.not = icmp eq i32 %and415, 0
  br i1 %tobool416.not, label %if.else419, label %if.then417

if.then417:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1137 = getelementptr i8, ptr %1, i32 %shl412
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1137, i16 0) #13, !srcloc !213
  br label %if.end452

if.else419:                                       ; preds = %do.body408
  %and422 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and422)
  %tobool423.not = icmp eq i32 %and422, 0
  br i1 %tobool423.not, label %do.body445, label %do.body425

do.body425:                                       ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !293
  tail call void @arm_heavy_mb() #13
  %add.ptr432 = getelementptr i8, ptr %1, i32 %shl412
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr432, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %62 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_shift184, align 4
  %shl439 = shl nuw i32 1, %63
  %add440 = add i32 %shl439, %shl412
  %add.ptr441 = getelementptr i8, ptr %1, i32 %add440
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr441, i8 0) #13, !srcloc !196
  br label %if.end452

do.body445:                                       ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #13, !srcloc !295
  unreachable

if.end452:                                        ; preds = %do.body425, %if.then417
  %64 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cfg2, align 4
  %and462 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and462)
  %tobool463.not = icmp eq i32 %and462, 0
  br i1 %tobool463.not, label %if.else466, label %if.then464

if.then464:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #13, !srcloc !213
  br label %if.end499

if.else466:                                       ; preds = %if.end452
  %and469 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and469)
  %tobool470.not = icmp eq i32 %and469, 0
  br i1 %tobool470.not, label %do.body492, label %do.body472

do.body472:                                       ; preds = %if.else466
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  %66 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_shift184, align 4
  %shl486 = shl nuw i32 1, %67
  %add.ptr488 = getelementptr i8, ptr %1, i32 %shl486
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr488, i8 0) #13, !srcloc !196
  br label %if.end499

do.body492:                                       ; preds = %if.else466
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #13, !srcloc !298
  unreachable

if.end499:                                        ; preds = %do.body472, %if.then464
  %68 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cfg2, align 4
  %and505 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and505)
  %tobool506.not = icmp eq i32 %and505, 0
  br i1 %tobool506.not, label %do.body515, label %do.body508

do.body508:                                       ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void @arm_heavy_mb() #13
  %70 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_shift184, align 4
  %shl512 = shl i32 12, %71
  %add.ptr513 = getelementptr i8, ptr %1, i32 %shl512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr513, i32 256) #13, !srcloc !211
  br label %do.end564

do.body515:                                       ; preds = %if.end499
  %72 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %io_shift184, align 4
  %shl519 = shl i32 14, %73
  %and522 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and522)
  %tobool523.not = icmp eq i32 %and522, 0
  br i1 %tobool523.not, label %if.else526, label %if.then524

if.then524:                                       ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1138 = getelementptr i8, ptr %1, i32 %shl519
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1138, i16 256) #13, !srcloc !213
  br label %do.end564

if.else526:                                       ; preds = %do.body515
  %and529 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and529)
  %tobool530.not = icmp eq i32 %and529, 0
  br i1 %tobool530.not, label %do.body552, label %do.body532

do.body532:                                       ; preds = %if.else526
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void @arm_heavy_mb() #13
  %add.ptr539 = getelementptr i8, ptr %1, i32 %shl519
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr539, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !301
  tail call void @arm_heavy_mb() #13
  %74 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_shift184, align 4
  %shl546 = shl nuw i32 1, %75
  %add547 = add i32 %shl546, %shl519
  %add.ptr548 = getelementptr i8, ptr %1, i32 %add547
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr548, i8 0) #13, !srcloc !196
  br label %do.end564

do.body552:                                       ; preds = %if.else526
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #13, !srcloc !302
  unreachable

do.end564:                                        ; preds = %do.body532, %if.then524, %do.body508
  %76 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_shift184, align 4
  %shl567 = shl i32 12, %77
  %78 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cfg2, align 4
  %and570 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and570)
  %tobool571.not = icmp eq i32 %and570, 0
  br i1 %tobool571.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end564
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr573 = getelementptr i8, ptr %1, i32 %shl567
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr573) #13, !srcloc !205
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !303
  %conv577 = zext i16 %81 to i32
  br label %cond.end613

cond.false:                                       ; preds = %do.end564
  %and580 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and580)
  %tobool581.not = icmp eq i32 %and580, 0
  br i1 %tobool581.not, label %do.body606, label %cond.true582

cond.true582:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr587 = getelementptr i8, ptr %1, i32 %shl567
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr587) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !304
  %conv591 = zext i8 %82 to i32
  %83 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_shift184, align 4
  %shl595 = shl nuw i32 1, %84
  %add596 = add i32 %shl595, %shl567
  %add.ptr597 = getelementptr i8, ptr %1, i32 %add596
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr597) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !305
  %conv601 = zext i8 %85 to i32
  %shl602 = shl nuw nsw i32 %conv601, 8
  %or603 = or i32 %shl602, %conv591
  br label %cond.end613

do.body606:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 310, 0\0A.popsection", ""() #13, !srcloc !306
  unreachable

cond.end613:                                      ; preds = %cond.true582, %cond.true
  %cond614 = phi i32 [ %conv577, %cond.true ], [ %or603, %cond.true582 ]
  %or616 = or i32 %cond614, 2176
  %86 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %io_shift184, align 4
  %shl621 = shl i32 12, %87
  %88 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cfg2, align 4
  %and624 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and624)
  %tobool625.not = icmp eq i32 %and624, 0
  br i1 %tobool625.not, label %if.else628, label %if.then626

if.then626:                                       ; preds = %cond.end613
  call void @__sanitizer_cov_trace_pc() #15
  %conv627 = trunc i32 %or616 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %90 = tail call i16 @llvm.bswap.i16(i16 %conv627) #13
  %add.ptr8.i1139 = getelementptr i8, ptr %1, i32 %shl621
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1139, i16 %90) #13, !srcloc !213
  br label %if.end661

if.else628:                                       ; preds = %cond.end613
  %and631 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and631)
  %tobool632.not = icmp eq i32 %and631, 0
  br i1 %tobool632.not, label %do.body654, label %do.body634

do.body634:                                       ; preds = %if.else628
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !307
  tail call void @arm_heavy_mb() #13
  %conv640 = trunc i32 %or616 to i8
  %add.ptr641 = getelementptr i8, ptr %1, i32 %shl621
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr641, i8 %conv640) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !308
  tail call void @arm_heavy_mb() #13
  %shr645 = lshr i32 %or616, 8
  %conv646 = trunc i32 %shr645 to i8
  %91 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %io_shift184, align 4
  %shl648 = shl nuw i32 1, %92
  %add649 = add i32 %shl648, %shl621
  %add.ptr650 = getelementptr i8, ptr %1, i32 %add649
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr650, i8 %conv646) #13, !srcloc !196
  br label %if.end661

do.body654:                                       ; preds = %if.else628
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #13, !srcloc !309
  unreachable

if.end661:                                        ; preds = %do.body634, %if.then626
  %93 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cfg2, align 4
  %and667 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and667)
  %tobool668.not = icmp eq i32 %and667, 0
  br i1 %tobool668.not, label %do.body677, label %do.body670

do.body670:                                       ; preds = %if.end661
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !310
  tail call void @arm_heavy_mb() #13
  %95 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %io_shift184, align 4
  %shl674 = shl i32 12, %96
  %add.ptr675 = getelementptr i8, ptr %1, i32 %shl674
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr675, i32 512) #13, !srcloc !211
  br label %do.body727

do.body677:                                       ; preds = %if.end661
  %97 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %io_shift184, align 4
  %shl681 = shl i32 14, %98
  %and684 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and684)
  %tobool685.not = icmp eq i32 %and684, 0
  br i1 %tobool685.not, label %if.else688, label %if.then686

if.then686:                                       ; preds = %do.body677
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1140 = getelementptr i8, ptr %1, i32 %shl681
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1140, i16 512) #13, !srcloc !213
  br label %do.body727

if.else688:                                       ; preds = %do.body677
  %and691 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and691)
  %tobool692.not = icmp eq i32 %and691, 0
  br i1 %tobool692.not, label %do.body714, label %do.body694

do.body694:                                       ; preds = %if.else688
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  tail call void @arm_heavy_mb() #13
  %add.ptr701 = getelementptr i8, ptr %1, i32 %shl681
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr701, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  tail call void @arm_heavy_mb() #13
  %99 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %io_shift184, align 4
  %shl708 = shl nuw i32 1, %100
  %add709 = add i32 %shl708, %shl681
  %add.ptr710 = getelementptr i8, ptr %1, i32 %add709
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr710, i8 0) #13, !srcloc !196
  br label %do.body727

do.body714:                                       ; preds = %if.else688
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #13, !srcloc !313
  unreachable

do.body727:                                       ; preds = %do.body694, %if.then686, %do.body670
  %101 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cfg2, align 4
  %and734 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and734)
  %tobool735.not = icmp eq i32 %and734, 0
  br i1 %tobool735.not, label %if.else738, label %if.then736

if.then736:                                       ; preds = %do.body727
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 16384) #13, !srcloc !213
  br label %if.end771

if.else738:                                       ; preds = %do.body727
  %and741 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and741)
  %tobool742.not = icmp eq i32 %and741, 0
  br i1 %tobool742.not, label %do.body764, label %do.body744

do.body744:                                       ; preds = %if.else738
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !314
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 64) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !315
  tail call void @arm_heavy_mb() #13
  %103 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %io_shift184, align 4
  %shl758 = shl nuw i32 1, %104
  %add.ptr760 = getelementptr i8, ptr %1, i32 %shl758
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr760, i8 0) #13, !srcloc !196
  br label %if.end771

do.body764:                                       ; preds = %if.else738
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #13, !srcloc !316
  unreachable

if.end771:                                        ; preds = %do.body744, %if.then736
  %105 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cfg2, align 4
  %and781 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and781)
  %tobool782.not = icmp eq i32 %and781, 0
  br i1 %tobool782.not, label %cond.false791, label %cond.true783

cond.true783:                                     ; preds = %if.end771
  call void @__sanitizer_cov_trace_pc() #15
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !317
  %conv790 = zext i16 %108 to i32
  br label %cond.end829

cond.false791:                                    ; preds = %if.end771
  %and794 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and794)
  %tobool795.not = icmp eq i32 %and794, 0
  br i1 %tobool795.not, label %do.body820, label %cond.true796

cond.true796:                                     ; preds = %cond.false791
  call void @__sanitizer_cov_trace_pc() #15
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !318
  %conv805 = zext i8 %109 to i32
  %110 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %io_shift184, align 4
  %shl809 = shl nuw i32 1, %111
  %add.ptr811 = getelementptr i8, ptr %1, i32 %shl809
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr811) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !319
  br label %cond.end829

do.body820:                                       ; preds = %cond.false791
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

cond.end829:                                      ; preds = %cond.true796, %cond.true783
  %cond830 = phi i32 [ %conv790, %cond.true783 ], [ %conv805, %cond.true796 ]
  %and831 = and i32 %cond830, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and831)
  %tobool832.not = icmp eq i32 %and831, 0
  br i1 %tobool832.not, label %cond.end829.do.end926_crit_edge, label %if.then835, !prof !237

cond.end829.do.end926_crit_edge:                  ; preds = %cond.end829
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end926

if.then835:                                       ; preds = %cond.end829
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %add836 = add i32 %113, 2
  br label %while.cond

while.cond:                                       ; preds = %do.end919, %if.then835
  %114 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cfg2, align 4
  %and843 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and843)
  %tobool844.not = icmp eq i32 %and843, 0
  br i1 %tobool844.not, label %cond.false853, label %cond.true845

cond.true845:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !321
  %conv852 = zext i16 %117 to i32
  br label %cond.end891

cond.false853:                                    ; preds = %while.cond
  %and856 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and856)
  %tobool857.not = icmp eq i32 %and856, 0
  br i1 %tobool857.not, label %do.body882, label %cond.true858

cond.true858:                                     ; preds = %cond.false853
  call void @__sanitizer_cov_trace_pc() #15
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  %conv867 = zext i8 %118 to i32
  %119 = ptrtoint ptr %io_shift184 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %io_shift184, align 4
  %shl871 = shl nuw i32 1, %120
  %add.ptr873 = getelementptr i8, ptr %1, i32 %shl871
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr873) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !323
  br label %cond.end891

do.body882:                                       ; preds = %cond.false853
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #13, !srcloc !324
  unreachable

cond.end891:                                      ; preds = %cond.true858, %cond.true845
  %cond892 = phi i32 [ %conv852, %cond.true845 ], [ %conv867, %cond.true858 ]
  %and893 = and i32 %cond892, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and893)
  %tobool894.not = icmp eq i32 %and893, 0
  br i1 %tobool894.not, label %cond.end891.do.end926_crit_edge, label %while.body

cond.end891.do.end926_crit_edge:                  ; preds = %cond.end891
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end926

while.body:                                       ; preds = %cond.end891
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add836, %122
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body898, label %do.end919

do.body898:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_reset.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_reset, %if.then908)) #13
          to label %do.end926 [label %if.then908], !srcloc !268

if.then908:                                       ; preds = %do.body898
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_reset.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef 326) #13
  br label %do.end926

do.end919:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !326
  br label %while.cond

do.end926:                                        ; preds = %if.then908, %do.body898, %cond.end891.do.end926_crit_edge, %cond.end829.do.end926_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_hardware_send_pkt(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %dev1 = getelementptr i8, ptr %t, i32 140
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base = getelementptr i8, ptr %t, i32 196
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end15, label %do.end15.thread

do.end15:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #13
  %lock = getelementptr i8, ptr %t, i32 148
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.then28, label %do.end15.if.end54_crit_edge

do.end15.if.end54_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.end15.thread:                                  ; preds = %entry
  %lock920 = getelementptr i8, ptr %t, i32 148
  %call.i921 = tail call i32 @_raw_spin_trylock(ptr noundef %lock920) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i921)
  %tobool17.not922 = icmp eq i32 %call.i921, 0
  br i1 %tobool17.not922, label %do.end15.thread.do.body30_crit_edge, label %do.end15.thread.if.end54_crit_edge

do.end15.thread.if.end54_crit_edge:               ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.end15.thread.do.body30_crit_edge:              ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30

if.then28:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body30

do.body30:                                        ; preds = %if.then28, %do.end15.thread.do.body30_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool38.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool38.not, label %if.then42, label %do.body30.do.end45_crit_edge, !prof !203

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body30.do.end45_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !204
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i912 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i912)
  %tobool.not.i = icmp eq i32 %call.i912, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end45.cleanup_crit_edge

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__tasklet_schedule(ptr noundef %t) #13
  br label %cleanup

if.end54:                                         ; preds = %do.end15.thread.if.end54_crit_edge, %do.end15.if.end54_crit_edge
  %lock923 = phi ptr [ %lock920, %do.end15.thread.if.end54_crit_edge ], [ %lock, %do.end15.if.end54_crit_edge ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tobool55.not = icmp eq ptr %9, null
  br i1 %tobool55.not, label %if.then64, label %if.end66, !prof !203

if.then64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock923, i32 noundef %4) #13
  br label %cleanup

if.end66:                                         ; preds = %if.end54
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr, align 4
  %cfg = getelementptr i8, ptr %t, i32 212
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift = getelementptr i8, ptr %t, i32 204
  %13 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift, align 4
  %shl = shl i32 3, %14
  %add.ptr70 = getelementptr i8, ptr %3, i32 %shl
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr70) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !327
  %conv74 = zext i8 %15 to i32
  br label %cond.end124

cond.false:                                       ; preds = %if.end66
  %and80 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body115, label %cond.true82

cond.true82:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift75 = getelementptr i8, ptr %t, i32 204
  %16 = ptrtoint ptr %io_shift75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_shift75, align 4
  %shl76 = shl i32 2, %17
  %add.ptr85 = getelementptr i8, ptr %3, i32 %shl76
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr85) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  %19 = and i16 %18, 255
  %shr = zext i16 %19 to i32
  br label %cond.end124

do.body115:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #13, !srcloc !329
  unreachable

cond.end124:                                      ; preds = %cond.true82, %cond.true
  %cond125 = phi i32 [ %conv74, %cond.true ], [ %shr, %cond.true82 ]
  %and126 = and i32 %cond125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body139, label %if.then134, !prof !237

if.then134:                                       ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.54) #16
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %20 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %22 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_fifo_errors, align 8
  %inc136 = add i32 %23, 1
  store i32 %inc136, ptr %tx_fifo_errors, align 8
  br label %done

do.body139:                                       ; preds = %cond.end124
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg, align 4
  %and142 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.else, label %do.body145

do.body145:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %cond125)
  %27 = lshr exact i32 %26, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %27) #13, !srcloc !211
  br label %do.body216

if.else:                                          ; preds = %do.body139
  %and154 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body165, label %do.body157

do.body157:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  tail call void @arm_heavy_mb() #13
  %conv160 = trunc i32 %cond125 to i8
  %io_shift161 = getelementptr i8, ptr %t, i32 204
  %28 = ptrtoint ptr %io_shift161 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_shift161, align 4
  %shl162 = shl i32 2, %29
  %add.ptr163 = getelementptr i8, ptr %3, i32 %shl162
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr163, i8 %conv160) #13, !srcloc !196
  br label %do.body216

do.body165:                                       ; preds = %if.else
  %and172 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body202, label %if.then174

if.then174:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift168 = getelementptr i8, ptr %t, i32 204
  %30 = ptrtoint ptr %io_shift168 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_shift168, align 4
  %shl169 = shl i32 2, %31
  %conv175 = trunc i32 %cond125 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv175) #13
  %add.ptr8.i = getelementptr i8, ptr %3, i32 %shl169
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %32) #13, !srcloc !213
  br label %do.body216

do.body202:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 573, 0\0A.popsection", ""() #13, !srcloc !332
  unreachable

do.body216:                                       ; preds = %if.then174, %do.body157, %do.body145
  %33 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cfg, align 4
  %and219 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %do.body229, label %do.body222

do.body222:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %io_shift225 = getelementptr i8, ptr %t, i32 204
  %35 = ptrtoint ptr %io_shift225 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_shift225, align 4
  %shl226 = shl i32 4, %36
  %add.ptr227 = getelementptr i8, ptr %3, i32 %shl226
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 64) #13, !srcloc !211
  br label %do.end278

do.body229:                                       ; preds = %do.body216
  %io_shift232 = getelementptr i8, ptr %t, i32 204
  %37 = ptrtoint ptr %io_shift232 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_shift232, align 4
  %shl233 = shl i32 6, %38
  %and236 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.else240, label %if.then238

if.then238:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i913 = getelementptr i8, ptr %3, i32 %shl233
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i913, i16 64) #13, !srcloc !213
  br label %do.end278

if.else240:                                       ; preds = %do.body229
  %and243 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %do.body266, label %do.body246

do.body246:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  tail call void @arm_heavy_mb() #13
  %add.ptr253 = getelementptr i8, ptr %3, i32 %shl233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr253, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %io_shift232 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_shift232, align 4
  %shl260 = shl nuw i32 1, %40
  %add261 = add i32 %shl260, %shl233
  %add.ptr262 = getelementptr i8, ptr %3, i32 %add261
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr262, i8 64) #13, !srcloc !196
  br label %do.end278

do.body266:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 574, 0\0A.popsection", ""() #13, !srcloc !336
  unreachable

do.end278:                                        ; preds = %do.body246, %if.then238, %do.body222
  %data = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %len279 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %43 = ptrtoint ptr %len279 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len279, align 4
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cfg, align 4
  %and286 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %do.body299, label %do.body289

do.body289:                                       ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  %add292 = shl i32 %44, 16
  %shl293 = add i32 %add292, 393216
  %47 = tail call i32 @llvm.bswap.i32(i32 %shl293)
  %io_shift295 = getelementptr i8, ptr %t, i32 204
  %48 = ptrtoint ptr %io_shift295 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_shift295, align 4
  %shl296 = shl i32 8, %49
  %add.ptr297 = getelementptr i8, ptr %3, i32 %shl296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr297, i32 %47) #13, !srcloc !211
  br label %do.body397

do.body299:                                       ; preds = %do.end278
  %io_shift302 = getelementptr i8, ptr %t, i32 204
  %50 = ptrtoint ptr %io_shift302 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_shift302, align 4
  %shl303 = shl i32 8, %51
  %and306 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %if.else310, label %if.then308

if.then308:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i914 = getelementptr i8, ptr %3, i32 %shl303
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i914, i16 0) #13, !srcloc !213
  br label %if.end343

if.else310:                                       ; preds = %do.body299
  %and313 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %do.body336, label %do.body316

do.body316:                                       ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @arm_heavy_mb() #13
  %add.ptr323 = getelementptr i8, ptr %3, i32 %shl303
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr323, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  tail call void @arm_heavy_mb() #13
  %52 = ptrtoint ptr %io_shift302 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_shift302, align 4
  %shl330 = shl nuw i32 1, %53
  %add331 = add i32 %shl330, %shl303
  %add.ptr332 = getelementptr i8, ptr %3, i32 %add331
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr332, i8 0) #13, !srcloc !196
  br label %if.end343

do.body336:                                       ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #13, !srcloc !340
  unreachable

if.end343:                                        ; preds = %do.body316, %if.then308
  %add348 = add i32 %44, 6
  %54 = ptrtoint ptr %io_shift302 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_shift302, align 4
  %shl351 = shl i32 8, %55
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cfg, align 4
  %and354 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and354)
  %tobool355.not = icmp eq i32 %and354, 0
  br i1 %tobool355.not, label %if.else358, label %if.then356

if.then356:                                       ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #15
  %conv357 = trunc i32 %add348 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv357) #13
  %add.ptr8.i915 = getelementptr i8, ptr %3, i32 %shl351
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i915, i16 %58) #13, !srcloc !213
  br label %do.body397

if.else358:                                       ; preds = %if.end343
  %and361 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %do.body384, label %do.body364

do.body364:                                       ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  tail call void @arm_heavy_mb() #13
  %conv370 = trunc i32 %add348 to i8
  %add.ptr371 = getelementptr i8, ptr %3, i32 %shl351
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr371, i8 %conv370) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  tail call void @arm_heavy_mb() #13
  %shr375 = lshr i32 %add348, 8
  %conv376 = trunc i32 %shr375 to i8
  %59 = ptrtoint ptr %io_shift302 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %io_shift302, align 4
  %shl378 = shl nuw i32 1, %60
  %add379 = add i32 %shl378, %shl351
  %add.ptr380 = getelementptr i8, ptr %3, i32 %add379
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr380, i8 %conv376) #13, !srcloc !196
  br label %do.body397

do.body384:                                       ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #13, !srcloc !343
  unreachable

do.body397:                                       ; preds = %do.body364, %if.then356, %do.body289
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg, align 4
  %and400 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and400)
  %tobool401.not = icmp eq i32 %and400, 0
  br i1 %tobool401.not, label %if.else427, label %if.then402

if.then402:                                       ; preds = %do.body397
  %and403 = and i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and403)
  %cmp404 = icmp slt i32 %and403, 2
  %63 = ptrtoint ptr %42 to i32
  %and406 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and406)
  %tobool407.not = icmp eq i32 %and406, 0
  %or.cond = select i1 %cmp404, i1 true, i1 %tobool407.not
  br i1 %or.cond, label %if.then402.if.end413_crit_edge, label %if.then408

if.then402.if.end413_crit_edge:                   ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end413

if.then408:                                       ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add nsw i32 %and403, -2
  %io_shift409 = getelementptr i8, ptr %t, i32 204
  %64 = ptrtoint ptr %io_shift409 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_shift409, align 4
  %shl410 = shl i32 8, %65
  %add.ptr411 = getelementptr i8, ptr %3, i32 %shl410
  tail call void @__raw_writesw(ptr noundef %add.ptr411, ptr noundef %42, i32 noundef 1) #13
  %add.ptr412 = getelementptr i8, ptr %42, i32 2
  br label %if.end413

if.end413:                                        ; preds = %if.then408, %if.then402.if.end413_crit_edge
  %__len.0 = phi i32 [ %sub, %if.then408 ], [ %and403, %if.then402.if.end413_crit_edge ]
  %__ptr.0 = phi ptr [ %add.ptr412, %if.then408 ], [ %42, %if.then402.if.end413_crit_edge ]
  %io_shift414 = getelementptr i8, ptr %t, i32 204
  %66 = ptrtoint ptr %io_shift414 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_shift414, align 4
  %shl415 = shl i32 8, %67
  %add.ptr416 = getelementptr i8, ptr %3, i32 %shl415
  %shr417 = ashr i32 %__len.0, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr416, ptr noundef %__ptr.0, i32 noundef %shr417) #13
  %and418 = and i32 %__len.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418)
  %tobool419.not = icmp eq i32 %and418, 0
  br i1 %tobool419.not, label %if.end413.do.body453_crit_edge, label %if.then420

if.end413.do.body453_crit_edge:                   ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body453

if.then420:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #15
  %and421 = and i32 %__len.0, -4
  %add.ptr422 = getelementptr i8, ptr %__ptr.0, i32 %and421
  %68 = ptrtoint ptr %io_shift414 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %io_shift414, align 4
  %shl424 = shl i32 8, %69
  %add.ptr425 = getelementptr i8, ptr %3, i32 %shl424
  tail call void @__raw_writesw(ptr noundef %add.ptr425, ptr noundef %add.ptr422, i32 noundef 1) #13
  br label %do.body453

if.else427:                                       ; preds = %do.body397
  %and430 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430)
  %tobool431.not = icmp eq i32 %and430, 0
  br i1 %tobool431.not, label %if.else438, label %if.then432

if.then432:                                       ; preds = %if.else427
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift433 = getelementptr i8, ptr %t, i32 204
  %70 = ptrtoint ptr %io_shift433 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_shift433, align 4
  %shl434 = shl i32 8, %71
  %add.ptr435 = getelementptr i8, ptr %3, i32 %shl434
  %shr437 = lshr i32 %44, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr435, ptr noundef %42, i32 noundef %shr437) #13
  br label %do.body453

if.else438:                                       ; preds = %if.else427
  %and441 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and441)
  %tobool442.not = icmp eq i32 %and441, 0
  br i1 %tobool442.not, label %if.else438.do.body453_crit_edge, label %if.then443

if.else438.do.body453_crit_edge:                  ; preds = %if.else438
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body453

if.then443:                                       ; preds = %if.else438
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift444 = getelementptr i8, ptr %t, i32 204
  %72 = ptrtoint ptr %io_shift444 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %io_shift444, align 4
  %shl445 = shl i32 8, %73
  %add.ptr446 = getelementptr i8, ptr %3, i32 %shl445
  %and447 = and i32 %44, -2
  tail call void @__raw_writesb(ptr noundef %add.ptr446, ptr noundef %42, i32 noundef %and447) #13
  br label %do.body453

do.body453:                                       ; preds = %if.then443, %if.else438.do.body453_crit_edge, %if.then432, %if.then420, %if.end413.do.body453_crit_edge
  %and455 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %do.body453.cond.end462_crit_edge, label %cond.true457

do.body453.cond.end462_crit_edge:                 ; preds = %do.body453
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end462

cond.true457:                                     ; preds = %do.body453
  call void @__sanitizer_cov_trace_pc() #15
  %sub458 = add i32 %44, -1
  %arrayidx = getelementptr i8, ptr %42, i32 %sub458
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx, align 1
  %conv459 = zext i8 %75 to i32
  %or460 = or i32 %conv459, 8192
  br label %cond.end462

cond.end462:                                      ; preds = %cond.true457, %do.body453.cond.end462_crit_edge
  %cond463 = phi i32 [ %or460, %cond.true457 ], [ 0, %do.body453.cond.end462_crit_edge ]
  %io_shift465 = getelementptr i8, ptr %t, i32 204
  %76 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_shift465, align 4
  %shl466 = shl i32 8, %77
  %78 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cfg, align 4
  %and469 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and469)
  %tobool470.not = icmp eq i32 %and469, 0
  br i1 %tobool470.not, label %if.else473, label %if.then471

if.then471:                                       ; preds = %cond.end462
  call void @__sanitizer_cov_trace_pc() #15
  %conv472 = trunc i32 %cond463 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv472) #13
  %add.ptr8.i916 = getelementptr i8, ptr %3, i32 %shl466
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i916, i16 %80) #13, !srcloc !213
  br label %if.end506

if.else473:                                       ; preds = %cond.end462
  %and476 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and476)
  %tobool477.not = icmp eq i32 %and476, 0
  br i1 %tobool477.not, label %do.body499, label %do.body479

do.body479:                                       ; preds = %if.else473
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !344
  tail call void @arm_heavy_mb() #13
  %conv485 = trunc i32 %cond463 to i8
  %add.ptr486 = getelementptr i8, ptr %3, i32 %shl466
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr486, i8 %conv485) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !345
  tail call void @arm_heavy_mb() #13
  %shr490 = lshr i32 %cond463, 8
  %conv491 = trunc i32 %shr490 to i8
  %81 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_shift465, align 4
  %shl493 = shl nuw i32 1, %82
  %add494 = add i32 %shl493, %shl466
  %add.ptr495 = getelementptr i8, ptr %3, i32 %add494
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr495, i8 %conv491) #13, !srcloc !196
  br label %if.end506

do.body499:                                       ; preds = %if.else473
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 593, 0\0A.popsection", ""() #13, !srcloc !346
  unreachable

if.end506:                                        ; preds = %do.body479, %if.then471
  %83 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cfg, align 4
  %and516 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and516)
  %tobool517.not = icmp eq i32 %and516, 0
  br i1 %tobool517.not, label %if.else520, label %if.then518

if.then518:                                       ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 -16384) #13, !srcloc !213
  br label %if.end553

if.else520:                                       ; preds = %if.end506
  %and523 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523)
  %tobool524.not = icmp eq i32 %and523, 0
  br i1 %tobool524.not, label %do.body546, label %do.body526

do.body526:                                       ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 -64) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_shift465, align 4
  %shl540 = shl nuw i32 1, %86
  %add.ptr542 = getelementptr i8, ptr %3, i32 %shl540
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr542, i8 0) #13, !srcloc !196
  br label %if.end553

do.body546:                                       ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 607, 0\0A.popsection", ""() #13, !srcloc !349
  unreachable

if.end553:                                        ; preds = %do.body526, %if.then518
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock923, i32 noundef %4) #13
  %_tx.i.i917 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %87 = ptrtoint ptr %_tx.i.i917 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %_tx.i.i917, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %88, i32 0, i32 12
  %90 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %89)
  %cmp.not.i.i = icmp eq i32 %91, %89
  br i1 %cmp.not.i.i, label %if.end553.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end553.netif_trans_update.exit_crit_edge:      ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %89, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end553.netif_trans_update.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %93 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_packets, align 4
  %inc558 = add i32 %94, 1
  store i32 %inc558, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %95 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_bytes, align 4
  %add560 = add i32 %96, %44
  store i32 %add560, ptr %tx_bytes, align 4
  %call571 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock923) #13
  %97 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cfg, align 4
  %and578 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and578)
  %tobool579.not = icmp eq i32 %and578, 0
  br i1 %tobool579.not, label %cond.false590, label %cond.true580

cond.true580:                                     ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %io_shift465, align 4
  %shl584 = shl i32 13, %100
  %add.ptr585 = getelementptr i8, ptr %3, i32 %shl584
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr585) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  br label %cond.end648

cond.false590:                                    ; preds = %netif_trans_update.exit
  %and597 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and597)
  %tobool598.not = icmp eq i32 %and597, 0
  br i1 %tobool598.not, label %do.body636, label %cond.true599

cond.true599:                                     ; preds = %cond.false590
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %io_shift465, align 4
  %shl593 = shl i32 12, %103
  %add.ptr602 = getelementptr i8, ptr %3, i32 %shl593
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr602) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %shr647 = trunc i16 %104 to i8
  br label %cond.end648

do.body636:                                       ; preds = %cond.false590
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #13, !srcloc !352
  unreachable

cond.end648:                                      ; preds = %cond.true599, %cond.true580
  %cond649 = phi i8 [ %101, %cond.true580 ], [ %shr647, %cond.true599 ]
  %105 = or i8 %cond649, 6
  %106 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cfg, align 4
  %and657 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and657)
  %tobool658.not = icmp eq i32 %and657, 0
  br i1 %tobool658.not, label %do.body667, label %do.body660

do.body660:                                       ; preds = %cond.end648
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !353
  tail call void @arm_heavy_mb() #13
  %108 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %io_shift465, align 4
  %shl664 = shl i32 13, %109
  %add.ptr665 = getelementptr i8, ptr %3, i32 %shl664
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr665, i8 %105) #13, !srcloc !196
  br label %done

do.body667:                                       ; preds = %cond.end648
  %and676 = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and676)
  %tobool677.not = icmp eq i32 %and676, 0
  br i1 %tobool677.not, label %do.body706, label %if.then678

if.then678:                                       ; preds = %do.body667
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %io_shift465 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %io_shift465, align 4
  %shl673 = shl i32 12, %111
  %conv669 = zext i8 %105 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i918 = getelementptr i8, ptr %3, i32 %shl673
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i918, i16 %conv669) #13, !srcloc !213
  br label %done

do.body706:                                       ; preds = %do.body667
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #13, !srcloc !354
  unreachable

done:                                             ; preds = %if.then678, %do.body660, %if.then134
  %call571.sink = phi i32 [ %4, %if.then134 ], [ %call571, %if.then678 ], [ %call571, %do.body660 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock923, i32 noundef %call571.sink) #13
  %_tx.i.i919 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %112 = ptrtoint ptr %_tx.i.i919 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %_tx.i.i919, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %113) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then64, %if.then.i, %do.end45.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_phy_configure(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %mii = getelementptr i8, ptr %work, i32 -32
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %lock = getelementptr i8, ptr %work, i32 52
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %phy_type = getelementptr i8, ptr %work, i32 -36
  %6 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.do.body171_crit_edge, label %if.end

entry.do.body171_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body171

if.end:                                           ; preds = %entry
  tail call void @smc_phy_write(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 32768) #13
  %lock.i = getelementptr i8, ptr %1, i32 2456
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  tail call void @msleep(i32 noundef 50) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %call2.i = tail call i32 @smc_phy_read(ptr noundef %1, i32 noundef %5, i32 noundef 0) #13
  %and.i = and i32 %call2.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.if.end3_crit_edge, label %smc_phy_reset.exit

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

smc_phy_reset.exit:                               ; preds = %if.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  tail call void @msleep(i32 noundef 50) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %call2.1.i = tail call i32 @smc_phy_read(ptr noundef %1, i32 noundef %5, i32 noundef 0) #13
  %and.1.i = and i32 %call2.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not, label %smc_phy_reset.exit.if.end3_crit_edge, label %if.then2

smc_phy_reset.exit.if.end3_crit_edge:             ; preds = %smc_phy_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %smc_phy_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.55) #16
  br label %do.body171

if.end3:                                          ; preds = %smc_phy_reset.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @smc_phy_write(ptr noundef %1, i32 noundef %5, i32 noundef 19, i32 noundef 16320)
  %cfg = getelementptr i8, ptr %work, i32 116
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body11, label %do.body7

do.body7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !355
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %work, i32 108
  %10 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %11
  %add.ptr10 = getelementptr i8, ptr %3, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #13, !srcloc !211
  br label %do.body54

do.body11:                                        ; preds = %if.end3
  %io_shift12 = getelementptr i8, ptr %work, i32 108
  %12 = ptrtoint ptr %io_shift12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift12, align 4
  %shl13 = shl i32 14, %13
  %and16 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %3, i32 %shl13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.body54

if.else19:                                        ; preds = %do.body11
  %and22 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body41, label %do.body25

do.body25:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !356
  tail call void @arm_heavy_mb() #13
  %add.ptr30 = getelementptr i8, ptr %3, i32 %shl13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !357
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %io_shift12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_shift12, align 4
  %shl36 = shl nuw i32 1, %15
  %add = add i32 %shl36, %shl13
  %add.ptr37 = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 0) #13, !srcloc !196
  br label %do.body54

do.body41:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #13, !srcloc !358
  unreachable

do.body54:                                        ; preds = %do.body25, %if.then18, %do.body7
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg, align 4
  %and57 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body68, label %do.body60

do.body60:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  tail call void @arm_heavy_mb() #13
  %rpc_cur_mode = getelementptr i8, ptr %work, i32 -52
  %18 = ptrtoint ptr %rpc_cur_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rpc_cur_mode, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = lshr i32 %20, 16
  %io_shift64 = getelementptr i8, ptr %work, i32 108
  %22 = ptrtoint ptr %io_shift64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_shift64, align 4
  %shl65 = shl i32 8, %23
  %add.ptr66 = getelementptr i8, ptr %3, i32 %shl65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %21) #13, !srcloc !211
  br label %do.end118

do.body68:                                        ; preds = %do.body54
  %rpc_cur_mode70 = getelementptr i8, ptr %work, i32 -52
  %24 = ptrtoint ptr %rpc_cur_mode70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rpc_cur_mode70, align 4
  %io_shift72 = getelementptr i8, ptr %work, i32 108
  %26 = ptrtoint ptr %io_shift72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift72, align 4
  %shl73 = shl i32 10, %27
  %and76 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else80, label %if.then78

if.then78:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #15
  %conv79 = trunc i32 %25 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv79) #13
  %add.ptr8.i315 = getelementptr i8, ptr %3, i32 %shl73
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i315, i16 %28) #13, !srcloc !213
  br label %do.end118

if.else80:                                        ; preds = %do.body68
  %and83 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body106, label %do.body86

do.body86:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %conv92 = trunc i32 %25 to i8
  %add.ptr93 = getelementptr i8, ptr %3, i32 %shl73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93, i8 %conv92) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  tail call void @arm_heavy_mb() #13
  %shr97 = lshr i32 %25, 8
  %conv98 = trunc i32 %shr97 to i8
  %29 = ptrtoint ptr %io_shift72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_shift72, align 4
  %shl100 = shl nuw i32 1, %30
  %add101 = add i32 %shl100, %shl73
  %add.ptr102 = getelementptr i8, ptr %3, i32 %add101
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 %conv98) #13, !srcloc !196
  br label %do.end118

do.body106:                                       ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1067, 0\0A.popsection", ""() #13, !srcloc !362
  unreachable

do.end118:                                        ; preds = %do.body86, %if.then78, %do.body60
  %force_media = getelementptr i8, ptr %work, i32 -16
  %31 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %force_media, align 4
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool120.not = icmp eq i8 %32, 0
  br i1 %tobool120.not, label %if.end123, label %if.then121

if.then121:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @smc_phy_fixed(ptr noundef %1)
  br label %do.body171

if.end123:                                        ; preds = %do.end118
  %call124 = tail call i32 @smc_phy_read(ptr noundef %1, i32 noundef %5, i32 noundef 1)
  %and125 = and i32 %call124, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.56) #16
  tail call fastcc void @smc_phy_fixed(ptr noundef %1)
  br label %do.body171

if.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  %and130 = and i32 %call124, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  %spec.select = select i1 %tobool131.not, i32 1, i32 513
  %and134 = lshr i32 %call124, 6
  %33 = and i32 %and134, 480
  %34 = or i32 %33, %spec.select
  %ctl_rspeed = getelementptr i8, ptr %work, i32 -44
  %35 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctl_rspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %36)
  %cmp154.not = icmp eq i32 %36, 100
  %and157 = and i32 %34, 97
  %my_ad_caps.5 = select i1 %cmp154.not, i32 %34, i32 %and157
  %ctl_rfduplx = getelementptr i8, ptr %work, i32 -48
  %37 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctl_rfduplx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool159.not = icmp eq i32 %38, 0
  %and161 = and i32 %my_ad_caps.5, 673
  %my_ad_caps.6 = select i1 %tobool159.not, i32 %and161, i32 %my_ad_caps.5
  tail call void @smc_phy_write(ptr noundef %1, i32 noundef %5, i32 noundef 4, i32 noundef %my_ad_caps.6)
  %advertising = getelementptr i8, ptr %work, i32 -28
  %39 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %my_ad_caps.6, ptr %advertising, align 4
  %call164 = tail call i32 @smc_phy_read(ptr noundef %1, i32 noundef %5, i32 noundef 4)
  tail call void @smc_phy_write(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 4608)
  tail call fastcc void @smc_phy_check_media(ptr noundef %1, i32 noundef 1)
  br label %do.body171

do.body171:                                       ; preds = %if.end129, %if.then127, %if.then121, %if.then2, %entry.do.body171_crit_edge
  %cfg172 = getelementptr i8, ptr %work, i32 116
  %40 = ptrtoint ptr %cfg172 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cfg172, align 4
  %and174 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.body184, label %do.body177

do.body177:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !363
  tail call void @arm_heavy_mb() #13
  %io_shift180 = getelementptr i8, ptr %work, i32 108
  %42 = ptrtoint ptr %io_shift180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_shift180, align 4
  %shl181 = shl i32 12, %43
  %add.ptr182 = getelementptr i8, ptr %3, i32 %shl181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 512) #13, !srcloc !211
  br label %do.end233

do.body184:                                       ; preds = %do.body171
  %io_shift187 = getelementptr i8, ptr %work, i32 108
  %44 = ptrtoint ptr %io_shift187 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_shift187, align 4
  %shl188 = shl i32 14, %45
  %and191 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.else195, label %if.then193

if.then193:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i316 = getelementptr i8, ptr %3, i32 %shl188
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i316, i16 512) #13, !srcloc !213
  br label %do.end233

if.else195:                                       ; preds = %do.body184
  %and198 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %do.body221, label %do.body201

do.body201:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  %add.ptr208 = getelementptr i8, ptr %3, i32 %shl188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr208, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !365
  tail call void @arm_heavy_mb() #13
  %46 = ptrtoint ptr %io_shift187 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %io_shift187, align 4
  %shl215 = shl nuw i32 1, %47
  %add216 = add i32 %shl215, %shl188
  %add.ptr217 = getelementptr i8, ptr %3, i32 %add216
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr217, i8 0) #13, !srcloc !196
  br label %do.end233

do.body221:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1124, 0\0A.popsection", ""() #13, !srcloc !366
  unreachable

do.end233:                                        ; preds = %do.body201, %if.then193, %do.body177
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_phy_read(ptr nocapture noundef readonly %dev, i32 noundef %phyaddr, i32 noundef %phyreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 768) #13, !srcloc !211
  br label %do.end43

do.body2:                                         ; preds = %entry
  %io_shift3 = getelementptr i8, ptr %dev, i32 2512
  %6 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_shift3, align 4
  %shl4 = shl i32 14, %7
  %and7 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 768) #13, !srcloc !213
  br label %do.end43

if.else10:                                        ; preds = %do.body2
  %and13 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body32, label %do.body16

do.body16:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  tail call void @arm_heavy_mb() #13
  %add.ptr21 = getelementptr i8, ptr %1, i32 %shl4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 3) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !369
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_shift3, align 4
  %shl27 = shl nuw i32 1, %9
  %add = add i32 %shl27, %shl4
  %add.ptr28 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 0) #13, !srcloc !196
  br label %do.end43

do.body32:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 814, 0\0A.popsection", ""() #13, !srcloc !370
  unreachable

do.end43:                                         ; preds = %do.body16, %if.then9, %do.body1
  tail call fastcc void @smc_mii_out(ptr noundef %dev, i32 noundef -1, i32 noundef 32)
  %shl44 = shl i32 %phyaddr, 5
  %or = or i32 %shl44, %phyreg
  %or45 = or i32 %or, 6144
  tail call fastcc void @smc_mii_out(ptr noundef %dev, i32 noundef %or45, i32 noundef 14)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %io_shift.i = getelementptr i8, ptr %dev, i32 2512
  %12 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift.i, align 4
  %shl.i = shl i32 8, %13
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i262 = getelementptr i8, ptr %11, i32 %shl.i
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i262) #13, !srcloc !205
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !371
  %conv.i = zext i16 %17 to i32
  br label %cond.end32.i

cond.false.i:                                     ; preds = %do.end43
  %and6.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.body.i, label %cond.true8.i

cond.true8.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr11.i = getelementptr i8, ptr %11, i32 %shl.i
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %conv15.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_shift.i, align 4
  %shl19.i = shl nuw i32 1, %20
  %add.i = add i32 %shl19.i, %shl.i
  %add.ptr20.i = getelementptr i8, ptr %11, i32 %add.i
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !373
  %conv24.i = zext i8 %21 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 8
  %or.i = or i32 %shl25.i, %conv15.i
  br label %cond.end32.i

do.body.i:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 789, 0\0A.popsection", ""() #13, !srcloc !374
  unreachable

cond.end32.i:                                     ; preds = %cond.true8.i, %cond.true.i
  %cond33.i = phi i32 [ %conv.i, %cond.true.i ], [ %or.i, %cond.true8.i ]
  %and34.i = and i32 %cond33.i, -14
  %22 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_shift.i, align 4
  %shl39.i = shl i32 8, %23
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg, align 4
  %and42.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv44.i = trunc i32 %and34.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv44.i) #13
  %add.ptr8.i.i = getelementptr i8, ptr %11, i32 %shl39.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %26) #13, !srcloc !213
  %.pre11.i = trunc i32 %and34.i to i8
  %.pre12.i = lshr i32 %cond33.i, 8
  %.pre13.i = trunc i32 %.pre12.i to i8
  br label %if.end75.i

if.else.i:                                        ; preds = %cond.end32.i
  %and47.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.body69.i, label %do.body50.i

do.body50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !375
  tail call void @arm_heavy_mb() #13
  %conv56.i = trunc i32 %and34.i to i8
  %add.ptr57.i = getelementptr i8, ptr %11, i32 %shl39.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57.i, i8 %conv56.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !376
  tail call void @arm_heavy_mb() #13
  %shr.i = lshr i32 %cond33.i, 8
  %conv61.i = trunc i32 %shr.i to i8
  %27 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_shift.i, align 4
  %shl63.i = shl nuw i32 1, %28
  %add64.i = add i32 %shl63.i, %shl39.i
  %add.ptr65.i = getelementptr i8, ptr %11, i32 %add64.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65.i, i8 %conv61.i) #13, !srcloc !196
  %.pre.i = trunc i32 %and34.i to i16
  %.pre10.i = tail call i16 @llvm.bswap.i16(i16 %.pre.i) #13
  br label %if.end75.i

do.body69.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 790, 0\0A.popsection", ""() #13, !srcloc !377
  unreachable

if.end75.i:                                       ; preds = %do.body50.i, %if.then.i
  %conv170.pre-phi.i = phi i8 [ %conv61.i, %do.body50.i ], [ %.pre13.i, %if.then.i ]
  %conv164.pre-phi.i = phi i8 [ %conv56.i, %do.body50.i ], [ %.pre11.i, %if.then.i ]
  %.pre-phi.i = phi i16 [ %.pre10.i, %do.body50.i ], [ %26, %if.then.i ]
  %or190.i = or i32 %and34.i, 4
  %conv199.i = trunc i32 %or190.i to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv199.i) #13
  %conv212.i = trunc i32 %or190.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end233.i.for.body.i_crit_edge, %if.end75.i
  %mask.07.i = phi i32 [ 131072, %if.end75.i ], [ %shr236.i, %if.end233.i.for.body.i_crit_edge ]
  %val.06.i = phi i32 [ 0, %if.end75.i ], [ %spec.select.i, %if.end233.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_shift.i, align 4
  %shl82.i = shl i32 8, %31
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfg, align 4
  %and86.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %cond.false96.i, label %cond.true88.i

cond.true88.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr91.i = getelementptr i8, ptr %11, i32 %shl82.i
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr91.i) #13, !srcloc !205
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !378
  %conv95.i = zext i16 %35 to i32
  br label %cond.end134.i

cond.false96.i:                                   ; preds = %for.body.i
  %and99.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %do.body125.i, label %cond.true101.i

cond.true101.i:                                   ; preds = %cond.false96.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr106.i = getelementptr i8, ptr %11, i32 %shl82.i
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr106.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %conv110.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_shift.i, align 4
  %shl114.i = shl nuw i32 1, %38
  %add115.i = add i32 %shl114.i, %shl82.i
  %add.ptr116.i = getelementptr i8, ptr %11, i32 %add115.i
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr116.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  br label %cond.end134.i

do.body125.i:                                     ; preds = %cond.false96.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 793, 0\0A.popsection", ""() #13, !srcloc !381
  unreachable

cond.end134.i:                                    ; preds = %cond.true101.i, %cond.true88.i
  %cond135.i = phi i32 [ %conv95.i, %cond.true88.i ], [ %conv110.i, %cond.true101.i ]
  %and136.i = and i32 %cond135.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  %or139.i = select i1 %tobool137.not.i, i32 0, i32 %mask.07.i
  %spec.select.i = or i32 %or139.i, %val.06.i
  %40 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift.i, align 4
  %shl145.i = shl i32 8, %41
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg, align 4
  %and148.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %if.else152.i, label %if.then150.i

if.then150.i:                                     ; preds = %cond.end134.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1.i = getelementptr i8, ptr %11, i32 %shl145.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1.i, i16 %.pre-phi.i) #13, !srcloc !213
  br label %if.end185.i

if.else152.i:                                     ; preds = %cond.end134.i
  %and155.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %do.body178.i, label %do.body158.i

do.body158.i:                                     ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr165.i = getelementptr i8, ptr %11, i32 %shl145.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr165.i, i8 %conv164.pre-phi.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !383
  tail call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_shift.i, align 4
  %shl172.i = shl nuw i32 1, %45
  %add173.i = add i32 %shl172.i, %shl145.i
  %add.ptr174.i = getelementptr i8, ptr %11, i32 %add173.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr174.i, i8 %conv170.pre-phi.i) #13, !srcloc !196
  br label %if.end185.i

do.body178.i:                                     ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #13, !srcloc !384
  unreachable

if.end185.i:                                      ; preds = %do.body158.i, %if.then150.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #13
  %47 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_shift.i, align 4
  %shl193.i = shl i32 8, %48
  %49 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg, align 4
  %and196.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %if.else200.i, label %if.then198.i

if.then198.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i2.i = getelementptr i8, ptr %11, i32 %shl193.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i2.i, i16 %29) #13, !srcloc !213
  br label %if.end233.i

if.else200.i:                                     ; preds = %if.end185.i
  %and203.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %do.body226.i, label %do.body206.i

do.body206.i:                                     ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !385
  tail call void @arm_heavy_mb() #13
  %add.ptr213.i = getelementptr i8, ptr %11, i32 %shl193.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr213.i, i8 %conv212.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !386
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io_shift.i, align 4
  %shl220.i = shl nuw i32 1, %52
  %add221.i = add i32 %shl220.i, %shl193.i
  %add.ptr222.i = getelementptr i8, ptr %11, i32 %add221.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr222.i, i8 %conv170.pre-phi.i) #13, !srcloc !196
  br label %if.end233.i

do.body226.i:                                     ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 798, 0\0A.popsection", ""() #13, !srcloc !387
  unreachable

if.end233.i:                                      ; preds = %do.body206.i, %if.then198.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #13
  %shr236.i = lshr i32 %mask.07.i, 1
  %tobool79.not.i = icmp ult i32 %mask.07.i, 2
  br i1 %tobool79.not.i, label %smc_mii_in.exit, label %if.end233.i.for.body.i_crit_edge

if.end233.i.for.body.i_crit_edge:                 ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

smc_mii_in.exit:                                  ; preds = %if.end233.i
  %54 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_shift.i, align 4
  %shl51 = shl i32 8, %55
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cfg, align 4
  %and54 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %smc_mii_in.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr57 = getelementptr i8, ptr %1, i32 %shl51
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr57) #13, !srcloc !205
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !388
  %conv61 = zext i16 %59 to i32
  br label %cond.end97

cond.false:                                       ; preds = %smc_mii_in.exit
  %and64 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body90, label %cond.true66

cond.true66:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr71 = getelementptr i8, ptr %1, i32 %shl51
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !389
  %conv75 = zext i8 %60 to i32
  %61 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %io_shift.i, align 4
  %shl79 = shl nuw i32 1, %62
  %add80 = add i32 %shl79, %shl51
  %add.ptr81 = getelementptr i8, ptr %1, i32 %add80
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr81) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %conv85 = zext i8 %63 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %or87 = or i32 %shl86, %conv75
  br label %cond.end97

do.body90:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 826, 0\0A.popsection", ""() #13, !srcloc !391
  unreachable

cond.end97:                                       ; preds = %cond.true66, %cond.true
  %cond98 = phi i32 [ %conv61, %cond.true ], [ %or87, %cond.true66 ]
  %and99 = and i32 %cond98, -14
  %64 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_shift.i, align 4
  %shl102 = shl i32 8, %65
  %66 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cfg, align 4
  %and105 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #15
  %conv108 = trunc i32 %and99 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv108) #13
  %add.ptr8.i263 = getelementptr i8, ptr %1, i32 %shl102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i263, i16 %68) #13, !srcloc !213
  br label %if.end142

if.else109:                                       ; preds = %cond.end97
  %and112 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body135, label %do.body115

do.body115:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !392
  tail call void @arm_heavy_mb() #13
  %conv121 = trunc i32 %and99 to i8
  %add.ptr122 = getelementptr i8, ptr %1, i32 %shl102
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr122, i8 %conv121) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !393
  tail call void @arm_heavy_mb() #13
  %shr126 = lshr i32 %cond98, 8
  %conv127 = trunc i32 %shr126 to i8
  %69 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_shift.i, align 4
  %shl129 = shl nuw i32 1, %70
  %add130 = add i32 %shl129, %shl102
  %add.ptr131 = getelementptr i8, ptr %1, i32 %add130
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr131, i8 %conv127) #13, !srcloc !196
  br label %if.end142

do.body135:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 826, 0\0A.popsection", ""() #13, !srcloc !394
  unreachable

if.end142:                                        ; preds = %do.body115, %if.then107
  %71 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg, align 4
  %and151 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %do.body161, label %do.body154

do.body154:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !395
  tail call void @arm_heavy_mb() #13
  %73 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_shift.i, align 4
  %shl158 = shl i32 12, %74
  %add.ptr159 = getelementptr i8, ptr %1, i32 %shl158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 512) #13, !srcloc !211
  br label %do.end210

do.body161:                                       ; preds = %if.end142
  %75 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %io_shift.i, align 4
  %shl165 = shl i32 14, %76
  %and168 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.else172, label %if.then170

if.then170:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i264 = getelementptr i8, ptr %1, i32 %shl165
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i264, i16 512) #13, !srcloc !213
  br label %do.end210

if.else172:                                       ; preds = %do.body161
  %and175 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body198, label %do.body178

do.body178:                                       ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !396
  tail call void @arm_heavy_mb() #13
  %add.ptr185 = getelementptr i8, ptr %1, i32 %shl165
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr185, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !397
  tail call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_shift.i, align 4
  %shl192 = shl nuw i32 1, %78
  %add193 = add i32 %shl192, %shl165
  %add.ptr194 = getelementptr i8, ptr %1, i32 %add193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr194, i8 0) #13, !srcloc !196
  br label %do.end210

do.body198:                                       ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 831, 0\0A.popsection", ""() #13, !srcloc !398
  unreachable

do.end210:                                        ; preds = %do.body178, %if.then170, %do.body154
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_phy_write(ptr nocapture noundef readonly %dev, i32 noundef %phyaddr, i32 noundef %phyreg, i32 noundef %phydata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 768) #13, !srcloc !211
  br label %do.end43

do.body2:                                         ; preds = %entry
  %io_shift3 = getelementptr i8, ptr %dev, i32 2512
  %6 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_shift3, align 4
  %shl4 = shl i32 14, %7
  %and7 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 768) #13, !srcloc !213
  br label %do.end43

if.else10:                                        ; preds = %do.body2
  %and13 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body32, label %do.body16

do.body16:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  %add.ptr21 = getelementptr i8, ptr %1, i32 %shl4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 3) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !401
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_shift3, align 4
  %shl27 = shl nuw i32 1, %9
  %add = add i32 %shl27, %shl4
  %add.ptr28 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 0) #13, !srcloc !196
  br label %do.end43

do.body32:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 844, 0\0A.popsection", ""() #13, !srcloc !402
  unreachable

do.end43:                                         ; preds = %do.body16, %if.then9, %do.body1
  tail call fastcc void @smc_mii_out(ptr noundef %dev, i32 noundef -1, i32 noundef 32)
  %shl44 = shl i32 %phyaddr, 23
  %shl45 = shl i32 %phyreg, 18
  %or = or i32 %shl44, %shl45
  %or47 = or i32 %or, %phydata
  %or48 = or i32 %or47, 1342308352
  tail call fastcc void @smc_mii_out(ptr noundef %dev, i32 noundef %or48, i32 noundef 32)
  %io_shift52 = getelementptr i8, ptr %dev, i32 2512
  %10 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_shift52, align 4
  %shl53 = shl i32 8, %11
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 4
  %and56 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr59 = getelementptr i8, ptr %1, i32 %shl53
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr59) #13, !srcloc !205
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  %conv63 = zext i16 %15 to i32
  br label %cond.end99

cond.false:                                       ; preds = %do.end43
  %and66 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body92, label %cond.true68

cond.true68:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr73 = getelementptr i8, ptr %1, i32 %shl53
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr73) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  %conv77 = zext i8 %16 to i32
  %17 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift52, align 4
  %shl81 = shl nuw i32 1, %18
  %add82 = add i32 %shl81, %shl53
  %add.ptr83 = getelementptr i8, ptr %1, i32 %add82
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr83) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %conv87 = zext i8 %19 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %or89 = or i32 %shl88, %conv77
  br label %cond.end99

do.body92:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 853, 0\0A.popsection", ""() #13, !srcloc !406
  unreachable

cond.end99:                                       ; preds = %cond.true68, %cond.true
  %cond100 = phi i32 [ %conv63, %cond.true ], [ %or89, %cond.true68 ]
  %and101 = and i32 %cond100, -14
  %20 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift52, align 4
  %shl104 = shl i32 8, %21
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg, align 4
  %and107 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else111, label %if.then109

if.then109:                                       ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #15
  %conv110 = trunc i32 %and101 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv110) #13
  %add.ptr8.i263 = getelementptr i8, ptr %1, i32 %shl104
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i263, i16 %24) #13, !srcloc !213
  br label %if.end144

if.else111:                                       ; preds = %cond.end99
  %and114 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body137, label %do.body117

do.body117:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !407
  tail call void @arm_heavy_mb() #13
  %conv123 = trunc i32 %and101 to i8
  %add.ptr124 = getelementptr i8, ptr %1, i32 %shl104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr124, i8 %conv123) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %shr128 = lshr i32 %cond100, 8
  %conv129 = trunc i32 %shr128 to i8
  %25 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_shift52, align 4
  %shl131 = shl nuw i32 1, %26
  %add132 = add i32 %shl131, %shl104
  %add.ptr133 = getelementptr i8, ptr %1, i32 %add132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr133, i8 %conv129) #13, !srcloc !196
  br label %if.end144

do.body137:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 853, 0\0A.popsection", ""() #13, !srcloc !409
  unreachable

if.end144:                                        ; preds = %do.body117, %if.then109
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg, align 4
  %and153 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body163, label %do.body156

do.body156:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !410
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_shift52, align 4
  %shl160 = shl i32 12, %30
  %add.ptr161 = getelementptr i8, ptr %1, i32 %shl160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 512) #13, !srcloc !211
  br label %do.end212

do.body163:                                       ; preds = %if.end144
  %31 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_shift52, align 4
  %shl167 = shl i32 14, %32
  %and170 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.else174, label %if.then172

if.then172:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i264 = getelementptr i8, ptr %1, i32 %shl167
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i264, i16 512) #13, !srcloc !213
  br label %do.end212

if.else174:                                       ; preds = %do.body163
  %and177 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body200, label %do.body180

do.body180:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  tail call void @arm_heavy_mb() #13
  %add.ptr187 = getelementptr i8, ptr %1, i32 %shl167
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr187, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !412
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %io_shift52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_shift52, align 4
  %shl194 = shl nuw i32 1, %34
  %add195 = add i32 %shl194, %shl167
  %add.ptr196 = getelementptr i8, ptr %1, i32 %add195
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr196, i8 0) #13, !srcloc !196
  br label %do.end212

do.body200:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 858, 0\0A.popsection", ""() #13, !srcloc !413
  unreachable

do.end212:                                        ; preds = %do.body180, %if.then172, %do.body156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_shutdown(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !414
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #13, !srcloc !211
  br label %do.body47

do.body5:                                         ; preds = %entry
  %io_shift6 = getelementptr i8, ptr %dev, i32 2512
  %6 = ptrtoint ptr %io_shift6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_shift6, align 4
  %shl7 = shl i32 14, %7
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 512) #13, !srcloc !213
  br label %do.body47

if.else13:                                        ; preds = %do.body5
  %and16 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body35, label %do.body19

do.body19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !415
  tail call void @arm_heavy_mb() #13
  %add.ptr24 = getelementptr i8, ptr %1, i32 %shl7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !416
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %io_shift6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_shift6, align 4
  %shl30 = shl nuw i32 1, %9
  %add = add i32 %shl30, %shl7
  %add.ptr31 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 0) #13, !srcloc !196
  br label %do.body47

do.body35:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #13, !srcloc !417
  unreachable

do.body47:                                        ; preds = %do.body19, %if.then12, %do.body2
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg, align 4
  %and50 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body60, label %do.body53

do.body53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @arm_heavy_mb() #13
  %io_shift56 = getelementptr i8, ptr %dev, i32 2512
  %12 = ptrtoint ptr %io_shift56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift56, align 4
  %shl57 = shl i32 13, %13
  %add.ptr58 = getelementptr i8, ptr %1, i32 %shl57
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 0) #13, !srcloc !196
  br label %do.end109

do.body60:                                        ; preds = %do.body47
  %and67 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body97, label %if.then69

if.then69:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift63 = getelementptr i8, ptr %dev, i32 2512
  %14 = ptrtoint ptr %io_shift63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_shift63, align 4
  %shl64 = shl i32 12, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i531 = getelementptr i8, ptr %1, i32 %shl64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i531, i16 0) #13, !srcloc !213
  br label %do.end109

do.body97:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #13, !srcloc !419
  unreachable

do.end109:                                        ; preds = %if.then69, %do.body53
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  store ptr null, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  tail call void @consume_skb(ptr noundef %17) #13
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg, align 4
  %and115 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body125, label %do.body118

do.body118:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !420
  tail call void @arm_heavy_mb() #13
  %io_shift121 = getelementptr i8, ptr %dev, i32 2512
  %20 = ptrtoint ptr %io_shift121 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift121, align 4
  %shl122 = shl i32 12, %21
  %add.ptr123 = getelementptr i8, ptr %1, i32 %shl122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #13, !srcloc !211
  br label %do.body175

do.body125:                                       ; preds = %do.end109
  %io_shift128 = getelementptr i8, ptr %dev, i32 2512
  %22 = ptrtoint ptr %io_shift128 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_shift128, align 4
  %shl129 = shl i32 14, %23
  %and132 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.else136, label %if.then134

if.then134:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i532 = getelementptr i8, ptr %1, i32 %shl129
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i532, i16 0) #13, !srcloc !213
  br label %do.body175

if.else136:                                       ; preds = %do.body125
  %and139 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body162, label %do.body142

do.body142:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !421
  tail call void @arm_heavy_mb() #13
  %add.ptr149 = getelementptr i8, ptr %1, i32 %shl129
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr149, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !422
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %io_shift128 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_shift128, align 4
  %shl156 = shl nuw i32 1, %25
  %add157 = add i32 %shl156, %shl129
  %add.ptr158 = getelementptr i8, ptr %1, i32 %add157
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr158, i8 0) #13, !srcloc !196
  br label %do.body175

do.body162:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 384, 0\0A.popsection", ""() #13, !srcloc !423
  unreachable

do.body175:                                       ; preds = %do.body142, %if.then134, %do.body118
  %io_shift178 = getelementptr i8, ptr %dev, i32 2512
  %26 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift178, align 4
  %shl179 = shl i32 4, %27
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg, align 4
  %and182 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.else186, label %if.then184

if.then184:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i533 = getelementptr i8, ptr %1, i32 %shl179
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i533, i16 0) #13, !srcloc !213
  br label %if.end219

if.else186:                                       ; preds = %do.body175
  %and189 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.body212, label %do.body192

do.body192:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !424
  tail call void @arm_heavy_mb() #13
  %add.ptr199 = getelementptr i8, ptr %1, i32 %shl179
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr199, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !425
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_shift178, align 4
  %shl206 = shl nuw i32 1, %31
  %add207 = add i32 %shl206, %shl179
  %add.ptr208 = getelementptr i8, ptr %1, i32 %add207
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr208, i8 0) #13, !srcloc !196
  br label %if.end219

do.body212:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 385, 0\0A.popsection", ""() #13, !srcloc !426
  unreachable

if.end219:                                        ; preds = %do.body192, %if.then184
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfg, align 4
  %and229 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.else233, label %if.then231

if.then231:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #13, !srcloc !213
  br label %if.end266

if.else233:                                       ; preds = %if.end219
  %and236 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %do.body259, label %do.body239

do.body239:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !427
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !428
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_shift178, align 4
  %shl253 = shl nuw i32 1, %35
  %add.ptr255 = getelementptr i8, ptr %1, i32 %shl253
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr255, i8 0) #13, !srcloc !196
  br label %if.end266

do.body259:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 386, 0\0A.popsection", ""() #13, !srcloc !429
  unreachable

if.end266:                                        ; preds = %do.body239, %if.then231
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg, align 4
  %and272 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %do.body282, label %do.body275

do.body275:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !430
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift178, align 4
  %shl279 = shl i32 12, %39
  %add.ptr280 = getelementptr i8, ptr %1, i32 %shl279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 256) #13, !srcloc !211
  br label %do.body332

do.body282:                                       ; preds = %if.end266
  %40 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift178, align 4
  %shl286 = shl i32 14, %41
  %and289 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %if.else293, label %if.then291

if.then291:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i534 = getelementptr i8, ptr %1, i32 %shl286
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i534, i16 256) #13, !srcloc !213
  br label %do.body332

if.else293:                                       ; preds = %do.body282
  %and296 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296)
  %tobool297.not = icmp eq i32 %and296, 0
  br i1 %tobool297.not, label %do.body319, label %do.body299

do.body299:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !431
  tail call void @arm_heavy_mb() #13
  %add.ptr306 = getelementptr i8, ptr %1, i32 %shl286
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr306, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !432
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_shift178, align 4
  %shl313 = shl nuw i32 1, %43
  %add314 = add i32 %shl313, %shl286
  %add.ptr315 = getelementptr i8, ptr %1, i32 %add314
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr315, i8 0) #13, !srcloc !196
  br label %do.body332

do.body319:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #13, !srcloc !433
  unreachable

do.body332:                                       ; preds = %do.body299, %if.then291, %do.body275
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cfg, align 4
  %and339 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #15
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !434
  %conv346 = zext i16 %47 to i32
  br label %cond.end381

cond.false:                                       ; preds = %do.body332
  %and349 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %do.body374, label %cond.true351

cond.true351:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !435
  %conv360 = zext i8 %48 to i32
  %49 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_shift178, align 4
  %shl364 = shl nuw i32 1, %50
  %add.ptr366 = getelementptr i8, ptr %1, i32 %shl364
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr366) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !436
  %conv370 = zext i8 %51 to i32
  %shl371 = shl nuw nsw i32 %conv370, 8
  %or = or i32 %shl371, %conv360
  br label %cond.end381

do.body374:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #13, !srcloc !437
  unreachable

cond.end381:                                      ; preds = %cond.true351, %cond.true
  %cond382 = phi i32 [ %conv346, %cond.true ], [ %or, %cond.true351 ]
  %and383 = and i32 %cond382, -32769
  %52 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg, align 4
  %and389 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389)
  %tobool390.not = icmp eq i32 %and389, 0
  br i1 %tobool390.not, label %if.else393, label %if.then391

if.then391:                                       ; preds = %cond.end381
  call void @__sanitizer_cov_trace_pc() #15
  %conv392 = trunc i32 %and383 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv392) #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %54) #13, !srcloc !213
  br label %if.end426

if.else393:                                       ; preds = %cond.end381
  %and396 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396)
  %tobool397.not = icmp eq i32 %and396, 0
  br i1 %tobool397.not, label %do.body419, label %do.body399

do.body399:                                       ; preds = %if.else393
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !438
  tail call void @arm_heavy_mb() #13
  %conv405 = trunc i32 %cond382 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv405) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !439
  tail call void @arm_heavy_mb() #13
  %shr410 = lshr i32 %and383, 8
  %conv411 = trunc i32 %shr410 to i8
  %55 = ptrtoint ptr %io_shift178 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_shift178, align 4
  %shl413 = shl nuw i32 1, %56
  %add.ptr415 = getelementptr i8, ptr %1, i32 %shl413
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr415, i8 %conv411) #13, !srcloc !196
  br label %if.end426

do.body419:                                       ; preds = %if.else393
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #13, !srcloc !440
  unreachable

if.end426:                                        ; preds = %do.body399, %if.then391
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %lock = getelementptr i8, ptr %dev_id, i32 2456
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %io_shift = getelementptr i8, ptr %dev_id, i32 2512
  %2 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_shift, align 4
  %shl = shl i32 6, %3
  %cfg = getelementptr i8, ptr %dev_id, i32 2520
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #13, !srcloc !205
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !441
  %conv = zext i16 %7 to i32
  br label %cond.end35

cond.false:                                       ; preds = %entry
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body28, label %cond.true8

cond.true8:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr11 = getelementptr i8, ptr %1, i32 %shl
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !442
  %conv15 = zext i8 %8 to i32
  %9 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_shift, align 4
  %shl19 = shl nuw i32 1, %10
  %add = add i32 %shl19, %shl
  %add.ptr20 = getelementptr i8, ptr %1, i32 %add
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !443
  %conv24 = zext i8 %11 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or = or i32 %shl25, %conv15
  br label %cond.end35

do.body28:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1217, 0\0A.popsection", ""() #13, !srcloc !444
  unreachable

cond.end35:                                       ; preds = %cond.true8, %cond.true
  %cond36 = phi i32 [ %conv, %cond.true ], [ %or, %cond.true8 ]
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 4
  %and39 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %cond.false51, label %cond.true41

cond.true41:                                      ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_shift, align 4
  %shl45 = shl i32 13, %15
  %add.ptr46 = getelementptr i8, ptr %1, i32 %shl45
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr46) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !445
  %conv50 = zext i8 %16 to i32
  br label %cond.end108

cond.false51:                                     ; preds = %cond.end35
  %and58 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body97, label %cond.true60

cond.true60:                                      ; preds = %cond.false51
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift, align 4
  %shl54 = shl i32 12, %18
  %add.ptr63 = getelementptr i8, ptr %1, i32 %shl54
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr63) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %20 = and i16 %19, 255
  %shr = zext i16 %20 to i32
  br label %cond.end108

do.body97:                                        ; preds = %cond.false51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1218, 0\0A.popsection", ""() #13, !srcloc !447
  unreachable

cond.end108:                                      ; preds = %cond.true60, %cond.true41
  %cond109 = phi i32 [ %conv50, %cond.true41 ], [ %shr, %cond.true60 ]
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg, align 4
  %and113 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body121, label %do.body115

do.body115:                                       ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !448
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_shift, align 4
  %shl119 = shl i32 13, %24
  %add.ptr120 = getelementptr i8, ptr %1, i32 %shl119
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 0) #13, !srcloc !196
  br label %do.end169

do.body121:                                       ; preds = %cond.end108
  %and128 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body158, label %if.then130

if.then130:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_shift, align 4
  %shl125 = shl i32 12, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl125
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.end169

do.body158:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1219, 0\0A.popsection", ""() #13, !srcloc !449
  unreachable

do.end169:                                        ; preds = %if.then130, %do.body115
  %state.i = getelementptr i8, ptr %dev_id, i32 2312
  %tx_task = getelementptr i8, ptr %dev_id, i32 2308
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %mii.i = getelementptr i8, ptr %dev_id, i32 2372
  %phy_type.i = getelementptr i8, ptr %dev_id, i32 2368
  br label %do.body170

do.body170:                                       ; preds = %do.cond1234.do.body170_crit_edge, %do.end169
  %timeout.0 = phi i32 [ 8, %do.end169 ], [ %dec, %do.cond1234.do.body170_crit_edge ]
  %mask.0 = phi i32 [ %cond109, %do.end169 ], [ %mask.1, %do.cond1234.do.body170_crit_edge ]
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg, align 4
  %and173 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %cond.false185, label %cond.true175

cond.true175:                                     ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_shift, align 4
  %shl179 = shl i32 12, %30
  %add.ptr180 = getelementptr i8, ptr %1, i32 %shl179
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr180) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !450
  %conv184 = zext i8 %31 to i32
  br label %cond.end243

cond.false185:                                    ; preds = %do.body170
  %and192 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body231, label %cond.true194

cond.true194:                                     ; preds = %cond.false185
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_shift, align 4
  %shl188 = shl i32 12, %33
  %add.ptr197 = getelementptr i8, ptr %1, i32 %shl188
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr197) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !451
  %35 = lshr i16 %34, 8
  %conv201 = zext i16 %35 to i32
  br label %cond.end243

do.body231:                                       ; preds = %cond.false185
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1225, 0\0A.popsection", ""() #13, !srcloc !452
  unreachable

cond.end243:                                      ; preds = %cond.true194, %cond.true175
  %cond244 = phi i32 [ %conv184, %cond.true175 ], [ %conv201, %cond.true194 ]
  %and248 = and i32 %cond244, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %cond.end243.do.body1237_crit_edge, label %if.end251

cond.end243.do.body1237_crit_edge:                ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1237

if.end251:                                        ; preds = %cond.end243
  %and252 = and i32 %and248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %if.else429, label %do.end257

do.end257:                                        ; preds = %if.end251
  tail call fastcc void @smc_tx(ptr noundef %dev_id)
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg, align 4
  %and261 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %if.else270, label %do.body264

do.body264:                                       ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !453
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift, align 4
  %shl268 = shl i32 12, %39
  %add.ptr269 = getelementptr i8, ptr %1, i32 %shl268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr269, i8 2) #13, !srcloc !196
  br label %do.cond1234

if.else270:                                       ; preds = %do.end257
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool285.not = icmp eq i32 %and.i, 0
  br i1 %tobool285.not, label %if.then286, label %if.else270.do.end289_crit_edge

if.else270.do.end289_crit_edge:                   ; preds = %if.else270
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end289

if.then286:                                       ; preds = %if.else270
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end289

do.end289:                                        ; preds = %if.then286, %if.else270.do.end289_crit_edge
  %41 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_shift, align 4
  %shl292 = shl i32 12, %42
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cfg, align 4
  %and296 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296)
  %tobool297.not = icmp eq i32 %and296, 0
  br i1 %tobool297.not, label %cond.false306, label %cond.true298

cond.true298:                                     ; preds = %do.end289
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr301 = getelementptr i8, ptr %1, i32 %shl292
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr301) #13, !srcloc !205
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !454
  %conv305 = zext i16 %46 to i32
  br label %cond.end344

cond.false306:                                    ; preds = %do.end289
  %and309 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %do.body335, label %cond.true311

cond.true311:                                     ; preds = %cond.false306
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr316 = getelementptr i8, ptr %1, i32 %shl292
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr316) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !455
  %48 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_shift, align 4
  %shl324 = shl nuw i32 1, %49
  %add325 = add i32 %shl324, %shl292
  %add.ptr326 = getelementptr i8, ptr %1, i32 %add325
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr326) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !456
  %conv330 = zext i8 %50 to i32
  %shl331 = shl nuw nsw i32 %conv330, 8
  br label %cond.end344

do.body335:                                       ; preds = %cond.false306
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1242, 0\0A.popsection", ""() #13, !srcloc !457
  unreachable

cond.end344:                                      ; preds = %cond.true311, %cond.true298
  %cond345 = phi i32 [ %conv305, %cond.true298 ], [ %shl331, %cond.true311 ]
  %51 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io_shift, align 4
  %shl352 = shl i32 12, %52
  %53 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cfg, align 4
  %and355 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %if.else359, label %if.then357

if.then357:                                       ; preds = %cond.end344
  call void @__sanitizer_cov_trace_pc() #15
  %55 = trunc i32 %cond345 to i16
  %56 = and i16 %55, -256
  %conv358 = or i16 %56, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv358) #13
  %add.ptr8.i1617 = getelementptr i8, ptr %1, i32 %shl352
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1617, i16 %57) #13, !srcloc !213
  br label %if.end392

if.else359:                                       ; preds = %cond.end344
  %and362 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and362)
  %tobool363.not = icmp eq i32 %and362, 0
  br i1 %tobool363.not, label %do.body385, label %do.body365

do.body365:                                       ; preds = %if.else359
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !458
  tail call void @arm_heavy_mb() #13
  %add.ptr372 = getelementptr i8, ptr %1, i32 %shl352
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr372, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !459
  tail call void @arm_heavy_mb() #13
  %shr376 = lshr i32 %cond345, 8
  %conv377 = trunc i32 %shr376 to i8
  %58 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_shift, align 4
  %shl379 = shl nuw i32 1, %59
  %add380 = add i32 %shl379, %shl352
  %add.ptr381 = getelementptr i8, ptr %1, i32 %add380
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr381, i8 %conv377) #13, !srcloc !196
  br label %if.end392

do.body385:                                       ; preds = %if.else359
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1242, 0\0A.popsection", ""() #13, !srcloc !460
  unreachable

if.end392:                                        ; preds = %do.body365, %if.then357
  br i1 %tobool285.not, label %if.then404, label %if.end392.do.body406_crit_edge

if.end392.do.body406_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body406

if.then404:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body406

do.body406:                                       ; preds = %if.then404, %if.end392.do.body406_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool414.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool414.not, label %if.then418, label %do.body406.do.end421_crit_edge, !prof !203

do.body406.do.end421_crit_edge:                   ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end421

if.then418:                                       ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end421

do.end421:                                        ; preds = %if.then418, %do.body406.do.end421_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #13, !srcloc !204
  br label %do.cond1234

if.else429:                                       ; preds = %if.end251
  %and430 = and i32 %and248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430)
  %tobool431.not = icmp eq i32 %and430, 0
  br i1 %tobool431.not, label %if.else436, label %do.end435

do.end435:                                        ; preds = %if.else429
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @smc_rcv(ptr noundef %dev_id)
  br label %do.cond1234

if.else436:                                       ; preds = %if.else429
  %and437 = and i32 %and248, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437)
  %tobool438.not = icmp eq i32 %and437, 0
  br i1 %tobool438.not, label %if.else444, label %do.end442

do.end442:                                        ; preds = %if.else436
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end442.tasklet_hi_schedule.exit_crit_edge

do.end442.tasklet_hi_schedule.exit_crit_edge:     ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #15
  br label %tasklet_hi_schedule.exit

if.then.i:                                        ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__tasklet_hi_schedule(ptr noundef %tx_task) #13
  br label %tasklet_hi_schedule.exit

tasklet_hi_schedule.exit:                         ; preds = %if.then.i, %do.end442.tasklet_hi_schedule.exit_crit_edge
  %and443 = and i32 %mask.0, -9
  br label %do.cond1234

if.else444:                                       ; preds = %if.else436
  %and445 = and i32 %and248, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and445)
  %tobool446.not = icmp eq i32 %and445, 0
  br i1 %tobool446.not, label %if.else641, label %do.end450

do.end450:                                        ; preds = %if.else444
  %and451 = and i32 %mask.0, -5
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg, align 4
  %and455 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %do.body465, label %do.body458

do.body458:                                       ; preds = %do.end450
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !461
  tail call void @arm_heavy_mb() #13
  %63 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_shift, align 4
  %shl462 = shl i32 12, %64
  %add.ptr463 = getelementptr i8, ptr %1, i32 %shl462
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr463, i32 0) #13, !srcloc !211
  br label %do.end514

do.body465:                                       ; preds = %do.end450
  %65 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %io_shift, align 4
  %shl469 = shl i32 14, %66
  %and472 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and472)
  %tobool473.not = icmp eq i32 %and472, 0
  br i1 %tobool473.not, label %if.else476, label %if.then474

if.then474:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1619 = getelementptr i8, ptr %1, i32 %shl469
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1619, i16 0) #13, !srcloc !213
  br label %do.end514

if.else476:                                       ; preds = %do.body465
  %and479 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and479)
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %do.body502, label %do.body482

do.body482:                                       ; preds = %if.else476
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !462
  tail call void @arm_heavy_mb() #13
  %add.ptr489 = getelementptr i8, ptr %1, i32 %shl469
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr489, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !463
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %io_shift, align 4
  %shl496 = shl nuw i32 1, %68
  %add497 = add i32 %shl496, %shl469
  %add.ptr498 = getelementptr i8, ptr %1, i32 %add497
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr498, i8 0) #13, !srcloc !196
  br label %do.end514

do.body502:                                       ; preds = %if.else476
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1257, 0\0A.popsection", ""() #13, !srcloc !464
  unreachable

do.end514:                                        ; preds = %do.body482, %if.then474, %do.body458
  %69 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_shift, align 4
  %shl517 = shl i32 6, %70
  %71 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg, align 4
  %and521 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and521)
  %tobool522.not = icmp eq i32 %and521, 0
  br i1 %tobool522.not, label %cond.false531, label %cond.true523

cond.true523:                                     ; preds = %do.end514
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr526 = getelementptr i8, ptr %1, i32 %shl517
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr526) #13, !srcloc !205
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !465
  %conv530 = zext i16 %74 to i32
  br label %cond.end569

cond.false531:                                    ; preds = %do.end514
  %and534 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and534)
  %tobool535.not = icmp eq i32 %and534, 0
  br i1 %tobool535.not, label %do.body560, label %cond.true536

cond.true536:                                     ; preds = %cond.false531
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr541 = getelementptr i8, ptr %1, i32 %shl517
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr541) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !466
  %conv545 = zext i8 %75 to i32
  %76 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_shift, align 4
  %shl549 = shl nuw i32 1, %77
  %add550 = add i32 %shl549, %shl517
  %add.ptr551 = getelementptr i8, ptr %1, i32 %add550
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr551) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !467
  br label %cond.end569

do.body560:                                       ; preds = %cond.false531
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1258, 0\0A.popsection", ""() #13, !srcloc !468
  unreachable

cond.end569:                                      ; preds = %cond.true536, %cond.true523
  %cond570 = phi i32 [ %conv530, %cond.true523 ], [ %conv545, %cond.true536 ]
  %79 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cfg, align 4
  %and574 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and574)
  %tobool575.not = icmp eq i32 %and574, 0
  br i1 %tobool575.not, label %do.body584, label %do.body577

do.body577:                                       ; preds = %cond.end569
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !469
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_shift, align 4
  %shl581 = shl i32 12, %82
  %add.ptr582 = getelementptr i8, ptr %1, i32 %shl581
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr582, i32 512) #13, !srcloc !211
  br label %do.end633

do.body584:                                       ; preds = %cond.end569
  %83 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_shift, align 4
  %shl588 = shl i32 14, %84
  %and591 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and591)
  %tobool592.not = icmp eq i32 %and591, 0
  br i1 %tobool592.not, label %if.else595, label %if.then593

if.then593:                                       ; preds = %do.body584
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1620 = getelementptr i8, ptr %1, i32 %shl588
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1620, i16 512) #13, !srcloc !213
  br label %do.end633

if.else595:                                       ; preds = %do.body584
  %and598 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and598)
  %tobool599.not = icmp eq i32 %and598, 0
  br i1 %tobool599.not, label %do.body621, label %do.body601

do.body601:                                       ; preds = %if.else595
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !470
  tail call void @arm_heavy_mb() #13
  %add.ptr608 = getelementptr i8, ptr %1, i32 %shl588
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr608, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !471
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_shift, align 4
  %shl615 = shl nuw i32 1, %86
  %add616 = add i32 %shl615, %shl588
  %add.ptr617 = getelementptr i8, ptr %1, i32 %add616
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr617, i8 0) #13, !srcloc !196
  br label %do.end633

do.body621:                                       ; preds = %if.else595
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1259, 0\0A.popsection", ""() #13, !srcloc !472
  unreachable

do.end633:                                        ; preds = %do.body601, %if.then593, %do.body577
  %and634 = and i32 %cond570, 15
  %87 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %collisions, align 4
  %89 = lshr i32 %cond570, 4
  %and637 = and i32 %89, 15
  %add635 = add nuw nsw i32 %and637, %and634
  %add640 = add i32 %add635, %88
  store i32 %add640, ptr %collisions, align 4
  br label %do.cond1234

if.else641:                                       ; preds = %if.else444
  %and642 = and i32 %and248, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and642)
  %tobool643.not = icmp eq i32 %and642, 0
  br i1 %tobool643.not, label %if.else832, label %do.body648

do.body648:                                       ; preds = %if.else641
  %90 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cfg, align 4
  %and651 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and651)
  %tobool652.not = icmp eq i32 %and651, 0
  br i1 %tobool652.not, label %if.else660, label %do.body654

do.body654:                                       ; preds = %do.body648
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !473
  tail call void @arm_heavy_mb() #13
  %92 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %io_shift, align 4
  %shl658 = shl i32 12, %93
  %add.ptr659 = getelementptr i8, ptr %1, i32 %shl658
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr659, i8 16) #13, !srcloc !196
  br label %do.end828

if.else660:                                       ; preds = %do.body648
  %94 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i1621 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1621)
  %tobool680.not = icmp eq i32 %and.i1621, 0
  br i1 %tobool680.not, label %if.then681, label %if.else660.do.end684_crit_edge

if.else660.do.end684_crit_edge:                   ; preds = %if.else660
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end684

if.then681:                                       ; preds = %if.else660
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end684

do.end684:                                        ; preds = %if.then681, %if.else660.do.end684_crit_edge
  %95 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %io_shift, align 4
  %shl687 = shl i32 12, %96
  %97 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cfg, align 4
  %and691 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and691)
  %tobool692.not = icmp eq i32 %and691, 0
  br i1 %tobool692.not, label %cond.false701, label %cond.true693

cond.true693:                                     ; preds = %do.end684
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr696 = getelementptr i8, ptr %1, i32 %shl687
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr696) #13, !srcloc !205
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !474
  %conv700 = zext i16 %100 to i32
  br label %cond.end739

cond.false701:                                    ; preds = %do.end684
  %and704 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and704)
  %tobool705.not = icmp eq i32 %and704, 0
  br i1 %tobool705.not, label %do.body730, label %cond.true706

cond.true706:                                     ; preds = %cond.false701
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr711 = getelementptr i8, ptr %1, i32 %shl687
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr711) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !475
  %102 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %io_shift, align 4
  %shl719 = shl nuw i32 1, %103
  %add720 = add i32 %shl719, %shl687
  %add.ptr721 = getelementptr i8, ptr %1, i32 %add720
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr721) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !476
  %conv725 = zext i8 %104 to i32
  %shl726 = shl nuw nsw i32 %conv725, 8
  br label %cond.end739

do.body730:                                       ; preds = %cond.false701
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1272, 0\0A.popsection", ""() #13, !srcloc !477
  unreachable

cond.end739:                                      ; preds = %cond.true706, %cond.true693
  %cond740 = phi i32 [ %conv700, %cond.true693 ], [ %shl726, %cond.true706 ]
  %105 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %io_shift, align 4
  %shl747 = shl i32 12, %106
  %107 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cfg, align 4
  %and750 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and750)
  %tobool751.not = icmp eq i32 %and750, 0
  br i1 %tobool751.not, label %if.else754, label %if.then752

if.then752:                                       ; preds = %cond.end739
  call void @__sanitizer_cov_trace_pc() #15
  %109 = trunc i32 %cond740 to i16
  %110 = and i16 %109, -256
  %conv753 = or i16 %110, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %111 = tail call i16 @llvm.bswap.i16(i16 %conv753) #13
  %add.ptr8.i1622 = getelementptr i8, ptr %1, i32 %shl747
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1622, i16 %111) #13, !srcloc !213
  br label %if.end787

if.else754:                                       ; preds = %cond.end739
  %and757 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and757)
  %tobool758.not = icmp eq i32 %and757, 0
  br i1 %tobool758.not, label %do.body780, label %do.body760

do.body760:                                       ; preds = %if.else754
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !478
  tail call void @arm_heavy_mb() #13
  %add.ptr767 = getelementptr i8, ptr %1, i32 %shl747
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr767, i8 16) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %shr771 = lshr i32 %cond740, 8
  %conv772 = trunc i32 %shr771 to i8
  %112 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %io_shift, align 4
  %shl774 = shl nuw i32 1, %113
  %add775 = add i32 %shl774, %shl747
  %add.ptr776 = getelementptr i8, ptr %1, i32 %add775
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr776, i8 %conv772) #13, !srcloc !196
  br label %if.end787

do.body780:                                       ; preds = %if.else754
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1272, 0\0A.popsection", ""() #13, !srcloc !480
  unreachable

if.end787:                                        ; preds = %do.body760, %if.then752
  br i1 %tobool680.not, label %if.then799, label %if.end787.do.body801_crit_edge

if.end787.do.body801_crit_edge:                   ; preds = %if.end787
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body801

if.then799:                                       ; preds = %if.end787
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body801

do.body801:                                       ; preds = %if.then799, %if.end787.do.body801_crit_edge
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i1624 = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1624)
  %tobool809.not = icmp eq i32 %and.i.i1624, 0
  br i1 %tobool809.not, label %if.then818, label %do.body801.do.end821_crit_edge, !prof !203

do.body801.do.end821_crit_edge:                   ; preds = %do.body801
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end821

if.then818:                                       ; preds = %do.body801
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end821

do.end821:                                        ; preds = %if.then818, %do.body801.do.end821_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #13, !srcloc !204
  br label %do.end828

do.end828:                                        ; preds = %do.end821, %do.body654
  %115 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %116, 1
  store i32 %inc, ptr %rx_errors, align 8
  %117 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_fifo_errors, align 8
  %inc831 = add i32 %118, 1
  store i32 %inc831, ptr %rx_fifo_errors, align 8
  br label %do.cond1234

if.else832:                                       ; preds = %if.else641
  %and833 = and i32 %and248, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and833)
  %tobool834.not = icmp eq i32 %and833, 0
  br i1 %tobool834.not, label %if.else836, label %if.then835

if.then835:                                       ; preds = %if.else832
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base, align 4
  tail call fastcc void @smc_10bt_check_media(ptr noundef %dev_id, i32 noundef 0) #13
  %121 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cfg, align 4
  %and.i1625 = and i32 %122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1625)
  %tobool.not.i1626 = icmp eq i32 %and.i1625, 0
  br i1 %tobool.not.i1626, label %do.body2.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.then835
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %123 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %io_shift, align 4
  %shl.i = shl i32 12, %124
  %add.ptr.i1627 = getelementptr i8, ptr %120, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1627, i32 256) #13, !srcloc !211
  br label %do.end43.i

do.body2.i:                                       ; preds = %if.then835
  %125 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %io_shift, align 4
  %shl4.i = shl i32 14, %126
  %and7.i = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i.i = getelementptr i8, ptr %120, i32 %shl4.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 256) #13, !srcloc !213
  br label %do.end43.i

if.else10.i:                                      ; preds = %do.body2.i
  %and13.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body32.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !482
  tail call void @arm_heavy_mb() #13
  %add.ptr21.i = getelementptr i8, ptr %120, i32 %shl4.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  tail call void @arm_heavy_mb() #13
  %127 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %io_shift, align 4
  %shl27.i = shl nuw i32 1, %128
  %add.i = add i32 %shl27.i, %shl4.i
  %add.ptr28.i = getelementptr i8, ptr %120, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 0) #13, !srcloc !196
  br label %do.end43.i

do.body32.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1189, 0\0A.popsection", ""() #13, !srcloc !484
  unreachable

do.end43.i:                                       ; preds = %do.body16.i, %if.then9.i, %do.body1.i
  %129 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_shift, align 4
  %shl46.i = shl i32 12, %130
  %131 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cfg, align 4
  %and49.i = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr52.i = getelementptr i8, ptr %120, i32 %shl46.i
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr52.i) #13, !srcloc !205
  %134 = tail call i16 @llvm.bswap.i16(i16 %133) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !485
  %conv56.i = zext i16 %134 to i32
  br label %cond.end91.i

cond.false.i:                                     ; preds = %do.end43.i
  %and59.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body84.i, label %cond.true61.i

cond.true61.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr66.i = getelementptr i8, ptr %120, i32 %shl46.i
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr66.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !486
  %conv70.i = zext i8 %135 to i32
  %136 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %io_shift, align 4
  %shl74.i = shl nuw i32 1, %137
  %add75.i = add i32 %shl74.i, %shl46.i
  %add.ptr76.i = getelementptr i8, ptr %120, i32 %add75.i
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr76.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !487
  %conv80.i = zext i8 %138 to i32
  %shl81.i = shl nuw nsw i32 %conv80.i, 8
  %or.i = or i32 %shl81.i, %conv70.i
  br label %cond.end91.i

do.body84.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1190, 0\0A.popsection", ""() #13, !srcloc !488
  unreachable

cond.end91.i:                                     ; preds = %cond.true61.i, %cond.true.i
  %cond92.i = phi i32 [ %conv56.i, %cond.true.i ], [ %or.i, %cond.true61.i ]
  %and95.i = and i32 %cond92.i, -129
  %139 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %io_shift, align 4
  %shl98.i = shl i32 12, %140
  %141 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cfg, align 4
  %and101.i = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %if.else105.i, label %if.then103.i

if.then103.i:                                     ; preds = %cond.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv104.i = trunc i32 %and95.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %143 = tail call i16 @llvm.bswap.i16(i16 %conv104.i) #13
  %add.ptr8.i312.i = getelementptr i8, ptr %120, i32 %shl98.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i312.i, i16 %143) #13, !srcloc !213
  br label %if.end138.i

if.else105.i:                                     ; preds = %cond.end91.i
  %and108.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %do.body131.i, label %do.body111.i

do.body111.i:                                     ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !489
  tail call void @arm_heavy_mb() #13
  %conv117.i = trunc i32 %and95.i to i8
  %add.ptr118.i = getelementptr i8, ptr %120, i32 %shl98.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118.i, i8 %conv117.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !490
  tail call void @arm_heavy_mb() #13
  %shr122.i = lshr i32 %cond92.i, 8
  %conv123.i = trunc i32 %shr122.i to i8
  %144 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %io_shift, align 4
  %shl125.i = shl nuw i32 1, %145
  %add126.i = add i32 %shl125.i, %shl98.i
  %add.ptr127.i = getelementptr i8, ptr %120, i32 %add126.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr127.i, i8 %conv123.i) #13, !srcloc !196
  br label %if.end138.i

do.body131.i:                                     ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1191, 0\0A.popsection", ""() #13, !srcloc !491
  unreachable

if.end138.i:                                      ; preds = %do.body111.i, %if.then103.i
  %146 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %io_shift, align 4
  %shl145.i = shl i32 12, %147
  %148 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cfg, align 4
  %and148.i = and i32 %149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %if.else152.i, label %if.then150.i

if.then150.i:                                     ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv151.i = trunc i32 %cond92.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %150 = tail call i16 @llvm.bswap.i16(i16 %conv151.i) #13
  %add.ptr8.i313.i = getelementptr i8, ptr %120, i32 %shl145.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i313.i, i16 %150) #13, !srcloc !213
  br label %if.end185.i

if.else152.i:                                     ; preds = %if.end138.i
  %and155.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %do.body178.i, label %do.body158.i

do.body158.i:                                     ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !492
  tail call void @arm_heavy_mb() #13
  %conv164.i = trunc i32 %cond92.i to i8
  %add.ptr165.i = getelementptr i8, ptr %120, i32 %shl145.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr165.i, i8 %conv164.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !493
  tail call void @arm_heavy_mb() #13
  %shr169.i = lshr i32 %cond92.i, 8
  %conv170.i = trunc i32 %shr169.i to i8
  %151 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %io_shift, align 4
  %shl172.i = shl nuw i32 1, %152
  %add173.i = add i32 %shl172.i, %shl145.i
  %add.ptr174.i = getelementptr i8, ptr %120, i32 %add173.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr174.i, i8 %conv170.i) #13, !srcloc !196
  br label %if.end185.i

do.body178.i:                                     ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1192, 0\0A.popsection", ""() #13, !srcloc !494
  unreachable

if.end185.i:                                      ; preds = %do.body158.i, %if.then150.i
  %153 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cfg, align 4
  %and191.i = and i32 %154, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %do.body201.i, label %do.body194.i

do.body194.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !495
  tail call void @arm_heavy_mb() #13
  %155 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %io_shift, align 4
  %shl198.i = shl i32 12, %156
  %add.ptr199.i = getelementptr i8, ptr %120, i32 %shl198.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.i, i32 512) #13, !srcloc !211
  br label %do.cond1234

do.body201.i:                                     ; preds = %if.end185.i
  %157 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_shift, align 4
  %shl205.i = shl i32 14, %158
  %and208.i = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  br i1 %tobool209.not.i, label %if.else212.i, label %if.then210.i

if.then210.i:                                     ; preds = %do.body201.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i314.i = getelementptr i8, ptr %120, i32 %shl205.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i314.i, i16 512) #13, !srcloc !213
  br label %do.cond1234

if.else212.i:                                     ; preds = %do.body201.i
  %and215.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i)
  %tobool216.not.i = icmp eq i32 %and215.i, 0
  br i1 %tobool216.not.i, label %do.body238.i, label %do.body218.i

do.body218.i:                                     ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !496
  tail call void @arm_heavy_mb() #13
  %add.ptr225.i = getelementptr i8, ptr %120, i32 %shl205.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr225.i, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !497
  tail call void @arm_heavy_mb() #13
  %159 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %io_shift, align 4
  %shl232.i = shl nuw i32 1, %160
  %add233.i = add i32 %shl232.i, %shl205.i
  %add.ptr234.i = getelementptr i8, ptr %120, i32 %add233.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr234.i, i8 0) #13, !srcloc !196
  br label %do.cond1234

do.body238.i:                                     ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1193, 0\0A.popsection", ""() #13, !srcloc !498
  unreachable

if.else836:                                       ; preds = %if.else832
  %and837 = and i32 %and248, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and837)
  %tobool838.not = icmp eq i32 %and837, 0
  br i1 %tobool838.not, label %if.else1021, label %do.body840

do.body840:                                       ; preds = %if.else836
  %161 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cfg, align 4
  %and843 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and843)
  %tobool844.not = icmp eq i32 %and843, 0
  br i1 %tobool844.not, label %if.else852, label %do.body846

do.body846:                                       ; preds = %do.body840
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !499
  tail call void @arm_heavy_mb() #13
  %163 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %io_shift, align 4
  %shl850 = shl i32 12, %164
  %add.ptr851 = getelementptr i8, ptr %1, i32 %shl850
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr851, i8 -128) #13, !srcloc !196
  br label %do.end1020

if.else852:                                       ; preds = %do.body840
  %165 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i1628 = and i32 %165, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1628)
  %tobool872.not = icmp eq i32 %and.i1628, 0
  br i1 %tobool872.not, label %if.then873, label %if.else852.do.end876_crit_edge

if.else852.do.end876_crit_edge:                   ; preds = %if.else852
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end876

if.then873:                                       ; preds = %if.else852
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end876

do.end876:                                        ; preds = %if.then873, %if.else852.do.end876_crit_edge
  %166 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %io_shift, align 4
  %shl879 = shl i32 12, %167
  %168 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cfg, align 4
  %and883 = and i32 %169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and883)
  %tobool884.not = icmp eq i32 %and883, 0
  br i1 %tobool884.not, label %cond.false893, label %cond.true885

cond.true885:                                     ; preds = %do.end876
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr888 = getelementptr i8, ptr %1, i32 %shl879
  %170 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr888) #13, !srcloc !205
  %171 = tail call i16 @llvm.bswap.i16(i16 %170)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !500
  %conv892 = zext i16 %171 to i32
  br label %cond.end931

cond.false893:                                    ; preds = %do.end876
  %and896 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and896)
  %tobool897.not = icmp eq i32 %and896, 0
  br i1 %tobool897.not, label %do.body922, label %cond.true898

cond.true898:                                     ; preds = %cond.false893
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr903 = getelementptr i8, ptr %1, i32 %shl879
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr903) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !501
  %173 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %io_shift, align 4
  %shl911 = shl nuw i32 1, %174
  %add912 = add i32 %shl911, %shl879
  %add.ptr913 = getelementptr i8, ptr %1, i32 %add912
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr913) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !502
  %conv917 = zext i8 %175 to i32
  %shl918 = shl nuw nsw i32 %conv917, 8
  br label %cond.end931

do.body922:                                       ; preds = %cond.false893
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1278, 0\0A.popsection", ""() #13, !srcloc !503
  unreachable

cond.end931:                                      ; preds = %cond.true898, %cond.true885
  %cond932 = phi i32 [ %conv892, %cond.true885 ], [ %shl918, %cond.true898 ]
  %176 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %io_shift, align 4
  %shl939 = shl i32 12, %177
  %178 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cfg, align 4
  %and942 = and i32 %179, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and942)
  %tobool943.not = icmp eq i32 %and942, 0
  br i1 %tobool943.not, label %if.else946, label %if.then944

if.then944:                                       ; preds = %cond.end931
  call void @__sanitizer_cov_trace_pc() #15
  %180 = trunc i32 %cond932 to i16
  %181 = and i16 %180, -256
  %conv945 = or i16 %181, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %182 = tail call i16 @llvm.bswap.i16(i16 %conv945) #13
  %add.ptr8.i1629 = getelementptr i8, ptr %1, i32 %shl939
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1629, i16 %182) #13, !srcloc !213
  br label %if.end979

if.else946:                                       ; preds = %cond.end931
  %and949 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and949)
  %tobool950.not = icmp eq i32 %and949, 0
  br i1 %tobool950.not, label %do.body972, label %do.body952

do.body952:                                       ; preds = %if.else946
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !504
  tail call void @arm_heavy_mb() #13
  %add.ptr959 = getelementptr i8, ptr %1, i32 %shl939
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr959, i8 -128) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !505
  tail call void @arm_heavy_mb() #13
  %shr963 = lshr i32 %cond932, 8
  %conv964 = trunc i32 %shr963 to i8
  %183 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %io_shift, align 4
  %shl966 = shl nuw i32 1, %184
  %add967 = add i32 %shl966, %shl939
  %add.ptr968 = getelementptr i8, ptr %1, i32 %add967
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr968, i8 %conv964) #13, !srcloc !196
  br label %if.end979

do.body972:                                       ; preds = %if.else946
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1278, 0\0A.popsection", ""() #13, !srcloc !506
  unreachable

if.end979:                                        ; preds = %do.body952, %if.then944
  br i1 %tobool872.not, label %if.then991, label %if.end979.do.body993_crit_edge

if.end979.do.body993_crit_edge:                   ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body993

if.then991:                                       ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body993

do.body993:                                       ; preds = %if.then991, %if.end979.do.body993_crit_edge
  %185 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i1631 = and i32 %185, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1631)
  %tobool1001.not = icmp eq i32 %and.i.i1631, 0
  br i1 %tobool1001.not, label %if.then1010, label %do.body993.do.end1013_crit_edge, !prof !203

do.body993.do.end1013_crit_edge:                  ; preds = %do.body993
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1013

if.then1010:                                      ; preds = %do.body993
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end1013

do.end1013:                                       ; preds = %if.then1010, %do.body993.do.end1013_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %165) #13, !srcloc !204
  br label %do.end1020

do.end1020:                                       ; preds = %do.end1013, %do.body846
  %186 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mii.i, align 4
  %188 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp.i = icmp eq i32 %189, 0
  br i1 %cmp.i, label %do.end1020.do.cond1234_crit_edge, label %do.end1020.for.cond.i_crit_edge

do.end1020.for.cond.i_crit_edge:                  ; preds = %do.end1020
  br label %for.cond.i

do.end1020.do.cond1234_crit_edge:                 ; preds = %do.end1020
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond1234

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.end1020.for.cond.i_crit_edge
  tail call fastcc void @smc_phy_check_media(ptr noundef %dev_id, i32 noundef 0) #13
  %call1.i = tail call i32 @smc_phy_read(ptr noundef %dev_id, i32 noundef %187, i32 noundef 18) #13
  %and.i1632 = and i32 %call1.i, 32768
  %cmp2.i = icmp eq i32 %and.i1632, 0
  br i1 %cmp2.i, label %for.cond.i.do.cond1234_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.cond.i.do.cond1234_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond1234

if.else1021:                                      ; preds = %if.else836
  %and1022 = and i32 %and248, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1022)
  %tobool1023.not = icmp eq i32 %and1022, 0
  br i1 %tobool1023.not, label %if.else1021.do.cond1234_crit_edge, label %do.body1025

if.else1021.do.cond1234_crit_edge:                ; preds = %if.else1021
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond1234

do.body1025:                                      ; preds = %if.else1021
  %190 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cfg, align 4
  %and1028 = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1028)
  %tobool1029.not = icmp eq i32 %and1028, 0
  br i1 %tobool1029.not, label %if.else1037, label %do.body1031

do.body1031:                                      ; preds = %do.body1025
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !507
  tail call void @arm_heavy_mb() #13
  %192 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %io_shift, align 4
  %shl1035 = shl i32 12, %193
  %add.ptr1036 = getelementptr i8, ptr %1, i32 %shl1035
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1036, i8 64) #13, !srcloc !196
  br label %do.body1208

if.else1037:                                      ; preds = %do.body1025
  %194 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i1633 = and i32 %194, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1633)
  %tobool1057.not = icmp eq i32 %and.i1633, 0
  br i1 %tobool1057.not, label %if.then1058, label %if.else1037.do.end1061_crit_edge

if.else1037.do.end1061_crit_edge:                 ; preds = %if.else1037
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1061

if.then1058:                                      ; preds = %if.else1037
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end1061

do.end1061:                                       ; preds = %if.then1058, %if.else1037.do.end1061_crit_edge
  %195 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %io_shift, align 4
  %shl1064 = shl i32 12, %196
  %197 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cfg, align 4
  %and1068 = and i32 %198, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1068)
  %tobool1069.not = icmp eq i32 %and1068, 0
  br i1 %tobool1069.not, label %cond.false1078, label %cond.true1070

cond.true1070:                                    ; preds = %do.end1061
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1073 = getelementptr i8, ptr %1, i32 %shl1064
  %199 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1073) #13, !srcloc !205
  %200 = tail call i16 @llvm.bswap.i16(i16 %199)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !508
  %conv1077 = zext i16 %200 to i32
  br label %cond.end1116

cond.false1078:                                   ; preds = %do.end1061
  %and1081 = and i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1081)
  %tobool1082.not = icmp eq i32 %and1081, 0
  br i1 %tobool1082.not, label %do.body1107, label %cond.true1083

cond.true1083:                                    ; preds = %cond.false1078
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1088 = getelementptr i8, ptr %1, i32 %shl1064
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1088) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !509
  %202 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %io_shift, align 4
  %shl1096 = shl nuw i32 1, %203
  %add1097 = add i32 %shl1096, %shl1064
  %add.ptr1098 = getelementptr i8, ptr %1, i32 %add1097
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1098) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !510
  %conv1102 = zext i8 %204 to i32
  %shl1103 = shl nuw nsw i32 %conv1102, 8
  br label %cond.end1116

do.body1107:                                      ; preds = %cond.false1078
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1281, 0\0A.popsection", ""() #13, !srcloc !511
  unreachable

cond.end1116:                                     ; preds = %cond.true1083, %cond.true1070
  %cond1117 = phi i32 [ %conv1077, %cond.true1070 ], [ %shl1103, %cond.true1083 ]
  %205 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %io_shift, align 4
  %shl1124 = shl i32 12, %206
  %207 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cfg, align 4
  %and1127 = and i32 %208, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1127)
  %tobool1128.not = icmp eq i32 %and1127, 0
  br i1 %tobool1128.not, label %if.else1131, label %if.then1129

if.then1129:                                      ; preds = %cond.end1116
  call void @__sanitizer_cov_trace_pc() #15
  %209 = trunc i32 %cond1117 to i16
  %210 = and i16 %209, -256
  %conv1130 = or i16 %210, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %211 = tail call i16 @llvm.bswap.i16(i16 %conv1130) #13
  %add.ptr8.i1634 = getelementptr i8, ptr %1, i32 %shl1124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1634, i16 %211) #13, !srcloc !213
  br label %if.end1164

if.else1131:                                      ; preds = %cond.end1116
  %and1134 = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1134)
  %tobool1135.not = icmp eq i32 %and1134, 0
  br i1 %tobool1135.not, label %do.body1157, label %do.body1137

do.body1137:                                      ; preds = %if.else1131
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !512
  tail call void @arm_heavy_mb() #13
  %add.ptr1144 = getelementptr i8, ptr %1, i32 %shl1124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1144, i8 64) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !513
  tail call void @arm_heavy_mb() #13
  %shr1148 = lshr i32 %cond1117, 8
  %conv1149 = trunc i32 %shr1148 to i8
  %212 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %io_shift, align 4
  %shl1151 = shl nuw i32 1, %213
  %add1152 = add i32 %shl1151, %shl1124
  %add.ptr1153 = getelementptr i8, ptr %1, i32 %add1152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1153, i8 %conv1149) #13, !srcloc !196
  br label %if.end1164

do.body1157:                                      ; preds = %if.else1131
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1281, 0\0A.popsection", ""() #13, !srcloc !514
  unreachable

if.end1164:                                       ; preds = %do.body1137, %if.then1129
  br i1 %tobool1057.not, label %if.then1176, label %if.end1164.do.body1178_crit_edge

if.end1164.do.body1178_crit_edge:                 ; preds = %if.end1164
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1178

if.then1176:                                      ; preds = %if.end1164
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body1178

do.body1178:                                      ; preds = %if.then1176, %if.end1164.do.body1178_crit_edge
  %214 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i1636 = and i32 %214, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1636)
  %tobool1186.not = icmp eq i32 %and.i.i1636, 0
  br i1 %tobool1186.not, label %if.then1195, label %do.body1178.do.end1198_crit_edge, !prof !203

do.body1178.do.end1198_crit_edge:                 ; preds = %do.body1178
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1198

if.then1195:                                      ; preds = %do.body1178
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end1198

do.end1198:                                       ; preds = %if.then1195, %do.body1178.do.end1198_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %194) #13, !srcloc !204
  br label %do.body1208

do.body1208:                                      ; preds = %do.end1198, %do.body1031
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_interrupt.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_interrupt, %if.then1218)) #13
          to label %do.cond1234 [label %if.then1218], !srcloc !268

if.then1218:                                      ; preds = %do.body1208
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_interrupt.__UNIQUE_ID_ddebug382, ptr noundef %dev_id, ptr noundef nonnull @.str.58) #13
  br label %do.cond1234

do.cond1234:                                      ; preds = %if.then1218, %do.body1208, %if.else1021.do.cond1234_crit_edge, %for.cond.i.do.cond1234_crit_edge, %do.end1020.do.cond1234_crit_edge, %do.body218.i, %if.then210.i, %do.body194.i, %do.end828, %do.end633, %tasklet_hi_schedule.exit, %do.end435, %do.end421, %do.body264
  %mask.1 = phi i32 [ %mask.0, %do.body264 ], [ %mask.0, %do.end421 ], [ %mask.0, %do.end435 ], [ %and443, %tasklet_hi_schedule.exit ], [ %and451, %do.end633 ], [ %mask.0, %do.end828 ], [ %mask.0, %if.then1218 ], [ %mask.0, %if.else1021.do.cond1234_crit_edge ], [ %mask.0, %do.body194.i ], [ %mask.0, %if.then210.i ], [ %mask.0, %do.body218.i ], [ %mask.0, %do.end1020.do.cond1234_crit_edge ], [ %mask.0, %do.body1208 ], [ %mask.0, %for.cond.i.do.cond1234_crit_edge ]
  %dec = add nsw i32 %timeout.0, -1
  %tobool1235.not = icmp eq i32 %dec, 0
  br i1 %tobool1235.not, label %do.cond1234.do.body1237_crit_edge, label %do.cond1234.do.body170_crit_edge

do.cond1234.do.body170_crit_edge:                 ; preds = %do.cond1234
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body170

do.cond1234.do.body1237_crit_edge:                ; preds = %do.cond1234
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1237

do.body1237:                                      ; preds = %do.cond1234.do.body1237_crit_edge, %cond.end243.do.body1237_crit_edge
  %mask.2 = phi i32 [ %mask.1, %do.cond1234.do.body1237_crit_edge ], [ %mask.0, %cond.end243.do.body1237_crit_edge ]
  %215 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %cfg, align 4
  %and1240 = and i32 %216, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1240)
  %tobool1241.not = icmp eq i32 %and1240, 0
  br i1 %tobool1241.not, label %do.body1251, label %do.body1243

do.body1243:                                      ; preds = %do.body1237
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !515
  tail call void @arm_heavy_mb() #13
  %217 = tail call i32 @llvm.bswap.i32(i32 %cond36)
  %218 = lshr i32 %217, 16
  %219 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %io_shift, align 4
  %shl1248 = shl i32 4, %220
  %add.ptr1249 = getelementptr i8, ptr %1, i32 %shl1248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1249, i32 %218) #13, !srcloc !211
  br label %do.body1301

do.body1251:                                      ; preds = %do.body1237
  %221 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %io_shift, align 4
  %shl1255 = shl i32 6, %222
  %and1258 = and i32 %216, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1258)
  %tobool1259.not = icmp eq i32 %and1258, 0
  br i1 %tobool1259.not, label %if.else1262, label %if.then1260

if.then1260:                                      ; preds = %do.body1251
  call void @__sanitizer_cov_trace_pc() #15
  %conv1261 = trunc i32 %cond36 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %223 = tail call i16 @llvm.bswap.i16(i16 %conv1261) #13
  %add.ptr8.i1637 = getelementptr i8, ptr %1, i32 %shl1255
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1637, i16 %223) #13, !srcloc !213
  br label %do.body1301

if.else1262:                                      ; preds = %do.body1251
  %and1265 = and i32 %216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1265)
  %tobool1266.not = icmp eq i32 %and1265, 0
  br i1 %tobool1266.not, label %do.body1288, label %do.body1268

do.body1268:                                      ; preds = %if.else1262
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !516
  tail call void @arm_heavy_mb() #13
  %conv1274 = trunc i32 %cond36 to i8
  %add.ptr1275 = getelementptr i8, ptr %1, i32 %shl1255
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1275, i8 %conv1274) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !517
  tail call void @arm_heavy_mb() #13
  %shr1279 = lshr i32 %cond36, 8
  %conv1280 = trunc i32 %shr1279 to i8
  %224 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %io_shift, align 4
  %shl1282 = shl nuw i32 1, %225
  %add1283 = add i32 %shl1282, %shl1255
  %add.ptr1284 = getelementptr i8, ptr %1, i32 %add1283
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1284, i8 %conv1280) #13, !srcloc !196
  br label %do.body1301

do.body1288:                                      ; preds = %if.else1262
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1287, 0\0A.popsection", ""() #13, !srcloc !518
  unreachable

do.body1301:                                      ; preds = %do.body1268, %if.then1260, %do.body1243
  %226 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %cfg, align 4
  %and1304 = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1304)
  %tobool1305.not = icmp eq i32 %and1304, 0
  br i1 %tobool1305.not, label %do.body1315, label %do.body1307

do.body1307:                                      ; preds = %do.body1301
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !519
  tail call void @arm_heavy_mb() #13
  %conv1310 = trunc i32 %mask.2 to i8
  %228 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %io_shift, align 4
  %shl1312 = shl i32 13, %229
  %add.ptr1313 = getelementptr i8, ptr %1, i32 %shl1312
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1313, i8 %conv1310) #13, !srcloc !196
  br label %do.end1365

do.body1315:                                      ; preds = %do.body1301
  %and1323 = and i32 %227, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1323)
  %tobool1324.not = icmp eq i32 %and1323, 0
  br i1 %tobool1324.not, label %do.body1353, label %if.then1325

if.then1325:                                      ; preds = %do.body1315
  call void @__sanitizer_cov_trace_pc() #15
  %230 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %io_shift, align 4
  %shl1320 = shl i32 12, %231
  %mask.2.tr = trunc i32 %mask.2 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %232 = and i16 %mask.2.tr, 255
  %add.ptr8.i1638 = getelementptr i8, ptr %1, i32 %shl1320
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1638, i16 %232) #13, !srcloc !213
  br label %do.end1365

do.body1353:                                      ; preds = %do.body1315
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1288, 0\0A.popsection", ""() #13, !srcloc !520
  unreachable

do.end1365:                                       ; preds = %if.then1325, %do.body1307
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcr_cur_mode = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %tcr_cur_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 129, ptr %tcr_cur_mode, align 4
  %rcr_cur_mode = getelementptr i8, ptr %dev, i32 2348
  %1 = ptrtoint ptr %rcr_cur_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 768, ptr %rcr_cur_mode, align 4
  %leda = getelementptr i8, ptr %dev, i32 2524
  %2 = ptrtoint ptr %leda to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %leda, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 5
  %ledb = getelementptr i8, ptr %dev, i32 2525
  %4 = ptrtoint ptr %ledb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ledb, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl, %shl3
  %or4 = or i32 %or, 14336
  %rpc_cur_mode = getelementptr i8, ptr %dev, i32 2352
  %6 = ptrtoint ptr %rpc_cur_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or4, ptr %rpc_cur_mode, align 4
  %phy_type = getelementptr i8, ptr %dev, i32 2368
  %7 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %tcr_cur_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1153, ptr %tcr_cur_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @smc_reset(ptr noundef %dev)
  tail call fastcc void @smc_enable(ptr noundef %dev)
  %10 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %phy_configure = getelementptr i8, ptr %dev, i32 2404
  tail call void @smc_phy_configure(ptr noundef %phy_configure)
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call fastcc void @smc_10bt_check_media(ptr noundef %dev, i32 noundef 1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  tail call fastcc void @smc_shutdown(ptr noundef %dev)
  %tx_task = getelementptr i8, ptr %dev, i32 2308
  tail call void @tasklet_kill(ptr noundef %tx_task) #13
  %phy_type.i = getelementptr i8, ptr %dev, i32 2368
  %2 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.smc_phy_powerdown.exit_crit_edge, label %if.end.i

entry.smc_phy_powerdown.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_phy_powerdown.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mii.i = getelementptr i8, ptr %dev, i32 2372
  %4 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii.i, align 4
  %phy_configure.i = getelementptr i8, ptr %dev, i32 2404
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %phy_configure.i) #13
  %call2.i = tail call i32 @smc_phy_read(ptr noundef %dev, i32 noundef %5, i32 noundef 0) #13
  %or.i = or i32 %call2.i, 2048
  tail call void @smc_phy_write(ptr noundef %dev, i32 noundef %5, i32 noundef 0, i32 noundef %or.i) #13
  br label %smc_phy_powerdown.exit

smc_phy_powerdown.exit:                           ; preds = %if.end.i, %entry.smc_phy_powerdown.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %do.end10, label %do.body3, !prof !237

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #13, !srcloc !521
  unreachable

do.end10:                                         ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %and = and i32 %5, -2
  %add = add i32 %and, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add)
  %cmp11 = icmp ugt i32 %add, 2047
  br i1 %cmp11, label %if.then18, label %do.body23, !prof !203

if.then18:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51) #16
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %8 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dropped, align 4
  %inc20 = add i32 %9, 1
  store i32 %inc20, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

do.body23:                                        ; preds = %do.end10
  %shr = lshr i32 %add, 8
  %lock = getelementptr i8, ptr %dev, i32 2456
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %or = or i32 %shr, 32
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg, align 4
  %and33 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %conv36 = trunc i32 %or to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv36) #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %12) #13, !srcloc !213
  br label %do.body69.preheader

do.body69.preheader:                              ; preds = %do.body42, %if.then35
  br label %do.body69

if.else:                                          ; preds = %do.body23
  %and39 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body59, label %do.body42

do.body42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !522
  tail call void @arm_heavy_mb() #13
  %conv46 = trunc i32 %or to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv46) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !523
  tail call void @arm_heavy_mb() #13
  %shr50 = lshr i32 %add, 16
  %conv51 = trunc i32 %shr50 to i8
  %13 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift, align 4
  %shl53 = shl nuw i32 1, %14
  %add.ptr55 = getelementptr i8, ptr %1, i32 %shl53
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 %conv51) #13, !srcloc !196
  br label %do.body69.preheader

do.body59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #13, !srcloc !524
  unreachable

do.body69:                                        ; preds = %do.cond322.do.body69_crit_edge, %do.body69.preheader
  %poll_count.0 = phi i32 [ %dec, %do.cond322.do.body69_crit_edge ], [ 16, %do.body69.preheader ]
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg, align 4
  %and72 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift, align 4
  %shl76 = shl i32 12, %18
  %add.ptr77 = getelementptr i8, ptr %1, i32 %shl76
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr77) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !525
  %conv81 = zext i8 %19 to i32
  br label %cond.end137

cond.false:                                       ; preds = %do.body69
  %and88 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body127, label %cond.true90

cond.true90:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift, align 4
  %shl84 = shl i32 12, %21
  %add.ptr93 = getelementptr i8, ptr %1, i32 %shl84
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr93) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !526
  %23 = lshr i16 %22, 8
  %conv97 = zext i16 %23 to i32
  br label %cond.end137

do.body127:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 671, 0\0A.popsection", ""() #13, !srcloc !527
  unreachable

cond.end137:                                      ; preds = %cond.true90, %cond.true
  %cond138 = phi i32 [ %conv81, %cond.true ], [ %conv97, %cond.true90 ]
  %and139 = and i32 %cond138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.cond322, label %do.body142

do.body142:                                       ; preds = %cond.end137
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg, align 4
  %and145 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.else154, label %do.body148

do.body148:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !528
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift, align 4
  %shl152 = shl i32 12, %27
  %add.ptr153 = getelementptr i8, ptr %1, i32 %shl152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr153, i8 8) #13, !srcloc !196
  br label %if.else493

if.else154:                                       ; preds = %do.body142
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !192
  %and.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool172.not = icmp eq i32 %and.i, 0
  br i1 %tobool172.not, label %if.then173, label %if.else154.do.end176_crit_edge

if.else154.do.end176_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end176

if.then173:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end176

do.end176:                                        ; preds = %if.then173, %if.else154.do.end176_crit_edge
  %29 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_shift, align 4
  %shl179 = shl i32 12, %30
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg, align 4
  %and183 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %cond.false193, label %cond.true185

cond.true185:                                     ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr188 = getelementptr i8, ptr %1, i32 %shl179
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr188) #13, !srcloc !205
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !529
  %conv192 = zext i16 %34 to i32
  br label %cond.end231

cond.false193:                                    ; preds = %do.end176
  %and196 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %do.body222, label %cond.true198

cond.true198:                                     ; preds = %cond.false193
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr203 = getelementptr i8, ptr %1, i32 %shl179
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr203) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !530
  %36 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_shift, align 4
  %shl211 = shl nuw i32 1, %37
  %add212 = add i32 %shl211, %shl179
  %add.ptr213 = getelementptr i8, ptr %1, i32 %add212
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr213) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !531
  %conv217 = zext i8 %38 to i32
  %shl218 = shl nuw nsw i32 %conv217, 8
  br label %cond.end231

do.body222:                                       ; preds = %cond.false193
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 673, 0\0A.popsection", ""() #13, !srcloc !532
  unreachable

cond.end231:                                      ; preds = %cond.true198, %cond.true185
  %cond232 = phi i32 [ %conv192, %cond.true185 ], [ %shl218, %cond.true198 ]
  %39 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_shift, align 4
  %shl239 = shl i32 12, %40
  %41 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cfg, align 4
  %and242 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.else246, label %if.then244

if.then244:                                       ; preds = %cond.end231
  call void @__sanitizer_cov_trace_pc() #15
  %43 = trunc i32 %cond232 to i16
  %44 = and i16 %43, -256
  %conv245 = or i16 %44, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv245) #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl239
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %45) #13, !srcloc !213
  br label %if.end279

if.else246:                                       ; preds = %cond.end231
  %and249 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %do.body272, label %do.body252

do.body252:                                       ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !533
  tail call void @arm_heavy_mb() #13
  %add.ptr259 = getelementptr i8, ptr %1, i32 %shl239
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr259, i8 8) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !534
  tail call void @arm_heavy_mb() #13
  %shr263 = lshr i32 %cond232, 8
  %conv264 = trunc i32 %shr263 to i8
  %46 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %io_shift, align 4
  %shl266 = shl nuw i32 1, %47
  %add267 = add i32 %shl266, %shl239
  %add.ptr268 = getelementptr i8, ptr %1, i32 %add267
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr268, i8 %conv264) #13, !srcloc !196
  br label %if.end279

do.body272:                                       ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 673, 0\0A.popsection", ""() #13, !srcloc !535
  unreachable

if.end279:                                        ; preds = %do.body252, %if.then244
  br i1 %tobool172.not, label %if.then291, label %if.end279.do.body293_crit_edge

if.end279.do.body293_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body293

if.then291:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body293

do.body293:                                       ; preds = %if.then291, %if.end279.do.body293_crit_edge
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !202
  %and.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool301.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool301.not, label %if.then310, label %do.body293.do.end313_crit_edge, !prof !203

do.body293.do.end313_crit_edge:                   ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end313

if.then310:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end313

do.end313:                                        ; preds = %if.then310, %do.body293.do.end313_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #13, !srcloc !204
  br label %if.else493

do.cond322:                                       ; preds = %cond.end137
  %dec = add nsw i32 %poll_count.0, -1
  %tobool323.not = icmp eq i32 %dec, 0
  br i1 %tobool323.not, label %if.then328, label %do.cond322.do.body69_crit_edge

do.cond322.do.body69_crit_edge:                   ; preds = %do.cond322
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body69

if.then328:                                       ; preds = %do.cond322
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #13
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %skb, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %call342 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %52 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg, align 4
  %and349 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %cond.false361, label %cond.true351

cond.true351:                                     ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_shift, align 4
  %shl355 = shl i32 13, %55
  %add.ptr356 = getelementptr i8, ptr %1, i32 %shl355
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr356) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !536
  br label %cond.end419

cond.false361:                                    ; preds = %if.then328
  %and368 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  br i1 %tobool369.not, label %do.body407, label %cond.true370

cond.true370:                                     ; preds = %cond.false361
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %io_shift, align 4
  %shl364 = shl i32 12, %58
  %add.ptr373 = getelementptr i8, ptr %1, i32 %shl364
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr373) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !537
  %shr418 = trunc i16 %59 to i8
  br label %cond.end419

do.body407:                                       ; preds = %cond.false361
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #13, !srcloc !538
  unreachable

cond.end419:                                      ; preds = %cond.true370, %cond.true351
  %cond420 = phi i8 [ %56, %cond.true351 ], [ %shr418, %cond.true370 ]
  %60 = or i8 %cond420, 8
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg, align 4
  %and428 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %tobool429.not = icmp eq i32 %and428, 0
  br i1 %tobool429.not, label %do.body438, label %do.body431

do.body431:                                       ; preds = %cond.end419
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !539
  tail call void @arm_heavy_mb() #13
  %63 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_shift, align 4
  %shl435 = shl i32 13, %64
  %add.ptr436 = getelementptr i8, ptr %1, i32 %shl435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr436, i8 %60) #13, !srcloc !196
  br label %do.end489

do.body438:                                       ; preds = %cond.end419
  %and447 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and447)
  %tobool448.not = icmp eq i32 %and447, 0
  br i1 %tobool448.not, label %do.body477, label %if.then449

if.then449:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %io_shift, align 4
  %shl444 = shl i32 12, %66
  %conv440 = zext i8 %60 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i594 = getelementptr i8, ptr %1, i32 %shl444
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i594, i16 %conv440) #13, !srcloc !213
  br label %do.end489

do.body477:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #13, !srcloc !540
  unreachable

do.end489:                                        ; preds = %if.then449, %do.body431
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call342) #13
  br label %cleanup

if.else493:                                       ; preds = %do.end313, %do.body148
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #13
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %skb, ptr %add.ptr.i, align 4
  %tx_task = getelementptr i8, ptr %dev, i32 2308
  tail call void @smc_hardware_send_pkt(ptr noundef %tx_task)
  br label %cleanup

cleanup:                                          ; preds = %if.else493, %do.end489, %if.then18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  %multicast_table = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %multicast_table) #13
  %2 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 7
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %multicast_table, align 8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end3

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rcr_cur_mode = getelementptr i8, ptr %dev, i32 2348
  %12 = ptrtoint ptr %rcr_cur_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcr_cur_mode, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %rcr_cur_mode, align 4
  br label %if.end48

if.else:                                          ; preds = %entry
  %and5 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.else.do.end10_crit_edge

if.else.do.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp = icmp sgt i32 %15, 16
  br i1 %cmp, label %lor.lhs.false.do.end10_crit_edge, label %if.else13

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %if.else.do.end10_crit_edge
  %rcr_cur_mode11 = getelementptr i8, ptr %dev, i32 2348
  %16 = ptrtoint ptr %rcr_cur_mode11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rcr_cur_mode11, align 4
  %or12 = or i32 %17, 4
  store i32 %or12, ptr %rcr_cur_mode11, align 4
  br label %if.end48

if.else13:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16 = icmp eq i32 %15, 0
  br i1 %cmp16, label %do.end43, label %if.then17

if.then17:                                        ; preds = %if.else13
  %18 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %multicast_table, align 8
  %19 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0624 = load ptr, ptr %mc, align 4
  %cmp22.not625 = icmp eq ptr %ha.0624, %mc
  br i1 %cmp22.not625, label %if.then17.for.end_crit_edge, label %if.then17.for.body_crit_edge

if.then17.for.body_crit_edge:                     ; preds = %if.then17
  br label %for.body

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then17.for.body_crit_edge
  %ha.0626 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0624, %if.then17.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0626, i32 0, i32 2
  %call24 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %20 = lshr i32 %call24, 3
  %and26 = and i32 %20, 7
  %arrayidx = getelementptr [8 x i8], ptr @smc_set_multicast_list.invert3, i32 0, i32 %and26
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %22 to i32
  %shl = shl nuw i32 1, %conv
  %and27 = and i32 %call24, 7
  %arrayidx28 = getelementptr [8 x i8], ptr @smc_set_multicast_list.invert3, i32 0, i32 %and27
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx28, align 1
  %idxprom = zext i8 %24 to i32
  %arrayidx29 = getelementptr [8 x i8], ptr %multicast_table, i32 0, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx29, align 1
  %27 = trunc i32 %shl to i8
  %conv32 = or i8 %26, %27
  store i8 %conv32, ptr %arrayidx29, align 1
  %28 = ptrtoint ptr %ha.0626 to i32
  call void @__asan_load4_noabort(i32 %28)
  %ha.0 = load ptr, ptr %ha.0626, align 4
  %cmp22.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp22.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then17.for.end_crit_edge
  %rcr_cur_mode38 = getelementptr i8, ptr %dev, i32 2348
  %29 = ptrtoint ptr %rcr_cur_mode38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rcr_cur_mode38, align 4
  %and39 = and i32 %30, -7
  store i32 %and39, ptr %rcr_cur_mode38, align 4
  br label %if.end48

do.end43:                                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  %rcr_cur_mode44 = getelementptr i8, ptr %dev, i32 2348
  %31 = ptrtoint ptr %rcr_cur_mode44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rcr_cur_mode44, align 4
  %and45 = and i32 %32, -7
  store i32 %and45, ptr %rcr_cur_mode44, align 4
  %33 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %multicast_table, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %for.end, %do.end10, %do.end3
  %tobool153.not = phi i1 [ true, %do.end10 ], [ false, %do.end43 ], [ false, %for.end ], [ true, %do.end3 ]
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cfg, align 4
  %and51 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body60, label %do.body54

do.body54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !541
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %36 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_shift, align 4
  %shl57 = shl i32 12, %37
  %add.ptr58 = getelementptr i8, ptr %1, i32 %shl57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #13, !srcloc !211
  br label %do.body105

do.body60:                                        ; preds = %if.end48
  %io_shift61 = getelementptr i8, ptr %dev, i32 2512
  %38 = ptrtoint ptr %io_shift61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift61, align 4
  %shl62 = shl i32 14, %39
  %and65 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else69, label %if.then67

if.then67:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.body105

if.else69:                                        ; preds = %do.body60
  %and72 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body92, label %do.body75

do.body75:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !542
  tail call void @arm_heavy_mb() #13
  %add.ptr80 = getelementptr i8, ptr %1, i32 %shl62
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !543
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %io_shift61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift61, align 4
  %shl87 = shl nuw i32 1, %41
  %add = add i32 %shl87, %shl62
  %add.ptr88 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88, i8 0) #13, !srcloc !196
  br label %do.body105

do.body92:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1445, 0\0A.popsection", ""() #13, !srcloc !544
  unreachable

do.body105:                                       ; preds = %do.body75, %if.then67, %do.body54
  %rcr_cur_mode107 = getelementptr i8, ptr %dev, i32 2348
  %42 = ptrtoint ptr %rcr_cur_mode107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rcr_cur_mode107, align 4
  %io_shift109 = getelementptr i8, ptr %dev, i32 2512
  %44 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_shift109, align 4
  %shl110 = shl i32 4, %45
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg, align 4
  %and113 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else117, label %if.then115

if.then115:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #15
  %conv116 = trunc i32 %43 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv116) #13
  %add.ptr8.i618 = getelementptr i8, ptr %1, i32 %shl110
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i618, i16 %48) #13, !srcloc !213
  br label %if.end150

if.else117:                                       ; preds = %do.body105
  %and120 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body143, label %do.body123

do.body123:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !545
  tail call void @arm_heavy_mb() #13
  %conv129 = trunc i32 %43 to i8
  %add.ptr130 = getelementptr i8, ptr %1, i32 %shl110
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr130, i8 %conv129) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !546
  tail call void @arm_heavy_mb() #13
  %shr134 = lshr i32 %43, 8
  %conv135 = trunc i32 %shr134 to i8
  %49 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_shift109, align 4
  %shl137 = shl nuw i32 1, %50
  %add138 = add i32 %shl137, %shl110
  %add.ptr139 = getelementptr i8, ptr %1, i32 %add138
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139, i8 %conv135) #13, !srcloc !196
  br label %if.end150

do.body143:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !547
  unreachable

if.end150:                                        ; preds = %do.body123, %if.then115
  br i1 %tobool153.not, label %if.end150.do.body435_crit_edge, label %do.body155

if.end150.do.body435_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body435

do.body155:                                       ; preds = %if.end150
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cfg, align 4
  %and158 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %do.body168, label %do.body161

do.body161:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !548
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %io_shift109, align 4
  %shl165 = shl i32 12, %54
  %add.ptr166 = getelementptr i8, ptr %1, i32 %shl165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 768) #13, !srcloc !211
  br label %do.body218

do.body168:                                       ; preds = %do.body155
  %55 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_shift109, align 4
  %shl172 = shl i32 14, %56
  %and175 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.else179, label %if.then177

if.then177:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i619 = getelementptr i8, ptr %1, i32 %shl172
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i619, i16 768) #13, !srcloc !213
  br label %do.body218

if.else179:                                       ; preds = %do.body168
  %and182 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body205, label %do.body185

do.body185:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !549
  tail call void @arm_heavy_mb() #13
  %add.ptr192 = getelementptr i8, ptr %1, i32 %shl172
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr192, i8 3) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !550
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %io_shift109, align 4
  %shl199 = shl nuw i32 1, %58
  %add200 = add i32 %shl199, %shl172
  %add.ptr201 = getelementptr i8, ptr %1, i32 %add200
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr201, i8 0) #13, !srcloc !196
  br label %do.body218

do.body205:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1448, 0\0A.popsection", ""() #13, !srcloc !551
  unreachable

do.body218:                                       ; preds = %do.body185, %if.then177, %do.body161
  %59 = ptrtoint ptr %multicast_table to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %multicast_table, align 8
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %2, align 1
  %63 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cfg, align 4
  %and233 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.else237, label %if.then235

if.then235:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #15
  %conv225 = zext i8 %62 to i16
  %shl226 = shl nuw i16 %conv225, 8
  %conv223 = zext i8 %60 to i16
  %or227 = or i16 %shl226, %conv223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %65 = tail call i16 @llvm.bswap.i16(i16 %or227) #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %65) #13, !srcloc !213
  br label %if.end270

if.else237:                                       ; preds = %do.body218
  %and240 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %do.body263, label %do.body243

do.body243:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !552
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %60) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !553
  tail call void @arm_heavy_mb() #13
  %66 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_shift109, align 4
  %shl257 = shl nuw i32 1, %67
  %add.ptr259 = getelementptr i8, ptr %1, i32 %shl257
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr259, i8 %62) #13, !srcloc !196
  br label %if.end270

do.body263:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1449, 0\0A.popsection", ""() #13, !srcloc !554
  unreachable

if.end270:                                        ; preds = %do.body243, %if.then235
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %3, align 2
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %4, align 1
  %72 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %io_shift109, align 4
  %shl283 = shl i32 2, %73
  %74 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cfg, align 4
  %and286 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %if.else290, label %if.then288

if.then288:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #15
  %conv278 = zext i8 %71 to i16
  %shl279 = shl nuw i16 %conv278, 8
  %conv276 = zext i8 %69 to i16
  %or280 = or i16 %shl279, %conv276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %76 = tail call i16 @llvm.bswap.i16(i16 %or280) #13
  %add.ptr8.i620 = getelementptr i8, ptr %1, i32 %shl283
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i620, i16 %76) #13, !srcloc !213
  br label %if.end323

if.else290:                                       ; preds = %if.end270
  %and293 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %do.body316, label %do.body296

do.body296:                                       ; preds = %if.else290
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !555
  tail call void @arm_heavy_mb() #13
  %add.ptr303 = getelementptr i8, ptr %1, i32 %shl283
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr303, i8 %69) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !556
  tail call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_shift109, align 4
  %shl310 = shl nuw i32 1, %78
  %add311 = add i32 %shl310, %shl283
  %add.ptr312 = getelementptr i8, ptr %1, i32 %add311
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr312, i8 %71) #13, !srcloc !196
  br label %if.end323

do.body316:                                       ; preds = %if.else290
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1449, 0\0A.popsection", ""() #13, !srcloc !557
  unreachable

if.end323:                                        ; preds = %do.body296, %if.then288
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %5, align 4
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %6, align 1
  %83 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_shift109, align 4
  %shl336 = shl i32 4, %84
  %85 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cfg, align 4
  %and339 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %if.else343, label %if.then341

if.then341:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #15
  %conv331 = zext i8 %82 to i16
  %shl332 = shl nuw i16 %conv331, 8
  %conv329 = zext i8 %80 to i16
  %or333 = or i16 %shl332, %conv329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %87 = tail call i16 @llvm.bswap.i16(i16 %or333) #13
  %add.ptr8.i621 = getelementptr i8, ptr %1, i32 %shl336
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i621, i16 %87) #13, !srcloc !213
  br label %if.end376

if.else343:                                       ; preds = %if.end323
  %and346 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and346)
  %tobool347.not = icmp eq i32 %and346, 0
  br i1 %tobool347.not, label %do.body369, label %do.body349

do.body349:                                       ; preds = %if.else343
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !558
  tail call void @arm_heavy_mb() #13
  %add.ptr356 = getelementptr i8, ptr %1, i32 %shl336
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr356, i8 %80) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !559
  tail call void @arm_heavy_mb() #13
  %88 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %io_shift109, align 4
  %shl363 = shl nuw i32 1, %89
  %add364 = add i32 %shl363, %shl336
  %add.ptr365 = getelementptr i8, ptr %1, i32 %add364
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr365, i8 %82) #13, !srcloc !196
  br label %if.end376

do.body369:                                       ; preds = %if.else343
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1449, 0\0A.popsection", ""() #13, !srcloc !560
  unreachable

if.end376:                                        ; preds = %do.body349, %if.then341
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %7, align 2
  %92 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %8, align 1
  %94 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_shift109, align 4
  %shl389 = shl i32 6, %95
  %96 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cfg, align 4
  %and392 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392)
  %tobool393.not = icmp eq i32 %and392, 0
  br i1 %tobool393.not, label %if.else396, label %if.then394

if.then394:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #15
  %conv384 = zext i8 %93 to i16
  %shl385 = shl nuw i16 %conv384, 8
  %conv382 = zext i8 %91 to i16
  %or386 = or i16 %shl385, %conv382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %98 = tail call i16 @llvm.bswap.i16(i16 %or386) #13
  %add.ptr8.i622 = getelementptr i8, ptr %1, i32 %shl389
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i622, i16 %98) #13, !srcloc !213
  br label %do.body435

if.else396:                                       ; preds = %if.end376
  %and399 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and399)
  %tobool400.not = icmp eq i32 %and399, 0
  br i1 %tobool400.not, label %do.body422, label %do.body402

do.body402:                                       ; preds = %if.else396
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !561
  tail call void @arm_heavy_mb() #13
  %add.ptr409 = getelementptr i8, ptr %1, i32 %shl389
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr409, i8 %91) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !562
  tail call void @arm_heavy_mb() #13
  %99 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %io_shift109, align 4
  %shl416 = shl nuw i32 1, %100
  %add417 = add i32 %shl416, %shl389
  %add.ptr418 = getelementptr i8, ptr %1, i32 %add417
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr418, i8 %93) #13, !srcloc !196
  br label %do.body435

do.body422:                                       ; preds = %if.else396
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1449, 0\0A.popsection", ""() #13, !srcloc !563
  unreachable

do.body435:                                       ; preds = %do.body402, %if.then394, %if.end150.do.body435_crit_edge
  %101 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cfg, align 4
  %and438 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and438)
  %tobool439.not = icmp eq i32 %and438, 0
  br i1 %tobool439.not, label %do.body448, label %do.body441

do.body441:                                       ; preds = %do.body435
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !564
  tail call void @arm_heavy_mb() #13
  %103 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %io_shift109, align 4
  %shl445 = shl i32 12, %104
  %add.ptr446 = getelementptr i8, ptr %1, i32 %shl445
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr446, i32 512) #13, !srcloc !211
  br label %do.end497

do.body448:                                       ; preds = %do.body435
  %105 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %io_shift109, align 4
  %shl452 = shl i32 14, %106
  %and455 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %if.else459, label %if.then457

if.then457:                                       ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i623 = getelementptr i8, ptr %1, i32 %shl452
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i623, i16 512) #13, !srcloc !213
  br label %do.end497

if.else459:                                       ; preds = %do.body448
  %and462 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and462)
  %tobool463.not = icmp eq i32 %and462, 0
  br i1 %tobool463.not, label %do.body485, label %do.body465

do.body465:                                       ; preds = %if.else459
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !565
  tail call void @arm_heavy_mb() #13
  %add.ptr472 = getelementptr i8, ptr %1, i32 %shl452
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr472, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !566
  tail call void @arm_heavy_mb() #13
  %107 = ptrtoint ptr %io_shift109 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_shift109, align 4
  %shl479 = shl nuw i32 1, %108
  %add480 = add i32 %shl479, %shl452
  %add.ptr481 = getelementptr i8, ptr %1, i32 %add480
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr481, i8 0) #13, !srcloc !196
  br label %do.end497

do.body485:                                       ; preds = %if.else459
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1451, 0\0A.popsection", ""() #13, !srcloc !567
  unreachable

do.end497:                                        ; preds = %do.body465, %if.then457, %do.body441
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %multicast_table) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !568
  %conv = zext i8 %6 to i32
  br label %cond.end53

cond.false:                                       ; preds = %entry
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body43, label %cond.true10

cond.true10:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift3 = getelementptr i8, ptr %dev, i32 2512
  %7 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_shift3, align 4
  %shl4 = shl i32 12, %8
  %add.ptr13 = getelementptr i8, ptr %1, i32 %shl4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !569
  %10 = lshr i16 %9, 8
  %conv17 = zext i16 %10 to i32
  br label %cond.end53

do.body43:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1333, 0\0A.popsection", ""() #13, !srcloc !570
  unreachable

cond.end53:                                       ; preds = %cond.true10, %cond.true
  %cond54 = phi i32 [ %conv, %cond.true ], [ %conv17, %cond.true10 ]
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg, align 4
  %and57 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.false69, label %cond.true59

cond.true59:                                      ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift62 = getelementptr i8, ptr %dev, i32 2512
  %13 = ptrtoint ptr %io_shift62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift62, align 4
  %shl63 = shl i32 13, %14
  %add.ptr64 = getelementptr i8, ptr %1, i32 %shl63
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !571
  %conv68 = zext i8 %15 to i32
  br label %cond.end126

cond.false69:                                     ; preds = %cond.end53
  %and76 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body115, label %cond.true78

cond.true78:                                      ; preds = %cond.false69
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift71 = getelementptr i8, ptr %dev, i32 2512
  %16 = ptrtoint ptr %io_shift71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_shift71, align 4
  %shl72 = shl i32 12, %17
  %add.ptr81 = getelementptr i8, ptr %1, i32 %shl72
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr81) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !572
  %19 = and i16 %18, 255
  %shr = zext i16 %19 to i32
  br label %cond.end126

do.body115:                                       ; preds = %cond.false69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1334, 0\0A.popsection", ""() #13, !srcloc !573
  unreachable

cond.end126:                                      ; preds = %cond.true78, %cond.true59
  %cond127 = phi i32 [ %conv68, %cond.true59 ], [ %shr, %cond.true78 ]
  %io_shift129 = getelementptr i8, ptr %dev, i32 2512
  %20 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift129, align 4
  %shl130 = shl i32 4, %21
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg, align 4
  %and134 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %cond.false144, label %cond.true136

cond.true136:                                     ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr139 = getelementptr i8, ptr %1, i32 %shl130
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr139) #13, !srcloc !205
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !574
  %conv143 = zext i16 %25 to i32
  br label %cond.end182

cond.false144:                                    ; preds = %cond.end126
  %and147 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body173, label %cond.true149

cond.true149:                                     ; preds = %cond.false144
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr154 = getelementptr i8, ptr %1, i32 %shl130
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !575
  %conv158 = zext i8 %26 to i32
  %27 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_shift129, align 4
  %shl162 = shl nuw i32 1, %28
  %add163 = add i32 %shl162, %shl130
  %add.ptr164 = getelementptr i8, ptr %1, i32 %add163
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr164) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !576
  %conv168 = zext i8 %29 to i32
  %shl169 = shl nuw nsw i32 %conv168, 8
  %or170 = or i32 %shl169, %conv158
  br label %cond.end182

do.body173:                                       ; preds = %cond.false144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1335, 0\0A.popsection", ""() #13, !srcloc !577
  unreachable

cond.end182:                                      ; preds = %cond.true149, %cond.true136
  %cond183 = phi i32 [ %conv143, %cond.true136 ], [ %or170, %cond.true149 ]
  %30 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg, align 4
  %and187 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body195, label %do.body189

do.body189:                                       ; preds = %cond.end182
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !578
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_shift129, align 4
  %shl193 = shl i32 12, %33
  %add.ptr194 = getelementptr i8, ptr %1, i32 %shl193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 0) #13, !srcloc !211
  br label %do.end243

do.body195:                                       ; preds = %cond.end182
  %34 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_shift129, align 4
  %shl199 = shl i32 14, %35
  %and202 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.else206, label %if.then204

if.then204:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl199
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.end243

if.else206:                                       ; preds = %do.body195
  %and209 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %do.body232, label %do.body212

do.body212:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !579
  tail call void @arm_heavy_mb() #13
  %add.ptr219 = getelementptr i8, ptr %1, i32 %shl199
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr219, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !580
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_shift129, align 4
  %shl226 = shl nuw i32 1, %37
  %add227 = add i32 %shl226, %shl199
  %add.ptr228 = getelementptr i8, ptr %1, i32 %add227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr228, i8 0) #13, !srcloc !196
  br label %do.end243

do.body232:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1336, 0\0A.popsection", ""() #13, !srcloc !581
  unreachable

do.end243:                                        ; preds = %do.body212, %if.then204, %do.body189
  %38 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift129, align 4
  %shl246 = shl i32 2, %39
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cfg, align 4
  %and250 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %cond.false260, label %cond.true252

cond.true252:                                     ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr255 = getelementptr i8, ptr %1, i32 %shl246
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr255) #13, !srcloc !205
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !582
  %conv259 = zext i16 %43 to i32
  br label %cond.end298

cond.false260:                                    ; preds = %do.end243
  %and263 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %do.body289, label %cond.true265

cond.true265:                                     ; preds = %cond.false260
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr270 = getelementptr i8, ptr %1, i32 %shl246
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr270) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !583
  %conv274 = zext i8 %44 to i32
  %45 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_shift129, align 4
  %shl278 = shl nuw i32 1, %46
  %add279 = add i32 %shl278, %shl246
  %add.ptr280 = getelementptr i8, ptr %1, i32 %add279
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr280) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !584
  %conv284 = zext i8 %47 to i32
  %shl285 = shl nuw nsw i32 %conv284, 8
  %or286 = or i32 %shl285, %conv274
  br label %cond.end298

do.body289:                                       ; preds = %cond.false260
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1337, 0\0A.popsection", ""() #13, !srcloc !585
  unreachable

cond.end298:                                      ; preds = %cond.true265, %cond.true252
  %cond299 = phi i32 [ %conv259, %cond.true252 ], [ %or286, %cond.true265 ]
  %48 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_shift129, align 4
  %shl302 = shl i32 8, %49
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfg, align 4
  %and306 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %cond.false316, label %cond.true308

cond.true308:                                     ; preds = %cond.end298
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr311 = getelementptr i8, ptr %1, i32 %shl302
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr311) #13, !srcloc !205
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !586
  %conv315 = zext i16 %53 to i32
  br label %cond.end354

cond.false316:                                    ; preds = %cond.end298
  %and319 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319)
  %tobool320.not = icmp eq i32 %and319, 0
  br i1 %tobool320.not, label %do.body345, label %cond.true321

cond.true321:                                     ; preds = %cond.false316
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr326 = getelementptr i8, ptr %1, i32 %shl302
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr326) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !587
  %conv330 = zext i8 %54 to i32
  %55 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_shift129, align 4
  %shl334 = shl nuw i32 1, %56
  %add335 = add i32 %shl334, %shl302
  %add.ptr336 = getelementptr i8, ptr %1, i32 %add335
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr336) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !588
  %conv340 = zext i8 %57 to i32
  %shl341 = shl nuw nsw i32 %conv340, 8
  %or342 = or i32 %shl341, %conv330
  br label %cond.end354

do.body345:                                       ; preds = %cond.false316
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #13, !srcloc !589
  unreachable

cond.end354:                                      ; preds = %cond.true321, %cond.true308
  %cond355 = phi i32 [ %conv315, %cond.true308 ], [ %or342, %cond.true321 ]
  %58 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cfg, align 4
  %and359 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and359)
  %tobool360.not = icmp eq i32 %and359, 0
  br i1 %tobool360.not, label %do.body369, label %do.body362

do.body362:                                       ; preds = %cond.end354
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !590
  tail call void @arm_heavy_mb() #13
  %60 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_shift129, align 4
  %shl366 = shl i32 12, %61
  %add.ptr367 = getelementptr i8, ptr %1, i32 %shl366
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr367, i32 512) #13, !srcloc !211
  br label %do.end418

do.body369:                                       ; preds = %cond.end354
  %62 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_shift129, align 4
  %shl373 = shl i32 14, %63
  %and376 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %if.else380, label %if.then378

if.then378:                                       ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i532 = getelementptr i8, ptr %1, i32 %shl373
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i532, i16 512) #13, !srcloc !213
  br label %do.end418

if.else380:                                       ; preds = %do.body369
  %and383 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383)
  %tobool384.not = icmp eq i32 %and383, 0
  br i1 %tobool384.not, label %do.body406, label %do.body386

do.body386:                                       ; preds = %if.else380
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !591
  tail call void @arm_heavy_mb() #13
  %add.ptr393 = getelementptr i8, ptr %1, i32 %shl373
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr393, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !592
  tail call void @arm_heavy_mb() #13
  %64 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_shift129, align 4
  %shl400 = shl nuw i32 1, %65
  %add401 = add i32 %shl400, %shl373
  %add.ptr402 = getelementptr i8, ptr %1, i32 %add401
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr402, i8 0) #13, !srcloc !196
  br label %do.end418

do.body406:                                       ; preds = %if.else380
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1339, 0\0A.popsection", ""() #13, !srcloc !593
  unreachable

do.end418:                                        ; preds = %do.body386, %if.then378, %do.body362
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_timeout.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_timeout, %if.then428)) #13
          to label %do.end435 [label %if.then428], !srcloc !268

if.then428:                                       ; preds = %do.end418
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_timeout.__UNIQUE_ID_ddebug385, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %cond54, i32 noundef %cond127, i32 noundef %cond355, i32 noundef %cond183, i32 noundef %cond299) #13
  br label %do.end435

do.end435:                                        ; preds = %if.then428, %do.end418
  tail call fastcc void @smc_reset(ptr noundef %dev)
  tail call fastcc void @smc_enable(ptr noundef %dev)
  %phy_type = getelementptr i8, ptr %dev, i32 2368
  %66 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.not = icmp eq i32 %67, 0
  br i1 %cmp.not, label %do.end435.if.end439_crit_edge, label %if.then437

do.end435.if.end439_crit_edge:                    ; preds = %do.end435
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end439

if.then437:                                       ; preds = %do.end435
  call void @__sanitizer_cov_trace_pc() #15
  %phy_configure = getelementptr i8, ptr %dev, i32 2404
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %phy_configure) #13
  br label %if.end439

if.end439:                                        ; preds = %if.then437, %do.end435.if.end439_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %70, i32 0, i32 12
  %72 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp.not.i.i = icmp eq i32 %73, %71
  br i1 %cmp.not.i.i, label %if.end439.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end439.netif_trans_update.exit_crit_edge:      ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %71, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end439.netif_trans_update.exit_crit_edge
  %75 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %76) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_poll_controller(ptr noundef %dev) #2 align 64 {
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
  %call = tail call i32 @smc_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_enable(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !594
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !211
  br label %do.body47

do.body5:                                         ; preds = %entry
  %io_shift6 = getelementptr i8, ptr %dev, i32 2512
  %6 = ptrtoint ptr %io_shift6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_shift6, align 4
  %shl7 = shl i32 14, %7
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.body47

if.else13:                                        ; preds = %do.body5
  %and16 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body35, label %do.body19

do.body19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !595
  tail call void @arm_heavy_mb() #13
  %add.ptr24 = getelementptr i8, ptr %1, i32 %shl7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !596
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %io_shift6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_shift6, align 4
  %shl30 = shl nuw i32 1, %9
  %add = add i32 %shl30, %shl7
  %add.ptr31 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 0) #13, !srcloc !196
  br label %do.body47

do.body35:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #13, !srcloc !597
  unreachable

do.body47:                                        ; preds = %do.body19, %if.then12, %do.body2
  %tcr_cur_mode = getelementptr i8, ptr %dev, i32 2344
  %10 = ptrtoint ptr %tcr_cur_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tcr_cur_mode, align 4
  %io_shift50 = getelementptr i8, ptr %dev, i32 2512
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 4
  %and54 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else58, label %if.then56

if.then56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %conv57 = trunc i32 %11 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv57) #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %14) #13, !srcloc !213
  br label %if.end91

if.else58:                                        ; preds = %do.body47
  %and61 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body84, label %do.body64

do.body64:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !598
  tail call void @arm_heavy_mb() #13
  %conv70 = trunc i32 %11 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv70) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !599
  tail call void @arm_heavy_mb() #13
  %shr75 = lshr i32 %11, 8
  %conv76 = trunc i32 %shr75 to i8
  %15 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_shift50, align 4
  %shl78 = shl nuw i32 1, %16
  %add.ptr80 = getelementptr i8, ptr %1, i32 %shl78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 %conv76) #13, !srcloc !196
  br label %if.end91

do.body84:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #13, !srcloc !600
  unreachable

if.end91:                                         ; preds = %do.body64, %if.then56
  %rcr_cur_mode = getelementptr i8, ptr %dev, i32 2348
  %17 = ptrtoint ptr %rcr_cur_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rcr_cur_mode, align 4
  %19 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_shift50, align 4
  %shl98 = shl i32 4, %20
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg, align 4
  %and101 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else105, label %if.then103

if.then103:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %conv104 = trunc i32 %18 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv104) #13
  %add.ptr8.i622 = getelementptr i8, ptr %1, i32 %shl98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i622, i16 %23) #13, !srcloc !213
  br label %if.end138

if.else105:                                       ; preds = %if.end91
  %and108 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body131, label %do.body111

do.body111:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !601
  tail call void @arm_heavy_mb() #13
  %conv117 = trunc i32 %18 to i8
  %add.ptr118 = getelementptr i8, ptr %1, i32 %shl98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118, i8 %conv117) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !602
  tail call void @arm_heavy_mb() #13
  %shr122 = lshr i32 %18, 8
  %conv123 = trunc i32 %shr122 to i8
  %24 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_shift50, align 4
  %shl125 = shl nuw i32 1, %25
  %add126 = add i32 %shl125, %shl98
  %add.ptr127 = getelementptr i8, ptr %1, i32 %add126
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr127, i8 %conv123) #13, !srcloc !196
  br label %if.end138

do.body131:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 343, 0\0A.popsection", ""() #13, !srcloc !603
  unreachable

if.end138:                                        ; preds = %do.body111, %if.then103
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg, align 4
  %and144 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body154, label %do.body147

do.body147:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !604
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_shift50, align 4
  %shl151 = shl i32 12, %29
  %add.ptr152 = getelementptr i8, ptr %1, i32 %shl151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 256) #13, !srcloc !211
  br label %do.body205

do.body154:                                       ; preds = %if.end138
  %30 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_shift50, align 4
  %shl158 = shl i32 14, %31
  %and161 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.else165, label %if.then163

if.then163:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i623 = getelementptr i8, ptr %1, i32 %shl158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i623, i16 256) #13, !srcloc !213
  br label %do.body205

if.else165:                                       ; preds = %do.body154
  %and168 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %do.body191, label %do.body171

do.body171:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !605
  tail call void @arm_heavy_mb() #13
  %add.ptr178 = getelementptr i8, ptr %1, i32 %shl158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr178, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !606
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_shift50, align 4
  %shl185 = shl nuw i32 1, %33
  %add186 = add i32 %shl185, %shl158
  %add.ptr187 = getelementptr i8, ptr %1, i32 %add186
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr187, i8 0) #13, !srcloc !196
  br label %do.body205

do.body191:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 345, 0\0A.popsection", ""() #13, !srcloc !607
  unreachable

do.body205:                                       ; preds = %do.body171, %if.then163, %do.body147
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %arrayidx209 = getelementptr i8, ptr %35, i32 1
  %38 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx209, align 1
  %40 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift50, align 4
  %shl214 = shl i32 4, %41
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg, align 4
  %and217 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.else221, label %if.then219

if.then219:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #15
  %conv210 = zext i8 %39 to i16
  %shl211 = shl nuw i16 %conv210, 8
  %conv207 = zext i8 %37 to i16
  %or = or i16 %shl211, %conv207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %44 = tail call i16 @llvm.bswap.i16(i16 %or) #13
  %add.ptr8.i624 = getelementptr i8, ptr %1, i32 %shl214
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i624, i16 %44) #13, !srcloc !213
  br label %if.end254

if.else221:                                       ; preds = %do.body205
  %and224 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %do.body247, label %do.body227

do.body227:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !608
  tail call void @arm_heavy_mb() #13
  %add.ptr234 = getelementptr i8, ptr %1, i32 %shl214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr234, i8 %37) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !609
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_shift50, align 4
  %shl241 = shl nuw i32 1, %46
  %add242 = add i32 %shl241, %shl214
  %add.ptr243 = getelementptr i8, ptr %1, i32 %add242
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr243, i8 %39) #13, !srcloc !196
  br label %if.end254

do.body247:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #13, !srcloc !610
  unreachable

if.end254:                                        ; preds = %do.body227, %if.then219
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr, align 64
  %arrayidx260 = getelementptr i8, ptr %48, i32 2
  %49 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx260, align 1
  %arrayidx263 = getelementptr i8, ptr %48, i32 3
  %51 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx263, align 1
  %53 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %io_shift50, align 4
  %shl269 = shl i32 6, %54
  %55 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfg, align 4
  %and272 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %if.else276, label %if.then274

if.then274:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  %conv264 = zext i8 %52 to i16
  %shl265 = shl nuw i16 %conv264, 8
  %conv261 = zext i8 %50 to i16
  %or266 = or i16 %shl265, %conv261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %57 = tail call i16 @llvm.bswap.i16(i16 %or266) #13
  %add.ptr8.i625 = getelementptr i8, ptr %1, i32 %shl269
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i625, i16 %57) #13, !srcloc !213
  br label %if.end309

if.else276:                                       ; preds = %if.end254
  %and279 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %do.body302, label %do.body282

do.body282:                                       ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !611
  tail call void @arm_heavy_mb() #13
  %add.ptr289 = getelementptr i8, ptr %1, i32 %shl269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr289, i8 %50) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !612
  tail call void @arm_heavy_mb() #13
  %58 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_shift50, align 4
  %shl296 = shl nuw i32 1, %59
  %add297 = add i32 %shl296, %shl269
  %add.ptr298 = getelementptr i8, ptr %1, i32 %add297
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr298, i8 %52) #13, !srcloc !196
  br label %if.end309

do.body302:                                       ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #13, !srcloc !613
  unreachable

if.end309:                                        ; preds = %do.body282, %if.then274
  %60 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr, align 64
  %arrayidx315 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx315, align 1
  %arrayidx318 = getelementptr i8, ptr %61, i32 5
  %64 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx318, align 1
  %66 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_shift50, align 4
  %shl324 = shl i32 8, %67
  %68 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cfg, align 4
  %and327 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %if.else331, label %if.then329

if.then329:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #15
  %conv319 = zext i8 %65 to i16
  %shl320 = shl nuw i16 %conv319, 8
  %conv316 = zext i8 %63 to i16
  %or321 = or i16 %shl320, %conv316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %70 = tail call i16 @llvm.bswap.i16(i16 %or321) #13
  %add.ptr8.i626 = getelementptr i8, ptr %1, i32 %shl324
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i626, i16 %70) #13, !srcloc !213
  br label %if.end364

if.else331:                                       ; preds = %if.end309
  %and334 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334)
  %tobool335.not = icmp eq i32 %and334, 0
  br i1 %tobool335.not, label %do.body357, label %do.body337

do.body337:                                       ; preds = %if.else331
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !614
  tail call void @arm_heavy_mb() #13
  %add.ptr344 = getelementptr i8, ptr %1, i32 %shl324
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr344, i8 %63) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !615
  tail call void @arm_heavy_mb() #13
  %71 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_shift50, align 4
  %shl351 = shl nuw i32 1, %72
  %add352 = add i32 %shl351, %shl324
  %add.ptr353 = getelementptr i8, ptr %1, i32 %add352
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr353, i8 %65) #13, !srcloc !196
  br label %if.end364

do.body357:                                       ; preds = %if.else331
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #13, !srcloc !616
  unreachable

if.end364:                                        ; preds = %do.body337, %if.then329
  %version = getelementptr i8, ptr %dev, i32 2340
  %73 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %74)
  %cmp = icmp sgt i32 %74, 111
  %spec.select = select i1 %cmp, i32 177, i32 49
  %75 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cfg, align 4
  %and376 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %do.body386, label %do.body379

do.body379:                                       ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !617
  tail call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_shift50, align 4
  %shl383 = shl i32 12, %78
  %add.ptr384 = getelementptr i8, ptr %1, i32 %shl383
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr384, i32 512) #13, !srcloc !211
  br label %do.body436

do.body386:                                       ; preds = %if.end364
  %79 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %io_shift50, align 4
  %shl390 = shl i32 14, %80
  %and393 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393)
  %tobool394.not = icmp eq i32 %and393, 0
  br i1 %tobool394.not, label %if.else397, label %if.then395

if.then395:                                       ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i627 = getelementptr i8, ptr %1, i32 %shl390
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i627, i16 512) #13, !srcloc !213
  br label %do.body436

if.else397:                                       ; preds = %do.body386
  %and400 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and400)
  %tobool401.not = icmp eq i32 %and400, 0
  br i1 %tobool401.not, label %do.body423, label %do.body403

do.body403:                                       ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !618
  tail call void @arm_heavy_mb() #13
  %add.ptr410 = getelementptr i8, ptr %1, i32 %shl390
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr410, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !619
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_shift50, align 4
  %shl417 = shl nuw i32 1, %82
  %add418 = add i32 %shl417, %shl390
  %add.ptr419 = getelementptr i8, ptr %1, i32 %add418
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr419, i8 0) #13, !srcloc !196
  br label %do.body436

do.body423:                                       ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #13, !srcloc !620
  unreachable

do.body436:                                       ; preds = %do.body403, %if.then395, %do.body379
  %83 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cfg, align 4
  %and439 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and439)
  %tobool440.not = icmp eq i32 %and439, 0
  br i1 %tobool440.not, label %do.body450, label %do.body442

do.body442:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !621
  tail call void @arm_heavy_mb() #13
  %conv445 = trunc i32 %spec.select to i8
  %85 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_shift50, align 4
  %shl447 = shl i32 13, %86
  %add.ptr448 = getelementptr i8, ptr %1, i32 %shl447
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr448, i8 %conv445) #13, !srcloc !196
  br label %do.end500

do.body450:                                       ; preds = %do.body436
  %and458 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and458)
  %tobool459.not = icmp eq i32 %and458, 0
  br i1 %tobool459.not, label %do.body488, label %if.then460

if.then460:                                       ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %io_shift50 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %io_shift50, align 4
  %shl455 = shl i32 12, %88
  %mask.0.tr = trunc i32 %spec.select to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i628 = getelementptr i8, ptr %1, i32 %shl455
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i628, i16 %mask.0.tr) #13, !srcloc !213
  br label %do.end500

do.body488:                                       ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 353, 0\0A.popsection", ""() #13, !srcloc !622
  unreachable

do.end500:                                        ; preds = %if.then460, %do.body442
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_10bt_check_media(ptr noundef %dev, i32 noundef %init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body3, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !623
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %7 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %8
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !211
  br label %do.end44

do.body3:                                         ; preds = %entry
  %io_shift4 = getelementptr i8, ptr %dev, i32 2512
  %9 = ptrtoint ptr %io_shift4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_shift4, align 4
  %shl5 = shl i32 14, %10
  %and8 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.end44

if.else11:                                        ; preds = %do.body3
  %and14 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body33, label %do.body17

do.body17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !624
  tail call void @arm_heavy_mb() #13
  %add.ptr22 = getelementptr i8, ptr %1, i32 %shl5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !625
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %io_shift4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_shift4, align 4
  %shl28 = shl nuw i32 1, %12
  %add = add i32 %shl28, %shl5
  %add.ptr29 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 0) #13, !srcloc !196
  br label %do.end44

do.body33:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1165, 0\0A.popsection", ""() #13, !srcloc !626
  unreachable

do.end44:                                         ; preds = %do.body17, %if.then10, %do.body2
  %io_shift46 = getelementptr i8, ptr %dev, i32 2512
  %13 = ptrtoint ptr %io_shift46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift46, align 4
  %shl47 = shl i32 2, %14
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg, align 4
  %and50 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr53 = getelementptr i8, ptr %1, i32 %shl47
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr53) #13, !srcloc !205
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !627
  %conv57 = zext i16 %18 to i32
  br label %cond.end93

cond.false:                                       ; preds = %do.end44
  %and60 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body85, label %cond.true62

cond.true62:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr67 = getelementptr i8, ptr %1, i32 %shl47
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr67) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  %20 = ptrtoint ptr %io_shift46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift46, align 4
  %shl75 = shl nuw i32 1, %21
  %add76 = add i32 %shl75, %shl47
  %add.ptr77 = getelementptr i8, ptr %1, i32 %add76
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr77) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  %conv81 = zext i8 %22 to i32
  %shl82 = shl nuw nsw i32 %conv81, 8
  br label %cond.end93

do.body85:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1166, 0\0A.popsection", ""() #13, !srcloc !630
  unreachable

cond.end93:                                       ; preds = %cond.true62, %cond.true
  %cond94 = phi i32 [ %conv57, %cond.true ], [ %shl82, %cond.true62 ]
  %and95 = and i32 %cond94, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg, align 4
  %and101 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body111, label %do.body104

do.body104:                                       ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !631
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %io_shift46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_shift46, align 4
  %shl108 = shl i32 12, %26
  %add.ptr109 = getelementptr i8, ptr %1, i32 %shl108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 512) #13, !srcloc !211
  br label %do.end160

do.body111:                                       ; preds = %cond.end93
  %27 = ptrtoint ptr %io_shift46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_shift46, align 4
  %shl115 = shl i32 14, %28
  %and118 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else122, label %if.then120

if.then120:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i219 = getelementptr i8, ptr %1, i32 %shl115
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i219, i16 512) #13, !srcloc !213
  br label %do.end160

if.else122:                                       ; preds = %do.body111
  %and125 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body148, label %do.body128

do.body128:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  tail call void @arm_heavy_mb() #13
  %add.ptr135 = getelementptr i8, ptr %1, i32 %shl115
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr135, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !633
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %io_shift46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_shift46, align 4
  %shl142 = shl nuw i32 1, %30
  %add143 = add i32 %shl142, %shl115
  %add.ptr144 = getelementptr i8, ptr %1, i32 %add143
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr144, i8 0) #13, !srcloc !196
  br label %do.end160

do.body148:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1167, 0\0A.popsection", ""() #13, !srcloc !634
  unreachable

do.end160:                                        ; preds = %do.body128, %if.then120, %do.body104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init)
  %tobool161.not = icmp eq i32 %init, 0
  %31 = xor i1 %tobool.not.i, %tobool96.not
  %or.cond = select i1 %tobool161.not, i1 %31, i1 false
  br i1 %or.cond, label %do.end160.if.end174_crit_edge, label %if.then163

do.end160.if.end174_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then163:                                       ; preds = %do.end160
  br i1 %tobool96.not, label %if.then165, label %if.else166

if.then165:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  br label %if.end167

if.else166:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_carrier_on(ptr noundef %dev) #13
  br label %if.end167

if.end167:                                        ; preds = %if.else166, %if.then165
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and168 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end167.if.end174_crit_edge, label %if.then170

if.end167.if.end174_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  %cond172 = select i1 %tobool96.not, ptr @.str.50, ptr @.str.49
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond172) #16
  br label %if.end174

if.end174:                                        ; preds = %if.then170, %if.end167.if.end174_crit_edge, %do.end160.if.end174_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_ethtool_getdrvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smc_ethtool_getmsglevel(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smc_ethtool_setmsglevel(ptr nocapture noundef writeonly %dev, i32 noundef %level) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ethtool_nwayreset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %mii = getelementptr i8, ptr %dev, i32 2372
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smc_ethtool_geteeprom_len(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ethtool_geteeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.not = icmp eq i32 %1, 0
  br i1 %cmp40.not, label %entry.cleanup22_crit_edge, label %for.body.lr.ph

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

for.body.lr.ph:                                   ; preds = %entry
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %base.i = getelementptr i8, ptr %dev, i32 2504
  %lock.i = getelementptr i8, ptr %dev, i32 2456
  %cfg.i = getelementptr i8, ptr %dev, i32 2520
  %io_shift.i = getelementptr i8, ptr %dev, i32 2512
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %add21, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1, align 4
  %add = add i32 %3, %i.041
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add)
  %cmp2 = icmp sgt i32 %add, 70
  br i1 %cmp2, label %for.body.cleanup22_crit_edge, label %if.end

for.body.cleanup22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

if.end:                                           ; preds = %for.body
  %4 = lshr i32 %add, 1
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !635
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_shift.i, align 4
  %shl.i = shl i32 12, %10
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #13, !srcloc !211
  br label %do.body44.i

do.body2.i:                                       ; preds = %if.end
  %11 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_shift.i, align 4
  %shl4.i = shl i32 14, %12
  %and7.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i.i = getelementptr i8, ptr %6, i32 %shl4.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 512) #13, !srcloc !213
  br label %do.body44.i

if.else10.i:                                      ; preds = %do.body2.i
  %and13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body32.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !636
  tail call void @arm_heavy_mb() #13
  %add.ptr21.i = getelementptr i8, ptr %6, i32 %shl4.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift.i, align 4
  %shl27.i = shl nuw i32 1, %14
  %add.i = add i32 %shl27.i, %shl4.i
  %add.ptr28.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 0) #13, !srcloc !196
  br label %do.body44.i

do.body32.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1659, 0\0A.popsection", ""() #13, !srcloc !638
  unreachable

do.body44.i:                                      ; preds = %do.body16.i, %if.then9.i, %do.body1.i
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg.i, align 4
  %and47.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.body59.i, label %do.body50.i

do.body50.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !639
  tail call void @arm_heavy_mb() #13
  %17 = or i16 %conv, 8192
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #13
  %19 = zext i16 %18 to i32
  %20 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift.i, align 4
  %shl56.i = shl i32 4, %21
  %add.ptr57.i = getelementptr i8, ptr %6, i32 %shl56.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %19) #13, !srcloc !211
  br label %do.body111.i

do.body59.i:                                      ; preds = %do.body44.i
  %22 = or i16 %conv, 8192
  %23 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_shift.i, align 4
  %shl65.i = shl i32 6, %24
  %and68.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.else72.i, label %if.then70.i

if.then70.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %25 = tail call i16 @llvm.bswap.i16(i16 %22) #13
  %add.ptr8.i1.i = getelementptr i8, ptr %6, i32 %shl65.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1.i, i16 %25) #13, !srcloc !213
  br label %do.body111.i

if.else72.i:                                      ; preds = %do.body59.i
  %and75.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body98.i, label %do.body78.i

do.body78.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  tail call void @arm_heavy_mb() #13
  %conv84.i = trunc i32 %4 to i8
  %add.ptr85.i = getelementptr i8, ptr %6, i32 %shl65.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr85.i, i8 %conv84.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !641
  tail call void @arm_heavy_mb() #13
  %shr89.i = lshr i16 %22, 8
  %conv90.i = trunc i16 %shr89.i to i8
  %26 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift.i, align 4
  %shl92.i = shl nuw i32 1, %27
  %add93.i = add i32 %shl92.i, %shl65.i
  %add.ptr94.i = getelementptr i8, ptr %6, i32 %add93.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr94.i, i8 %conv90.i) #13, !srcloc !196
  br label %do.body111.i

do.body98.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1660, 0\0A.popsection", ""() #13, !srcloc !642
  unreachable

do.body111.i:                                     ; preds = %do.body78.i, %if.then70.i, %do.body50.i
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg.i, align 4
  %and114.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %do.body124.i, label %do.body117.i

do.body117.i:                                     ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !643
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_shift.i, align 4
  %shl121.i = shl i32 12, %31
  %add.ptr122.i = getelementptr i8, ptr %6, i32 %shl121.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122.i, i32 256) #13, !srcloc !211
  br label %do.body174.i

do.body124.i:                                     ; preds = %do.body111.i
  %32 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_shift.i, align 4
  %shl128.i = shl i32 14, %33
  %and131.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %if.else135.i, label %if.then133.i

if.then133.i:                                     ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i2.i = getelementptr i8, ptr %6, i32 %shl128.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i2.i, i16 256) #13, !srcloc !213
  br label %do.body174.i

if.else135.i:                                     ; preds = %do.body124.i
  %and138.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %do.body161.i, label %do.body141.i

do.body141.i:                                     ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !644
  tail call void @arm_heavy_mb() #13
  %add.ptr148.i = getelementptr i8, ptr %6, i32 %shl128.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr148.i, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_shift.i, align 4
  %shl155.i = shl nuw i32 1, %35
  %add156.i = add i32 %shl155.i, %shl128.i
  %add.ptr157.i = getelementptr i8, ptr %6, i32 %add156.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr157.i, i8 0) #13, !srcloc !196
  br label %do.body174.i

do.body161.i:                                     ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1662, 0\0A.popsection", ""() #13, !srcloc !646
  unreachable

do.body174.i:                                     ; preds = %do.body141.i, %if.then133.i, %do.body117.i
  %36 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg.i, align 4
  %and177.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %do.body187.i, label %do.body180.i

do.body180.i:                                     ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !647
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift.i, align 4
  %shl184.i = shl i32 8, %39
  %add.ptr185.i = getelementptr i8, ptr %6, i32 %shl184.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185.i, i32 65535) #13, !srcloc !211
  br label %do.end236.i

do.body187.i:                                     ; preds = %do.body174.i
  %40 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_shift.i, align 4
  %shl191.i = shl i32 10, %41
  %and194.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  br i1 %tobool195.not.i, label %if.else198.i, label %if.then196.i

if.then196.i:                                     ; preds = %do.body187.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i3.i = getelementptr i8, ptr %6, i32 %shl191.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i3.i, i16 -1) #13, !srcloc !213
  br label %do.end236.i

if.else198.i:                                     ; preds = %do.body187.i
  %and201.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201.i)
  %tobool202.not.i = icmp eq i32 %and201.i, 0
  br i1 %tobool202.not.i, label %do.body224.i, label %do.body204.i

do.body204.i:                                     ; preds = %if.else198.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !648
  tail call void @arm_heavy_mb() #13
  %add.ptr211.i = getelementptr i8, ptr %6, i32 %shl191.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr211.i, i8 -1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !649
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_shift.i, align 4
  %shl218.i = shl nuw i32 1, %43
  %add219.i = add i32 %shl218.i, %shl191.i
  %add.ptr220.i = getelementptr i8, ptr %6, i32 %add219.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr220.i, i8 -1) #13, !srcloc !196
  br label %do.end236.i

do.body224.i:                                     ; preds = %if.else198.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1663, 0\0A.popsection", ""() #13, !srcloc !650
  unreachable

do.end236.i:                                      ; preds = %do.body204.i, %if.then196.i, %do.body180.i
  %44 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_shift.i, align 4
  %shl239.i = shl i32 12, %45
  %46 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg.i, align 4
  %and242.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242.i)
  %tobool243.not.i = icmp eq i32 %and242.i, 0
  br i1 %tobool243.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end236.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr245.i = getelementptr i8, ptr %6, i32 %shl239.i
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr245.i) #13, !srcloc !205
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !651
  br label %cond.end285.i

cond.false.i:                                     ; preds = %do.end236.i
  %and252.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252.i)
  %tobool253.not.i = icmp eq i32 %and252.i, 0
  br i1 %tobool253.not.i, label %do.body278.i, label %cond.true254.i

cond.true254.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr259.i = getelementptr i8, ptr %6, i32 %shl239.i
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr259.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !652
  %conv263.i = zext i8 %50 to i16
  %51 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io_shift.i, align 4
  %shl267.i = shl nuw i32 1, %52
  %add268.i = add i32 %shl267.i, %shl239.i
  %add.ptr269.i = getelementptr i8, ptr %6, i32 %add268.i
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr269.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !653
  %conv273.i = zext i8 %53 to i16
  %shl274.i = shl nuw i16 %conv273.i, 8
  %or275.i = or i16 %shl274.i, %conv263.i
  br label %cond.end285.i

do.body278.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1664, 0\0A.popsection", ""() #13, !srcloc !654
  unreachable

cond.end285.i:                                    ; preds = %cond.true254.i, %cond.true.i
  %cond286.i = phi i16 [ %49, %cond.true.i ], [ %or275.i, %cond.true254.i ]
  %54 = or i16 %cond286.i, 6
  %55 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_shift.i, align 4
  %shl294.i = shl i32 12, %56
  %57 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfg.i, align 4
  %and297.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297.i)
  %tobool298.not.i = icmp eq i32 %and297.i, 0
  br i1 %tobool298.not.i, label %if.else301.i, label %if.then299.i

if.then299.i:                                     ; preds = %cond.end285.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %59 = tail call i16 @llvm.bswap.i16(i16 %54) #13
  %add.ptr8.i4.i = getelementptr i8, ptr %6, i32 %shl294.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i4.i, i16 %59) #13, !srcloc !213
  br label %do.body337.i.preheader

do.body337.i.preheader:                           ; preds = %do.body307.i, %if.then299.i
  br label %do.body337.i

if.else301.i:                                     ; preds = %cond.end285.i
  %and304.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304.i)
  %tobool305.not.i = icmp eq i32 %and304.i, 0
  br i1 %tobool305.not.i, label %do.body327.i, label %do.body307.i

do.body307.i:                                     ; preds = %if.else301.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !655
  tail call void @arm_heavy_mb() #13
  %conv313.i = trunc i16 %54 to i8
  %add.ptr314.i = getelementptr i8, ptr %6, i32 %shl294.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr314.i, i8 %conv313.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !656
  tail call void @arm_heavy_mb() #13
  %shr318.i = lshr i16 %cond286.i, 8
  %conv319.i = trunc i16 %shr318.i to i8
  %60 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_shift.i, align 4
  %shl321.i = shl nuw i32 1, %61
  %add322.i = add i32 %shl321.i, %shl294.i
  %add.ptr323.i = getelementptr i8, ptr %6, i32 %add322.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr323.i, i8 %conv319.i) #13, !srcloc !196
  br label %do.body337.i.preheader

do.body327.i:                                     ; preds = %if.else301.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1665, 0\0A.popsection", ""() #13, !srcloc !657
  unreachable

do.body337.i:                                     ; preds = %cond.end393.i.do.body337.i_crit_edge, %do.body337.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #13
  %63 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_shift.i, align 4
  %shl341.i = shl i32 12, %64
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cfg.i, align 4
  %and345.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345.i)
  %tobool346.not.i = icmp eq i32 %and345.i, 0
  br i1 %tobool346.not.i, label %cond.false355.i, label %cond.true347.i

cond.true347.i:                                   ; preds = %do.body337.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr350.i = getelementptr i8, ptr %6, i32 %shl341.i
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr350.i) #13, !srcloc !205
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  %conv354.i = zext i16 %68 to i32
  br label %cond.end393.i

cond.false355.i:                                  ; preds = %do.body337.i
  %and358.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358.i)
  %tobool359.not.i = icmp eq i32 %and358.i, 0
  br i1 %tobool359.not.i, label %do.body384.i, label %cond.true360.i

cond.true360.i:                                   ; preds = %cond.false355.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr365.i = getelementptr i8, ptr %6, i32 %shl341.i
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr365.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !659
  %conv369.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_shift.i, align 4
  %shl373.i = shl nuw i32 1, %71
  %add374.i = add i32 %shl373.i, %shl341.i
  %add.ptr375.i = getelementptr i8, ptr %6, i32 %add374.i
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr375.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  br label %cond.end393.i

do.body384.i:                                     ; preds = %cond.false355.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1669, 0\0A.popsection", ""() #13, !srcloc !661
  unreachable

cond.end393.i:                                    ; preds = %cond.true360.i, %cond.true347.i
  %cond394.i = phi i32 [ %conv354.i, %cond.true347.i ], [ %conv369.i, %cond.true360.i ]
  %and395.i = and i32 %cond394.i, 2
  %tobool396.not.i = icmp eq i32 %and395.i, 0
  br i1 %tobool396.not.i, label %do.end397.i, label %cond.end393.i.do.body337.i_crit_edge

cond.end393.i.do.body337.i_crit_edge:             ; preds = %cond.end393.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body337.i

do.end397.i:                                      ; preds = %cond.end393.i
  %73 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_shift.i, align 4
  %shl400.i = shl i32 10, %74
  %75 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cfg.i, align 4
  %and404.i = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404.i)
  %tobool405.not.i = icmp eq i32 %and404.i, 0
  br i1 %tobool405.not.i, label %cond.false414.i, label %cond.true406.i

cond.true406.i:                                   ; preds = %do.end397.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr409.i = getelementptr i8, ptr %6, i32 %shl400.i
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr409.i) #13, !srcloc !205
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !662
  %extract.t = trunc i16 %78 to i8
  %extract = lshr i16 %78, 8
  %extract.t37 = trunc i16 %extract to i8
  br label %cond.end452.i

cond.false414.i:                                  ; preds = %do.end397.i
  %and417.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and417.i)
  %tobool418.not.i = icmp eq i32 %and417.i, 0
  br i1 %tobool418.not.i, label %do.body443.i, label %cond.true419.i

cond.true419.i:                                   ; preds = %cond.false414.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr424.i = getelementptr i8, ptr %6, i32 %shl400.i
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr424.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !663
  %80 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %io_shift.i, align 4
  %shl432.i = shl nuw i32 1, %81
  %add433.i = add i32 %shl432.i, %shl400.i
  %add.ptr434.i = getelementptr i8, ptr %6, i32 %add433.i
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr434.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !664
  br label %cond.end452.i

do.body443.i:                                     ; preds = %cond.false414.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1671, 0\0A.popsection", ""() #13, !srcloc !665
  unreachable

cond.end452.i:                                    ; preds = %cond.true419.i, %cond.true406.i
  %cond453.i.off0 = phi i8 [ %extract.t, %cond.true406.i ], [ %79, %cond.true419.i ]
  %cond453.i.off8 = phi i8 [ %extract.t37, %cond.true406.i ], [ %82, %cond.true419.i ]
  %83 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_shift.i, align 4
  %shl460.i = shl i32 12, %84
  %85 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cfg.i, align 4
  %and463.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and463.i)
  %tobool464.not.i = icmp eq i32 %and463.i, 0
  br i1 %tobool464.not.i, label %if.else467.i, label %if.then465.i

if.then465.i:                                     ; preds = %cond.end452.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %87 = tail call i16 @llvm.bswap.i16(i16 %cond286.i) #13
  %add.ptr8.i5.i = getelementptr i8, ptr %6, i32 %shl460.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i5.i, i16 %87) #13, !srcloc !213
  br label %if.end500.i

if.else467.i:                                     ; preds = %cond.end452.i
  %and470.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and470.i)
  %tobool471.not.i = icmp eq i32 %and470.i, 0
  br i1 %tobool471.not.i, label %do.body493.i, label %do.body473.i

do.body473.i:                                     ; preds = %if.else467.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !666
  tail call void @arm_heavy_mb() #13
  %conv479.i = trunc i16 %cond286.i to i8
  %add.ptr480.i = getelementptr i8, ptr %6, i32 %shl460.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr480.i, i8 %conv479.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !667
  tail call void @arm_heavy_mb() #13
  %shr484.i = lshr i16 %cond286.i, 8
  %conv485.i = trunc i16 %shr484.i to i8
  %88 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %io_shift.i, align 4
  %shl487.i = shl nuw i32 1, %89
  %add488.i = add i32 %shl487.i, %shl460.i
  %add.ptr489.i = getelementptr i8, ptr %6, i32 %add488.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr489.i, i8 %conv485.i) #13, !srcloc !196
  br label %if.end500.i

do.body493.i:                                     ; preds = %if.else467.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1673, 0\0A.popsection", ""() #13, !srcloc !668
  unreachable

if.end500.i:                                      ; preds = %do.body473.i, %if.then465.i
  %90 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cfg.i, align 4
  %and506.i = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and506.i)
  %tobool507.not.i = icmp eq i32 %and506.i, 0
  br i1 %tobool507.not.i, label %do.body516.i, label %do.body509.i

do.body509.i:                                     ; preds = %if.end500.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !669
  tail call void @arm_heavy_mb() #13
  %92 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %io_shift.i, align 4
  %shl513.i = shl i32 12, %93
  %add.ptr514.i = getelementptr i8, ptr %6, i32 %shl513.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr514.i, i32 512) #13, !srcloc !211
  br label %for.inc

do.body516.i:                                     ; preds = %if.end500.i
  %94 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_shift.i, align 4
  %shl520.i = shl i32 14, %95
  %and523.i = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523.i)
  %tobool524.not.i = icmp eq i32 %and523.i, 0
  br i1 %tobool524.not.i, label %if.else527.i, label %if.then525.i

if.then525.i:                                     ; preds = %do.body516.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i6.i = getelementptr i8, ptr %6, i32 %shl520.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i6.i, i16 512) #13, !srcloc !213
  br label %for.inc

if.else527.i:                                     ; preds = %do.body516.i
  %and530.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and530.i)
  %tobool531.not.i = icmp eq i32 %and530.i, 0
  br i1 %tobool531.not.i, label %do.body553.i, label %do.body533.i

do.body533.i:                                     ; preds = %if.else527.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !670
  tail call void @arm_heavy_mb() #13
  %add.ptr540.i = getelementptr i8, ptr %6, i32 %shl520.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr540.i, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !671
  tail call void @arm_heavy_mb() #13
  %96 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_shift.i, align 4
  %shl547.i = shl nuw i32 1, %97
  %add548.i = add i32 %shl547.i, %shl520.i
  %add.ptr549.i = getelementptr i8, ptr %6, i32 %add548.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr549.i, i8 0) #13, !srcloc !196
  br label %for.inc

do.body553.i:                                     ; preds = %if.else527.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1674, 0\0A.popsection", ""() #13, !srcloc !672
  unreachable

for.inc:                                          ; preds = %do.body533.i, %if.then525.i, %do.body509.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  %arrayidx = getelementptr i8, ptr %data, i32 %i.041
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %cond453.i.off8, ptr %arrayidx, align 1
  %add17 = or i32 %i.041, 1
  %arrayidx18 = getelementptr i8, ptr %data, i32 %add17
  %99 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %cond453.i.off0, ptr %arrayidx18, align 1
  %add21 = add i32 %i.041, 2
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %add21, %101
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup22_crit_edge

for.inc.cleanup22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup22:                                        ; preds = %for.inc.cleanup22_crit_edge, %for.body.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ethtool_seteeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.cleanup19_crit_edge, label %for.body.lr.ph

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %entry
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %base.i = getelementptr i8, ptr %dev, i32 2504
  %lock.i = getelementptr i8, ptr %dev, i32 2456
  %cfg.i = getelementptr i8, ptr %dev, i32 2520
  %io_shift.i = getelementptr i8, ptr %dev, i32 2512
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %add18, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1, align 4
  %add = add i32 %3, %i.034
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add)
  %cmp2 = icmp sgt i32 %add, 70
  br i1 %cmp2, label %for.body.cleanup19_crit_edge, label %if.end

for.body.cleanup19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr i8, ptr %data, i32 %i.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i16
  %shl = shl nuw i16 %conv, 8
  %add3 = or i32 %i.034, 1
  %arrayidx4 = getelementptr i8, ptr %data, i32 %add3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i16
  %or = or i16 %shl, %conv5
  %8 = lshr i32 %add, 1
  %conv10 = trunc i32 %8 to i16
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg.i, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !673
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift.i, align 4
  %shl.i = shl i32 12, %14
  %add.ptr.i = getelementptr i8, ptr %10, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #13, !srcloc !211
  br label %do.body44.i

do.body2.i:                                       ; preds = %if.end
  %15 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_shift.i, align 4
  %shl4.i = shl i32 14, %16
  %and7.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i.i = getelementptr i8, ptr %10, i32 %shl4.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 256) #13, !srcloc !213
  br label %do.body44.i

if.else10.i:                                      ; preds = %do.body2.i
  %and13.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body32.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !674
  tail call void @arm_heavy_mb() #13
  %add.ptr21.i = getelementptr i8, ptr %10, i32 %shl4.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !675
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift.i, align 4
  %shl27.i = shl nuw i32 1, %18
  %add.i = add i32 %shl27.i, %shl4.i
  %add.ptr28.i = getelementptr i8, ptr %10, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 0) #13, !srcloc !196
  br label %do.body44.i

do.body32.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1631, 0\0A.popsection", ""() #13, !srcloc !676
  unreachable

do.body44.i:                                      ; preds = %do.body16.i, %if.then9.i, %do.body1.i
  %19 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfg.i, align 4
  %and47.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.body59.i, label %do.body50.i

do.body50.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !677
  tail call void @arm_heavy_mb() #13
  %21 = tail call i16 @llvm.bswap.i16(i16 %or) #13
  %22 = zext i16 %21 to i32
  %23 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_shift.i, align 4
  %shl56.i = shl i32 8, %24
  %add.ptr57.i = getelementptr i8, ptr %10, i32 %shl56.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %22) #13, !srcloc !211
  br label %do.body110.i

do.body59.i:                                      ; preds = %do.body44.i
  %25 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_shift.i, align 4
  %shl64.i = shl i32 10, %26
  %and67.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.else71.i, label %if.then69.i

if.then69.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %27 = tail call i16 @llvm.bswap.i16(i16 %or) #13
  %add.ptr8.i1.i = getelementptr i8, ptr %10, i32 %shl64.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1.i, i16 %27) #13, !srcloc !213
  br label %do.body110.i

if.else71.i:                                      ; preds = %do.body59.i
  %and74.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %do.body97.i, label %do.body77.i

do.body77.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !678
  tail call void @arm_heavy_mb() #13
  %add.ptr84.i = getelementptr i8, ptr %10, i32 %shl64.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84.i, i8 %7) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !679
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_shift.i, align 4
  %shl91.i = shl nuw i32 1, %29
  %add92.i = add i32 %shl91.i, %shl64.i
  %add.ptr93.i = getelementptr i8, ptr %10, i32 %add92.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93.i, i8 %5) #13, !srcloc !196
  br label %do.body110.i

do.body97.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1632, 0\0A.popsection", ""() #13, !srcloc !680
  unreachable

do.body110.i:                                     ; preds = %do.body77.i, %if.then69.i, %do.body50.i
  %30 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg.i, align 4
  %and113.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %do.body123.i, label %do.body116.i

do.body116.i:                                     ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !681
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_shift.i, align 4
  %shl120.i = shl i32 12, %33
  %add.ptr121.i = getelementptr i8, ptr %10, i32 %shl120.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121.i, i32 512) #13, !srcloc !211
  br label %do.body173.i

do.body123.i:                                     ; preds = %do.body110.i
  %34 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_shift.i, align 4
  %shl127.i = shl i32 14, %35
  %and130.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.else134.i, label %if.then132.i

if.then132.i:                                     ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i2.i = getelementptr i8, ptr %10, i32 %shl127.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i2.i, i16 512) #13, !srcloc !213
  br label %do.body173.i

if.else134.i:                                     ; preds = %do.body123.i
  %and137.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %do.body160.i, label %do.body140.i

do.body140.i:                                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !682
  tail call void @arm_heavy_mb() #13
  %add.ptr147.i = getelementptr i8, ptr %10, i32 %shl127.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr147.i, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !683
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_shift.i, align 4
  %shl154.i = shl nuw i32 1, %37
  %add155.i = add i32 %shl154.i, %shl127.i
  %add.ptr156.i = getelementptr i8, ptr %10, i32 %add155.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr156.i, i8 0) #13, !srcloc !196
  br label %do.body173.i

do.body160.i:                                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1634, 0\0A.popsection", ""() #13, !srcloc !684
  unreachable

do.body173.i:                                     ; preds = %do.body140.i, %if.then132.i, %do.body116.i
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfg.i, align 4
  %and176.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %do.body188.i, label %do.body179.i

do.body179.i:                                     ; preds = %do.body173.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !685
  tail call void @arm_heavy_mb() #13
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv10) #13
  %41 = zext i16 %40 to i32
  %42 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_shift.i, align 4
  %shl185.i = shl i32 4, %43
  %add.ptr186.i = getelementptr i8, ptr %10, i32 %shl185.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186.i, i32 %41) #13, !srcloc !211
  br label %do.body239.i

do.body188.i:                                     ; preds = %do.body173.i
  %44 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_shift.i, align 4
  %shl193.i = shl i32 6, %45
  %and196.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %if.else200.i, label %if.then198.i

if.then198.i:                                     ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv10) #13
  %add.ptr8.i3.i = getelementptr i8, ptr %10, i32 %shl193.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i3.i, i16 %46) #13, !srcloc !213
  br label %do.body239.i

if.else200.i:                                     ; preds = %do.body188.i
  %and203.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %do.body226.i, label %do.body206.i

do.body206.i:                                     ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !686
  tail call void @arm_heavy_mb() #13
  %conv212.i = trunc i32 %8 to i8
  %add.ptr213.i = getelementptr i8, ptr %10, i32 %shl193.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr213.i, i8 %conv212.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !687
  tail call void @arm_heavy_mb() #13
  %47 = lshr i32 %add, 9
  %conv218.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_shift.i, align 4
  %shl220.i = shl nuw i32 1, %49
  %add221.i = add i32 %shl220.i, %shl193.i
  %add.ptr222.i = getelementptr i8, ptr %10, i32 %add221.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr222.i, i8 %conv218.i) #13, !srcloc !196
  br label %do.body239.i

do.body226.i:                                     ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1635, 0\0A.popsection", ""() #13, !srcloc !688
  unreachable

do.body239.i:                                     ; preds = %do.body206.i, %if.then198.i, %do.body179.i
  %50 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfg.i, align 4
  %and242.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242.i)
  %tobool243.not.i = icmp eq i32 %and242.i, 0
  br i1 %tobool243.not.i, label %do.body252.i, label %do.body245.i

do.body245.i:                                     ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !689
  tail call void @arm_heavy_mb() #13
  %52 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_shift.i, align 4
  %shl249.i = shl i32 12, %53
  %add.ptr250.i = getelementptr i8, ptr %10, i32 %shl249.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr250.i, i32 256) #13, !srcloc !211
  br label %do.end301.i

do.body252.i:                                     ; preds = %do.body239.i
  %54 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_shift.i, align 4
  %shl256.i = shl i32 14, %55
  %and259.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259.i)
  %tobool260.not.i = icmp eq i32 %and259.i, 0
  br i1 %tobool260.not.i, label %if.else263.i, label %if.then261.i

if.then261.i:                                     ; preds = %do.body252.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i4.i = getelementptr i8, ptr %10, i32 %shl256.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i4.i, i16 256) #13, !srcloc !213
  br label %do.end301.i

if.else263.i:                                     ; preds = %do.body252.i
  %and266.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %do.body289.i, label %do.body269.i

do.body269.i:                                     ; preds = %if.else263.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !690
  tail call void @arm_heavy_mb() #13
  %add.ptr276.i = getelementptr i8, ptr %10, i32 %shl256.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr276.i, i8 1) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !691
  tail call void @arm_heavy_mb() #13
  %56 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_shift.i, align 4
  %shl283.i = shl nuw i32 1, %57
  %add284.i = add i32 %shl283.i, %shl256.i
  %add.ptr285.i = getelementptr i8, ptr %10, i32 %add284.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr285.i, i8 0) #13, !srcloc !196
  br label %do.end301.i

do.body289.i:                                     ; preds = %if.else263.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1637, 0\0A.popsection", ""() #13, !srcloc !692
  unreachable

do.end301.i:                                      ; preds = %do.body269.i, %if.then261.i, %do.body245.i
  %58 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_shift.i, align 4
  %shl304.i = shl i32 12, %59
  %60 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cfg.i, align 4
  %and307.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307.i)
  %tobool308.not.i = icmp eq i32 %and307.i, 0
  br i1 %tobool308.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end301.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr310.i = getelementptr i8, ptr %10, i32 %shl304.i
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr310.i) #13, !srcloc !205
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !693
  br label %cond.end349.i

cond.false.i:                                     ; preds = %do.end301.i
  %and317.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317.i)
  %tobool318.not.i = icmp eq i32 %and317.i, 0
  br i1 %tobool318.not.i, label %do.body342.i, label %cond.true319.i

cond.true319.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr324.i = getelementptr i8, ptr %10, i32 %shl304.i
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr324.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !694
  %conv328.i = zext i8 %64 to i16
  %65 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %io_shift.i, align 4
  %shl332.i = shl nuw i32 1, %66
  %add333.i = add i32 %shl332.i, %shl304.i
  %add.ptr334.i = getelementptr i8, ptr %10, i32 %add333.i
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr334.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !695
  %conv338.i = zext i8 %67 to i16
  %shl339.i = shl nuw i16 %conv338.i, 8
  %or.i = or i16 %shl339.i, %conv328.i
  br label %cond.end349.i

do.body342.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !696
  unreachable

cond.end349.i:                                    ; preds = %cond.true319.i, %cond.true.i
  %cond350.i = phi i16 [ %63, %cond.true.i ], [ %or.i, %cond.true319.i ]
  %68 = or i16 %cond350.i, 5
  %69 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_shift.i, align 4
  %shl358.i = shl i32 12, %70
  %71 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg.i, align 4
  %and361.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361.i)
  %tobool362.not.i = icmp eq i32 %and361.i, 0
  br i1 %tobool362.not.i, label %if.else365.i, label %if.then363.i

if.then363.i:                                     ; preds = %cond.end349.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %73 = tail call i16 @llvm.bswap.i16(i16 %68) #13
  %add.ptr8.i5.i = getelementptr i8, ptr %10, i32 %shl358.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i5.i, i16 %73) #13, !srcloc !213
  br label %do.body401.i.preheader

do.body401.i.preheader:                           ; preds = %do.body371.i, %if.then363.i
  br label %do.body401.i

if.else365.i:                                     ; preds = %cond.end349.i
  %and368.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368.i)
  %tobool369.not.i = icmp eq i32 %and368.i, 0
  br i1 %tobool369.not.i, label %do.body391.i, label %do.body371.i

do.body371.i:                                     ; preds = %if.else365.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !697
  tail call void @arm_heavy_mb() #13
  %conv377.i = trunc i16 %68 to i8
  %add.ptr378.i = getelementptr i8, ptr %10, i32 %shl358.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr378.i, i8 %conv377.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !698
  tail call void @arm_heavy_mb() #13
  %shr382.i = lshr i16 %cond350.i, 8
  %conv383.i = trunc i16 %shr382.i to i8
  %74 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_shift.i, align 4
  %shl385.i = shl nuw i32 1, %75
  %add386.i = add i32 %shl385.i, %shl358.i
  %add.ptr387.i = getelementptr i8, ptr %10, i32 %add386.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr387.i, i8 %conv383.i) #13, !srcloc !196
  br label %do.body401.i.preheader

do.body391.i:                                     ; preds = %if.else365.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1639, 0\0A.popsection", ""() #13, !srcloc !699
  unreachable

do.body401.i:                                     ; preds = %cond.end457.i.do.body401.i_crit_edge, %do.body401.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #13
  %77 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_shift.i, align 4
  %shl405.i = shl i32 12, %78
  %79 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cfg.i, align 4
  %and409.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409.i)
  %tobool410.not.i = icmp eq i32 %and409.i, 0
  br i1 %tobool410.not.i, label %cond.false419.i, label %cond.true411.i

cond.true411.i:                                   ; preds = %do.body401.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr414.i = getelementptr i8, ptr %10, i32 %shl405.i
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr414.i) #13, !srcloc !205
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !700
  %conv418.i = zext i16 %82 to i32
  br label %cond.end457.i

cond.false419.i:                                  ; preds = %do.body401.i
  %and422.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and422.i)
  %tobool423.not.i = icmp eq i32 %and422.i, 0
  br i1 %tobool423.not.i, label %do.body448.i, label %cond.true424.i

cond.true424.i:                                   ; preds = %cond.false419.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr429.i = getelementptr i8, ptr %10, i32 %shl405.i
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr429.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !701
  %conv433.i = zext i8 %83 to i32
  %84 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %io_shift.i, align 4
  %shl437.i = shl nuw i32 1, %85
  %add438.i = add i32 %shl437.i, %shl405.i
  %add.ptr439.i = getelementptr i8, ptr %10, i32 %add438.i
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr439.i) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !702
  br label %cond.end457.i

do.body448.i:                                     ; preds = %cond.false419.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1643, 0\0A.popsection", ""() #13, !srcloc !703
  unreachable

cond.end457.i:                                    ; preds = %cond.true424.i, %cond.true411.i
  %cond458.i = phi i32 [ %conv418.i, %cond.true411.i ], [ %conv433.i, %cond.true424.i ]
  %and459.i = and i32 %cond458.i, 1
  %tobool460.not.i = icmp eq i32 %and459.i, 0
  br i1 %tobool460.not.i, label %do.body462.i, label %cond.end457.i.do.body401.i_crit_edge

cond.end457.i.do.body401.i_crit_edge:             ; preds = %cond.end457.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body401.i

do.body462.i:                                     ; preds = %cond.end457.i
  %87 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %io_shift.i, align 4
  %shl467.i = shl i32 12, %88
  %89 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cfg.i, align 4
  %and470.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and470.i)
  %tobool471.not.i = icmp eq i32 %and470.i, 0
  br i1 %tobool471.not.i, label %if.else474.i, label %if.then472.i

if.then472.i:                                     ; preds = %do.body462.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %91 = tail call i16 @llvm.bswap.i16(i16 %cond350.i) #13
  %add.ptr8.i6.i = getelementptr i8, ptr %10, i32 %shl467.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i6.i, i16 %91) #13, !srcloc !213
  br label %if.end507.i

if.else474.i:                                     ; preds = %do.body462.i
  %and477.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and477.i)
  %tobool478.not.i = icmp eq i32 %and477.i, 0
  br i1 %tobool478.not.i, label %do.body500.i, label %do.body480.i

do.body480.i:                                     ; preds = %if.else474.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !704
  tail call void @arm_heavy_mb() #13
  %conv486.i = trunc i16 %cond350.i to i8
  %add.ptr487.i = getelementptr i8, ptr %10, i32 %shl467.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr487.i, i8 %conv486.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !705
  tail call void @arm_heavy_mb() #13
  %shr491.i = lshr i16 %cond350.i, 8
  %conv492.i = trunc i16 %shr491.i to i8
  %92 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %io_shift.i, align 4
  %shl494.i = shl nuw i32 1, %93
  %add495.i = add i32 %shl494.i, %shl467.i
  %add.ptr496.i = getelementptr i8, ptr %10, i32 %add495.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr496.i, i8 %conv492.i) #13, !srcloc !196
  br label %if.end507.i

do.body500.i:                                     ; preds = %if.else474.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1645, 0\0A.popsection", ""() #13, !srcloc !706
  unreachable

if.end507.i:                                      ; preds = %do.body480.i, %if.then472.i
  %94 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cfg.i, align 4
  %and513.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and513.i)
  %tobool514.not.i = icmp eq i32 %and513.i, 0
  br i1 %tobool514.not.i, label %do.body523.i, label %do.body516.i

do.body516.i:                                     ; preds = %if.end507.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !707
  tail call void @arm_heavy_mb() #13
  %96 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_shift.i, align 4
  %shl520.i = shl i32 12, %97
  %add.ptr521.i = getelementptr i8, ptr %10, i32 %shl520.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr521.i, i32 512) #13, !srcloc !211
  br label %for.inc

do.body523.i:                                     ; preds = %if.end507.i
  %98 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %io_shift.i, align 4
  %shl527.i = shl i32 14, %99
  %and530.i = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and530.i)
  %tobool531.not.i = icmp eq i32 %and530.i, 0
  br i1 %tobool531.not.i, label %if.else534.i, label %if.then532.i

if.then532.i:                                     ; preds = %do.body523.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i7.i = getelementptr i8, ptr %10, i32 %shl527.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i7.i, i16 512) #13, !srcloc !213
  br label %for.inc

if.else534.i:                                     ; preds = %do.body523.i
  %and537.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and537.i)
  %tobool538.not.i = icmp eq i32 %and537.i, 0
  br i1 %tobool538.not.i, label %do.body560.i, label %do.body540.i

do.body540.i:                                     ; preds = %if.else534.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !708
  tail call void @arm_heavy_mb() #13
  %add.ptr547.i = getelementptr i8, ptr %10, i32 %shl527.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr547.i, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !709
  tail call void @arm_heavy_mb() #13
  %100 = ptrtoint ptr %io_shift.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %io_shift.i, align 4
  %shl554.i = shl nuw i32 1, %101
  %add555.i = add i32 %shl554.i, %shl527.i
  %add.ptr556.i = getelementptr i8, ptr %10, i32 %add555.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr556.i, i8 0) #13, !srcloc !196
  br label %for.inc

do.body560.i:                                     ; preds = %if.else534.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1646, 0\0A.popsection", ""() #13, !srcloc !710
  unreachable

for.inc:                                          ; preds = %do.body540.i, %if.then532.i, %do.body516.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  %add18 = add i32 %i.034, 2
  %102 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %add18, %103
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %for.body.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %mii = getelementptr i8, ptr %dev, i32 2372
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %if.end15

if.else:                                          ; preds = %entry
  %ctl_rspeed = getelementptr i8, ptr %dev, i32 2360
  %2 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_rspeed, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %3, label %if.else.if.end10_crit_edge [
    i32 10, label %if.else.if.end10.sink.split_crit_edge
    i32 100, label %if.else.if.end10.sink.split_crit_edge28
  ]

if.else.if.end10.sink.split_crit_edge28:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.sink.split

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.sink.split

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10.sink.split:                              ; preds = %if.else.if.end10.sink.split_crit_edge, %if.else.if.end10.sink.split_crit_edge28
  %speed9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %speed9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %autoneg, align 1
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %port, align 1
  %tcr_cur_mode = getelementptr i8, ptr %dev, i32 2344
  %8 = ptrtoint ptr %tcr_cur_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tcr_cur_mode, align 4
  %and = lshr i32 %9, 15
  %10 = trunc i32 %and to i8
  %11 = and i8 %10, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %duplex, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 387) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ethtool_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2456
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %mii = getelementptr i8, ptr %dev, i32 2372
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3.not = icmp eq i8 %3, 0
  br i1 %cmp3.not, label %lor.lhs.false, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp6.not = icmp eq i32 %5, 10
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch = icmp ult i8 %7, 2
  br i1 %switch, label %lor.lhs.false18, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false8
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch48 = icmp ult i8 %9, 2
  br i1 %switch48, label %if.end, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp33 = icmp eq i8 %7, 1
  %conv34 = zext i1 %cmp33 to i32
  %ctl_rfduplx = getelementptr i8, ptr %dev, i32 2356
  %10 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv34, ptr %ctl_rfduplx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_phy_fixed(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mii = getelementptr i8, ptr %dev, i32 2372
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii, align 4
  %call1 = tail call i32 @smc_phy_read(ptr noundef %dev, i32 noundef %3, i32 noundef 16)
  %or = or i32 %call1, 32768
  tail call void @smc_phy_write(ptr noundef %dev, i32 noundef %3, i32 noundef 16, i32 noundef %or)
  %ctl_rfduplx = getelementptr i8, ptr %dev, i32 2356
  %4 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_rfduplx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 256
  %ctl_rspeed = getelementptr i8, ptr %dev, i32 2360
  %6 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctl_rspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp = icmp eq i32 %7, 100
  %or4 = or i32 %spec.select, 8192
  %bmcr.1 = select i1 %cmp, i32 %or4, i32 %spec.select
  tail call void @smc_phy_write(ptr noundef %dev, i32 noundef %3, i32 noundef 0, i32 noundef %bmcr.1)
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body12, label %do.body9

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !711
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %10 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %11
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !211
  br label %do.body55

do.body12:                                        ; preds = %entry
  %io_shift13 = getelementptr i8, ptr %dev, i32 2512
  %12 = ptrtoint ptr %io_shift13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift13, align 4
  %shl14 = shl i32 14, %13
  %and17 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.body55

if.else20:                                        ; preds = %do.body12
  %and23 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body42, label %do.body26

do.body26:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !712
  tail call void @arm_heavy_mb() #13
  %add.ptr31 = getelementptr i8, ptr %1, i32 %shl14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !713
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %io_shift13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_shift13, align 4
  %shl37 = shl nuw i32 1, %15
  %add = add i32 %shl37, %shl14
  %add.ptr38 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 0) #13, !srcloc !196
  br label %do.body55

do.body42:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 931, 0\0A.popsection", ""() #13, !srcloc !714
  unreachable

do.body55:                                        ; preds = %do.body26, %if.then19, %do.body9
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg, align 4
  %and58 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body69, label %do.body61

do.body61:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !715
  tail call void @arm_heavy_mb() #13
  %rpc_cur_mode = getelementptr i8, ptr %dev, i32 2352
  %18 = ptrtoint ptr %rpc_cur_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rpc_cur_mode, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = lshr i32 %20, 16
  %io_shift65 = getelementptr i8, ptr %dev, i32 2512
  %22 = ptrtoint ptr %io_shift65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_shift65, align 4
  %shl66 = shl i32 8, %23
  %add.ptr67 = getelementptr i8, ptr %1, i32 %shl66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %21) #13, !srcloc !211
  br label %do.body120

do.body69:                                        ; preds = %do.body55
  %rpc_cur_mode71 = getelementptr i8, ptr %dev, i32 2352
  %24 = ptrtoint ptr %rpc_cur_mode71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rpc_cur_mode71, align 4
  %io_shift73 = getelementptr i8, ptr %dev, i32 2512
  %26 = ptrtoint ptr %io_shift73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift73, align 4
  %shl74 = shl i32 10, %27
  %and77 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else81, label %if.then79

if.then79:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %conv80 = trunc i32 %25 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv80) #13
  %add.ptr8.i1 = getelementptr i8, ptr %1, i32 %shl74
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1, i16 %28) #13, !srcloc !213
  br label %do.body120

if.else81:                                        ; preds = %do.body69
  %and84 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body107, label %do.body87

do.body87:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !716
  tail call void @arm_heavy_mb() #13
  %conv93 = trunc i32 %25 to i8
  %add.ptr94 = getelementptr i8, ptr %1, i32 %shl74
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr94, i8 %conv93) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !717
  tail call void @arm_heavy_mb() #13
  %shr98 = lshr i32 %25, 8
  %conv99 = trunc i32 %shr98 to i8
  %29 = ptrtoint ptr %io_shift73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_shift73, align 4
  %shl101 = shl nuw i32 1, %30
  %add102 = add i32 %shl101, %shl74
  %add.ptr103 = getelementptr i8, ptr %1, i32 %add102
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103, i8 %conv99) #13, !srcloc !196
  br label %do.body120

do.body107:                                       ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 932, 0\0A.popsection", ""() #13, !srcloc !718
  unreachable

do.body120:                                       ; preds = %do.body87, %if.then79, %do.body61
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg, align 4
  %and123 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %do.body133, label %do.body126

do.body126:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !719
  tail call void @arm_heavy_mb() #13
  %io_shift129 = getelementptr i8, ptr %dev, i32 2512
  %33 = ptrtoint ptr %io_shift129 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_shift129, align 4
  %shl130 = shl i32 12, %34
  %add.ptr131 = getelementptr i8, ptr %1, i32 %shl130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 512) #13, !srcloc !211
  br label %do.end182

do.body133:                                       ; preds = %do.body120
  %io_shift136 = getelementptr i8, ptr %dev, i32 2512
  %35 = ptrtoint ptr %io_shift136 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_shift136, align 4
  %shl137 = shl i32 14, %36
  %and140 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.else144, label %if.then142

if.then142:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i2 = getelementptr i8, ptr %1, i32 %shl137
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i2, i16 512) #13, !srcloc !213
  br label %do.end182

if.else144:                                       ; preds = %do.body133
  %and147 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body170, label %do.body150

do.body150:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !720
  tail call void @arm_heavy_mb() #13
  %add.ptr157 = getelementptr i8, ptr %1, i32 %shl137
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr157, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !721
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %io_shift136 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_shift136, align 4
  %shl164 = shl nuw i32 1, %38
  %add165 = add i32 %shl164, %shl137
  %add.ptr166 = getelementptr i8, ptr %1, i32 %add165
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr166, i8 0) #13, !srcloc !196
  br label %do.end182

do.body170:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #13, !srcloc !722
  unreachable

do.end182:                                        ; preds = %do.body150, %if.then142, %do.body126
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_phy_check_media(ptr noundef %dev, i32 noundef %init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mii = getelementptr i8, ptr %dev, i32 2372
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 4
  %call1 = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef %and, i32 noundef %init) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end103_crit_edge, label %if.then

entry.if.end103_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then:                                          ; preds = %entry
  %full_duplex = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %full_duplex, align 4
  %tcr_cur_mode5 = getelementptr i8, ptr %dev, i32 2344
  %5 = ptrtoint ptr %tcr_cur_mode5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tcr_cur_mode5, align 4
  %and6 = and i32 %6, -32769
  %7 = and i8 %bf.load, -128
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %or.sink = or i32 %and6, %9
  store i32 %or.sink, ptr %tcr_cur_mode5, align 4
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg, align 4
  %and7 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body12, label %do.body10

do.body10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !723
  tail call void @arm_heavy_mb() #13
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %12 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift, align 4
  %shl = shl i32 12, %13
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !211
  br label %do.body55

do.body12:                                        ; preds = %if.then
  %io_shift13 = getelementptr i8, ptr %dev, i32 2512
  %14 = ptrtoint ptr %io_shift13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_shift13, align 4
  %shl14 = shl i32 14, %15
  %and17 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 0) #13, !srcloc !213
  br label %do.body55

if.else20:                                        ; preds = %do.body12
  %and23 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body42, label %do.body26

do.body26:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !724
  tail call void @arm_heavy_mb() #13
  %add.ptr31 = getelementptr i8, ptr %1, i32 %shl14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !725
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %io_shift13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_shift13, align 4
  %shl37 = shl nuw i32 1, %17
  %add = add i32 %shl37, %shl14
  %add.ptr38 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 0) #13, !srcloc !196
  br label %do.body55

do.body42:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1017, 0\0A.popsection", ""() #13, !srcloc !726
  unreachable

do.body55:                                        ; preds = %do.body26, %if.then19, %do.body10
  %tcr_cur_mode57 = getelementptr i8, ptr %dev, i32 2344
  %18 = ptrtoint ptr %tcr_cur_mode57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcr_cur_mode57, align 4
  %io_shift59 = getelementptr i8, ptr %dev, i32 2512
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg, align 4
  %and63 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %conv66 = trunc i32 %19 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv66) #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %22) #13, !srcloc !213
  br label %if.end103

if.else67:                                        ; preds = %do.body55
  %and70 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body93, label %do.body73

do.body73:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !727
  tail call void @arm_heavy_mb() #13
  %conv79 = trunc i32 %19 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv79) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !728
  tail call void @arm_heavy_mb() #13
  %shr84 = lshr i32 %19, 8
  %conv85 = trunc i32 %shr84 to i8
  %23 = ptrtoint ptr %io_shift59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_shift59, align 4
  %shl87 = shl nuw i32 1, %24
  %add.ptr89 = getelementptr i8, ptr %1, i32 %shl87
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr89, i8 %conv85) #13, !srcloc !196
  br label %if.end103

do.body93:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1018, 0\0A.popsection", ""() #13, !srcloc !729
  unreachable

if.end103:                                        ; preds = %do.body73, %if.then65, %entry.if.end103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_mii_out(ptr nocapture noundef readonly %dev, i32 noundef %val, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %2 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_shift, align 4
  %shl = shl i32 8, %3
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #13, !srcloc !205
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !730
  %conv = zext i16 %7 to i32
  br label %cond.end32

cond.false:                                       ; preds = %entry
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body, label %cond.true8

cond.true8:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr11 = getelementptr i8, ptr %1, i32 %shl
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !731
  %conv15 = zext i8 %8 to i32
  %9 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_shift, align 4
  %shl19 = shl nuw i32 1, %10
  %add = add i32 %shl19, %shl
  %add.ptr20 = getelementptr i8, ptr %1, i32 %add
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !732
  %conv24 = zext i8 %11 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or = or i32 %shl25, %conv15
  br label %cond.end32

do.body:                                          ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 767, 0\0A.popsection", ""() #13, !srcloc !733
  unreachable

cond.end32:                                       ; preds = %cond.true8, %cond.true
  %cond33 = phi i32 [ %conv, %cond.true ], [ %or, %cond.true8 ]
  %and34 = and i32 %cond33, -14
  %or35 = or i32 %and34, 8
  %sub = add i32 %bits, -1
  %shl36 = shl nuw i32 1, %sub
  br label %for.body

for.body:                                         ; preds = %if.end133.for.body_crit_edge, %cond.end32
  %mii_reg.0176 = phi i32 [ %or35, %cond.end32 ], [ %mii_reg.1, %if.end133.for.body_crit_edge ]
  %mask.0175 = phi i32 [ %shl36, %cond.end32 ], [ %shr136, %if.end133.for.body_crit_edge ]
  %and38 = and i32 %mask.0175, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %and41 = and i32 %mii_reg.0176, -2
  %masksel = zext i1 %tobool39.not to i32
  %mii_reg.1 = or i32 %and41, %masksel
  %12 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_shift, align 4
  %shl46 = shl i32 8, %13
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg, align 4
  %and49 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv52 = trunc i32 %mii_reg.1 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv52) #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl46
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %16) #13, !srcloc !213
  br label %if.end85

if.else53:                                        ; preds = %for.body
  %and56 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body78, label %do.body59

do.body59:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !734
  tail call void @arm_heavy_mb() #13
  %conv65 = trunc i32 %mii_reg.1 to i8
  %add.ptr66 = getelementptr i8, ptr %1, i32 %shl46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66, i8 %conv65) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !735
  tail call void @arm_heavy_mb() #13
  %shr = lshr i32 %mii_reg.0176, 8
  %conv70 = trunc i32 %shr to i8
  %17 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift, align 4
  %shl72 = shl nuw i32 1, %18
  %add73 = add i32 %shl72, %shl46
  %add.ptr74 = getelementptr i8, ptr %1, i32 %add73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 %conv70) #13, !srcloc !196
  br label %if.end85

do.body78:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 776, 0\0A.popsection", ""() #13, !srcloc !736
  unreachable

if.end85:                                         ; preds = %do.body59, %if.then51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #13
  %or90 = or i32 %mii_reg.1, 4
  %20 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_shift, align 4
  %shl93 = shl i32 8, %21
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg, align 4
  %and96 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else100, label %if.then98

if.then98:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %conv99 = trunc i32 %or90 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv99) #13
  %add.ptr8.i174 = getelementptr i8, ptr %1, i32 %shl93
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i174, i16 %24) #13, !srcloc !213
  br label %if.end133

if.else100:                                       ; preds = %if.end85
  %and103 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body126, label %do.body106

do.body106:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !737
  tail call void @arm_heavy_mb() #13
  %conv112 = trunc i32 %or90 to i8
  %add.ptr113 = getelementptr i8, ptr %1, i32 %shl93
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr113, i8 %conv112) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !738
  tail call void @arm_heavy_mb() #13
  %shr117 = lshr i32 %mii_reg.0176, 8
  %conv118 = trunc i32 %shr117 to i8
  %25 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_shift, align 4
  %shl120 = shl nuw i32 1, %26
  %add121 = add i32 %shl120, %shl93
  %add.ptr122 = getelementptr i8, ptr %1, i32 %add121
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr122, i8 %conv118) #13, !srcloc !196
  br label %if.end133

do.body126:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 778, 0\0A.popsection", ""() #13, !srcloc !739
  unreachable

if.end133:                                        ; preds = %do.body106, %if.then98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #13
  %shr136 = lshr i32 %mask.0175, 1
  %tobool37.not = icmp ult i32 %mask.0175, 2
  br i1 %tobool37.not, label %for.end, label %if.end133.for.body_crit_edge

if.end133.for.body_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_tx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 4, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !740
  %conv = zext i8 %6 to i32
  br label %cond.end53

cond.false:                                       ; preds = %entry
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body43, label %cond.true10

cond.true10:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift3 = getelementptr i8, ptr %dev, i32 2512
  %7 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_shift3, align 4
  %shl4 = shl i32 4, %8
  %add.ptr13 = getelementptr i8, ptr %1, i32 %shl4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !741
  %10 = lshr i16 %9, 8
  %conv17 = zext i16 %10 to i32
  br label %cond.end53

do.body43:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 712, 0\0A.popsection", ""() #13, !srcloc !742
  unreachable

cond.end53:                                       ; preds = %cond.true10, %cond.true
  %cond54 = phi i32 [ %conv, %cond.true ], [ %conv17, %cond.true10 ]
  %and55 = and i32 %cond54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end78, label %do.body61, !prof !237

do.body61:                                        ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_tx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_tx, %if.then71)) #13
          to label %cleanup [label %if.then71], !srcloc !268

if.then71:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_tx.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end78:                                         ; preds = %cond.end53
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg, align 4
  %and81 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %cond.false93, label %cond.true83

cond.true83:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift86 = getelementptr i8, ptr %dev, i32 2512
  %13 = ptrtoint ptr %io_shift86 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift86, align 4
  %shl87 = shl i32 2, %14
  %add.ptr88 = getelementptr i8, ptr %1, i32 %shl87
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr88) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !743
  %conv92 = zext i8 %15 to i32
  br label %cond.end151

cond.false93:                                     ; preds = %if.end78
  %and100 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body139, label %cond.true102

cond.true102:                                     ; preds = %cond.false93
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift95 = getelementptr i8, ptr %dev, i32 2512
  %16 = ptrtoint ptr %io_shift95 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_shift95, align 4
  %shl96 = shl i32 2, %17
  %add.ptr105 = getelementptr i8, ptr %1, i32 %shl96
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr105) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !744
  %19 = lshr i16 %18, 8
  %conv109 = zext i16 %19 to i32
  br label %cond.end151

do.body139:                                       ; preds = %cond.false93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #13, !srcloc !745
  unreachable

cond.end151:                                      ; preds = %cond.true102, %cond.true83
  %cond152 = phi i32 [ %conv92, %cond.true83 ], [ %conv109, %cond.true102 ]
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg, align 4
  %and156 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.else, label %do.body159

do.body159:                                       ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !746
  tail call void @arm_heavy_mb() #13
  %22 = tail call i32 @llvm.bswap.i32(i32 %cond54)
  %23 = lshr exact i32 %22, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %23) #13, !srcloc !211
  br label %do.body229

if.else:                                          ; preds = %cond.end151
  %and168 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %do.body179, label %do.body171

do.body171:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !747
  tail call void @arm_heavy_mb() #13
  %conv174 = trunc i32 %cond54 to i8
  %io_shift175 = getelementptr i8, ptr %dev, i32 2512
  %24 = ptrtoint ptr %io_shift175 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_shift175, align 4
  %shl176 = shl i32 2, %25
  %add.ptr177 = getelementptr i8, ptr %1, i32 %shl176
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr177, i8 %conv174) #13, !srcloc !196
  br label %do.body229

do.body179:                                       ; preds = %if.else
  %and186 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %do.body215, label %if.then188

if.then188:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift182 = getelementptr i8, ptr %dev, i32 2512
  %26 = ptrtoint ptr %io_shift182 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_shift182, align 4
  %shl183 = shl i32 2, %27
  %conv189 = trunc i32 %cond54 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv189) #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl183
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %28) #13, !srcloc !213
  br label %do.body229

do.body215:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 720, 0\0A.popsection", ""() #13, !srcloc !748
  unreachable

do.body229:                                       ; preds = %if.then188, %do.body171, %do.body159
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg, align 4
  %and232 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.body242, label %do.body235

do.body235:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !749
  tail call void @arm_heavy_mb() #13
  %io_shift238 = getelementptr i8, ptr %dev, i32 2512
  %31 = ptrtoint ptr %io_shift238 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_shift238, align 4
  %shl239 = shl i32 4, %32
  %add.ptr240 = getelementptr i8, ptr %1, i32 %shl239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 96) #13, !srcloc !211
  br label %do.body292

do.body242:                                       ; preds = %do.body229
  %io_shift245 = getelementptr i8, ptr %dev, i32 2512
  %33 = ptrtoint ptr %io_shift245 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_shift245, align 4
  %shl246 = shl i32 6, %34
  %and249 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.else253, label %if.then251

if.then251:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1317 = getelementptr i8, ptr %1, i32 %shl246
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1317, i16 96) #13, !srcloc !213
  br label %do.body292

if.else253:                                       ; preds = %do.body242
  %and256 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %do.body279, label %do.body259

do.body259:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !750
  tail call void @arm_heavy_mb() #13
  %add.ptr266 = getelementptr i8, ptr %1, i32 %shl246
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr266, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !751
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %io_shift245 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_shift245, align 4
  %shl273 = shl nuw i32 1, %36
  %add274 = add i32 %shl273, %shl246
  %add.ptr275 = getelementptr i8, ptr %1, i32 %add274
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr275, i8 96) #13, !srcloc !196
  br label %do.body292

do.body279:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 723, 0\0A.popsection", ""() #13, !srcloc !752
  unreachable

do.body292:                                       ; preds = %do.body259, %if.then251, %do.body235
  %37 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cfg, align 4
  %and295 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  %io_shift310 = getelementptr i8, ptr %dev, i32 2512
  %39 = ptrtoint ptr %io_shift310 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_shift310, align 4
  %shl311 = shl i32 8, %40
  br i1 %tobool296.not, label %if.else308, label %if.then297

if.then297:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr302 = getelementptr i8, ptr %1, i32 %shl311
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr302) #13, !srcloc !753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !754
  %42 = and i32 %41, -65536
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  br label %do.end426

if.else308:                                       ; preds = %do.body292
  %and315 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %cond.false325, label %cond.true317

cond.true317:                                     ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr320 = getelementptr i8, ptr %1, i32 %shl311
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr320) #13, !srcloc !205
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !755
  %conv324 = zext i16 %45 to i32
  br label %cond.end363

cond.false325:                                    ; preds = %if.else308
  %and328 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %do.body354, label %cond.true330

cond.true330:                                     ; preds = %cond.false325
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr335 = getelementptr i8, ptr %1, i32 %shl311
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr335) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !756
  %conv339 = zext i8 %46 to i32
  %47 = ptrtoint ptr %io_shift310 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_shift310, align 4
  %shl343 = shl nuw i32 1, %48
  %add344 = add i32 %shl343, %shl311
  %add.ptr345 = getelementptr i8, ptr %1, i32 %add344
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr345) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !757
  %conv349 = zext i8 %49 to i32
  %shl350 = shl nuw nsw i32 %conv349, 8
  %or351 = or i32 %shl350, %conv339
  br label %cond.end363

do.body354:                                       ; preds = %cond.false325
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 724, 0\0A.popsection", ""() #13, !srcloc !758
  unreachable

cond.end363:                                      ; preds = %cond.true330, %cond.true317
  %cond364 = phi i32 [ %conv324, %cond.true317 ], [ %or351, %cond.true330 ]
  %50 = ptrtoint ptr %io_shift310 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_shift310, align 4
  %shl367 = shl i32 8, %51
  %52 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg, align 4
  %and371 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %cond.false381, label %cond.true373

cond.true373:                                     ; preds = %cond.end363
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr376 = getelementptr i8, ptr %1, i32 %shl367
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr376) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !759
  br label %do.end426

cond.false381:                                    ; preds = %cond.end363
  %and384 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and384)
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %do.body410, label %cond.true386

cond.true386:                                     ; preds = %cond.false381
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr391 = getelementptr i8, ptr %1, i32 %shl367
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr391) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !760
  %56 = ptrtoint ptr %io_shift310 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_shift310, align 4
  %shl399 = shl nuw i32 1, %57
  %add400 = add i32 %shl399, %shl367
  %add.ptr401 = getelementptr i8, ptr %1, i32 %add400
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr401) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !761
  br label %do.end426

do.body410:                                       ; preds = %cond.false381
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 724, 0\0A.popsection", ""() #13, !srcloc !762
  unreachable

do.end426:                                        ; preds = %cond.true386, %cond.true373, %if.then297
  %tx_status.0 = phi i32 [ %43, %if.then297 ], [ %cond364, %cond.true386 ], [ %cond364, %cond.true373 ]
  %and427 = and i32 %tx_status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and427)
  %tobool428.not = icmp eq i32 %and427, 0
  br i1 %tobool428.not, label %if.then429, label %do.end426.if.end430_crit_edge

do.end426.if.end430_crit_edge:                    ; preds = %do.end426
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430

if.then429:                                       ; preds = %do.end426
  call void @__sanitizer_cov_trace_pc() #15
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %59 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end430

if.end430:                                        ; preds = %if.then429, %do.end426.if.end430_crit_edge
  %and431 = and i32 %tx_status.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and431)
  %tobool432.not = icmp eq i32 %and431, 0
  br i1 %tobool432.not, label %if.end430.if.end436_crit_edge, label %if.then433

if.end430.if.end436_crit_edge:                    ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end436

if.then433:                                       ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #15
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %61 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_carrier_errors, align 4
  %inc435 = add i32 %62, 1
  store i32 %inc435, ptr %tx_carrier_errors, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.then433, %if.end430.if.end436_crit_edge
  %and437 = and i32 %tx_status.0, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437)
  %tobool438.not = icmp eq i32 %and437, 0
  br i1 %tobool438.not, label %if.end436.do.body476_crit_edge, label %do.body442

if.end436.do.body476_crit_edge:                   ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body476

do.body442:                                       ; preds = %if.end436
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_tx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_tx, %if.then454)) #13
          to label %do.end464 [label %if.then454], !srcloc !268

if.then454:                                       ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #15
  %and455 = and i32 %tx_status.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  %cond457 = select i1 %tobool456.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_tx.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond457) #13
  br label %do.end464

do.end464:                                        ; preds = %if.then454, %do.body442
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %63 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_window_errors, align 8
  %inc466 = add i32 %64, 1
  store i32 %inc466, ptr %tx_window_errors, align 8
  %and469 = and i32 %inc466, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and469)
  %tobool470.not = icmp eq i32 %and469, 0
  br i1 %tobool470.not, label %land.lhs.true, label %do.end464.do.body476_crit_edge

do.end464.do.body476_crit_edge:                   ; preds = %do.end464
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body476

land.lhs.true:                                    ; preds = %do.end464
  %call471 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call471)
  %tobool472.not = icmp eq i32 %call471, 0
  br i1 %tobool472.not, label %land.lhs.true.do.body476_crit_edge, label %if.then473

land.lhs.true.do.body476_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body476

if.then473:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.64) #16
  br label %do.body476

do.body476:                                       ; preds = %if.then473, %land.lhs.true.do.body476_crit_edge, %do.end464.do.body476_crit_edge, %if.end436.do.body476_crit_edge
  %io_shift478 = getelementptr i8, ptr %dev, i32 2512
  %65 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cfg, align 4
  %and483 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and483)
  %tobool484.not = icmp eq i32 %and483, 0
  br i1 %tobool484.not, label %cond.false493, label %cond.true485

cond.true485:                                     ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #15
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !763
  %conv492 = zext i16 %68 to i32
  br label %cond.end531

cond.false493:                                    ; preds = %do.body476
  %and496 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and496)
  %tobool497.not = icmp eq i32 %and496, 0
  br i1 %tobool497.not, label %do.body522, label %cond.true498

cond.true498:                                     ; preds = %cond.false493
  call void @__sanitizer_cov_trace_pc() #15
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !764
  %conv507 = zext i8 %69 to i32
  %70 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_shift478, align 4
  %shl511 = shl nuw i32 1, %71
  %add.ptr513 = getelementptr i8, ptr %1, i32 %shl511
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr513) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !765
  br label %cond.end531

do.body522:                                       ; preds = %cond.false493
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 745, 0\0A.popsection", ""() #13, !srcloc !766
  unreachable

cond.end531:                                      ; preds = %cond.true498, %cond.true485
  %cond532 = phi i32 [ %conv492, %cond.true485 ], [ %conv507, %cond.true498 ]
  %and533 = and i32 %cond532, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and533)
  %tobool534.not = icmp eq i32 %and533, 0
  br i1 %tobool534.not, label %cond.end531.do.body635_crit_edge, label %if.then541, !prof !237

cond.end531.do.body635_crit_edge:                 ; preds = %cond.end531
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body635

if.then541:                                       ; preds = %cond.end531
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %add542 = add i32 %73, 2
  br label %while.cond

while.cond:                                       ; preds = %do.end627, %if.then541
  %74 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cfg, align 4
  %and549 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and549)
  %tobool550.not = icmp eq i32 %and549, 0
  br i1 %tobool550.not, label %cond.false559, label %cond.true551

cond.true551:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !767
  %conv558 = zext i16 %77 to i32
  br label %cond.end597

cond.false559:                                    ; preds = %while.cond
  %and562 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and562)
  %tobool563.not = icmp eq i32 %and562, 0
  br i1 %tobool563.not, label %do.body588, label %cond.true564

cond.true564:                                     ; preds = %cond.false559
  call void @__sanitizer_cov_trace_pc() #15
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !768
  %conv573 = zext i8 %78 to i32
  %79 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %io_shift478, align 4
  %shl577 = shl nuw i32 1, %80
  %add.ptr579 = getelementptr i8, ptr %1, i32 %shl577
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr579) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !769
  br label %cond.end597

do.body588:                                       ; preds = %cond.false559
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 745, 0\0A.popsection", ""() #13, !srcloc !770
  unreachable

cond.end597:                                      ; preds = %cond.true564, %cond.true551
  %cond598 = phi i32 [ %conv558, %cond.true551 ], [ %conv573, %cond.true564 ]
  %and599 = and i32 %cond598, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and599)
  %tobool600.not = icmp eq i32 %and599, 0
  br i1 %tobool600.not, label %cond.end597.do.body635_crit_edge, label %while.body

cond.end597.do.body635_crit_edge:                 ; preds = %cond.end597
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body635

while.body:                                       ; preds = %cond.end597
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add542, %82
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body604, label %do.end627

do.body604:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_tx.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_tx, %if.then616)) #13
          to label %do.body635 [label %if.then616], !srcloc !268

if.then616:                                       ; preds = %do.body604
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_tx.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef 745) #13
  br label %do.body635

do.end627:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !771
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !772
  br label %while.cond

do.body635:                                       ; preds = %if.then616, %do.body604, %cond.end597.do.body635_crit_edge, %cond.end531.do.body635_crit_edge
  %83 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cfg, align 4
  %and642 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and642)
  %tobool643.not = icmp eq i32 %and642, 0
  br i1 %tobool643.not, label %if.else646, label %if.then644

if.then644:                                       ; preds = %do.body635
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -24576) #13, !srcloc !213
  br label %if.end679

if.else646:                                       ; preds = %do.body635
  %and649 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and649)
  %tobool650.not = icmp eq i32 %and649, 0
  br i1 %tobool650.not, label %do.body672, label %do.body652

do.body652:                                       ; preds = %if.else646
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !773
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -96) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !774
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_shift478, align 4
  %shl666 = shl nuw i32 1, %86
  %add.ptr668 = getelementptr i8, ptr %1, i32 %shl666
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr668, i8 0) #13, !srcloc !196
  br label %if.end679

do.body672:                                       ; preds = %if.else646
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 746, 0\0A.popsection", ""() #13, !srcloc !775
  unreachable

if.end679:                                        ; preds = %do.body652, %if.then644
  %87 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cfg, align 4
  %and689 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and689)
  %tobool690.not = icmp eq i32 %and689, 0
  br i1 %tobool690.not, label %cond.false699, label %cond.true691

cond.true691:                                     ; preds = %if.end679
  call void @__sanitizer_cov_trace_pc() #15
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !776
  %conv698 = zext i16 %90 to i32
  br label %cond.end737

cond.false699:                                    ; preds = %if.end679
  %and702 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and702)
  %tobool703.not = icmp eq i32 %and702, 0
  br i1 %tobool703.not, label %do.body728, label %cond.true704

cond.true704:                                     ; preds = %cond.false699
  call void @__sanitizer_cov_trace_pc() #15
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !777
  %conv713 = zext i8 %91 to i32
  %92 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %io_shift478, align 4
  %shl717 = shl nuw i32 1, %93
  %add.ptr719 = getelementptr i8, ptr %1, i32 %shl717
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr719) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !778
  br label %cond.end737

do.body728:                                       ; preds = %cond.false699
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #13, !srcloc !779
  unreachable

cond.end737:                                      ; preds = %cond.true704, %cond.true691
  %cond738 = phi i32 [ %conv698, %cond.true691 ], [ %conv713, %cond.true704 ]
  %and739 = and i32 %cond738, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and739)
  %tobool740.not = icmp eq i32 %and739, 0
  br i1 %tobool740.not, label %cond.end737.do.body847_crit_edge, label %if.then747, !prof !237

cond.end737.do.body847_crit_edge:                 ; preds = %cond.end737
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body847

if.then747:                                       ; preds = %cond.end737
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %add749 = add i32 %95, 2
  br label %while.cond750

while.cond750:                                    ; preds = %do.end838, %if.then747
  %96 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cfg, align 4
  %and757 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and757)
  %tobool758.not = icmp eq i32 %and757, 0
  br i1 %tobool758.not, label %cond.false767, label %cond.true759

cond.true759:                                     ; preds = %while.cond750
  call void @__sanitizer_cov_trace_pc() #15
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !780
  %conv766 = zext i16 %99 to i32
  br label %cond.end805

cond.false767:                                    ; preds = %while.cond750
  %and770 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and770)
  %tobool771.not = icmp eq i32 %and770, 0
  br i1 %tobool771.not, label %do.body796, label %cond.true772

cond.true772:                                     ; preds = %cond.false767
  call void @__sanitizer_cov_trace_pc() #15
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !781
  %conv781 = zext i8 %100 to i32
  %101 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %io_shift478, align 4
  %shl785 = shl nuw i32 1, %102
  %add.ptr787 = getelementptr i8, ptr %1, i32 %shl785
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr787) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !782
  br label %cond.end805

do.body796:                                       ; preds = %cond.false767
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #13, !srcloc !783
  unreachable

cond.end805:                                      ; preds = %cond.true772, %cond.true759
  %cond806 = phi i32 [ %conv766, %cond.true759 ], [ %conv781, %cond.true772 ]
  %and807 = and i32 %cond806, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and807)
  %tobool808.not = icmp eq i32 %and807, 0
  br i1 %tobool808.not, label %cond.end805.do.body847_crit_edge, label %while.body809

cond.end805.do.body847_crit_edge:                 ; preds = %cond.end805
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body847

while.body809:                                    ; preds = %cond.end805
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %sub810 = sub i32 %add749, %104
  %cmp811 = icmp slt i32 %sub810, 0
  br i1 %cmp811, label %do.body815, label %do.end838

do.body815:                                       ; preds = %while.body809
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_tx.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_tx, %if.then827)) #13
          to label %do.body847 [label %if.then827], !srcloc !268

if.then827:                                       ; preds = %do.body815
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_tx.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef 749) #13
  br label %do.body847

do.end838:                                        ; preds = %while.body809
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !784
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !785
  br label %while.cond750

do.body847:                                       ; preds = %if.then827, %do.body815, %cond.end805.do.body847_crit_edge, %cond.end737.do.body847_crit_edge
  %105 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cfg, align 4
  %and850 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and850)
  %tobool851.not = icmp eq i32 %and850, 0
  br i1 %tobool851.not, label %if.else860, label %do.body853

do.body853:                                       ; preds = %do.body847
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !786
  tail call void @arm_heavy_mb() #13
  %107 = tail call i32 @llvm.bswap.i32(i32 %cond152)
  %108 = lshr exact i32 %107, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %108) #13, !srcloc !211
  br label %do.body925

if.else860:                                       ; preds = %do.body847
  %and863 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and863)
  %tobool864.not = icmp eq i32 %and863, 0
  br i1 %tobool864.not, label %do.body874, label %do.body866

do.body866:                                       ; preds = %if.else860
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !787
  tail call void @arm_heavy_mb() #13
  %conv869 = trunc i32 %cond152 to i8
  %109 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %io_shift478, align 4
  %shl871 = shl i32 2, %110
  %add.ptr872 = getelementptr i8, ptr %1, i32 %shl871
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr872, i8 %conv869) #13, !srcloc !196
  br label %do.body925

do.body874:                                       ; preds = %if.else860
  %and881 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and881)
  %tobool882.not = icmp eq i32 %and881, 0
  br i1 %tobool882.not, label %do.body911, label %if.then883

if.then883:                                       ; preds = %do.body874
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_shift478, align 4
  %shl878 = shl i32 2, %112
  %conv884 = trunc i32 %cond152 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv884) #13
  %add.ptr8.i1318 = getelementptr i8, ptr %1, i32 %shl878
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1318, i16 %113) #13, !srcloc !213
  br label %do.body925

do.body911:                                       ; preds = %do.body874
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 750, 0\0A.popsection", ""() #13, !srcloc !788
  unreachable

do.body925:                                       ; preds = %if.then883, %do.body866, %do.body853
  %114 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cfg, align 4
  %and928 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and928)
  %tobool929.not = icmp eq i32 %and928, 0
  br i1 %tobool929.not, label %do.body938, label %do.body931

do.body931:                                       ; preds = %do.body925
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !789
  tail call void @arm_heavy_mb() #13
  %116 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %io_shift478, align 4
  %shl935 = shl i32 12, %117
  %add.ptr936 = getelementptr i8, ptr %1, i32 %shl935
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr936, i32 0) #13, !srcloc !211
  br label %do.body988

do.body938:                                       ; preds = %do.body925
  %118 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %io_shift478, align 4
  %shl942 = shl i32 14, %119
  %and945 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and945)
  %tobool946.not = icmp eq i32 %and945, 0
  br i1 %tobool946.not, label %if.else949, label %if.then947

if.then947:                                       ; preds = %do.body938
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1319 = getelementptr i8, ptr %1, i32 %shl942
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1319, i16 0) #13, !srcloc !213
  br label %do.body988

if.else949:                                       ; preds = %do.body938
  %and952 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and952)
  %tobool953.not = icmp eq i32 %and952, 0
  br i1 %tobool953.not, label %do.body975, label %do.body955

do.body955:                                       ; preds = %if.else949
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !790
  tail call void @arm_heavy_mb() #13
  %add.ptr962 = getelementptr i8, ptr %1, i32 %shl942
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr962, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !791
  tail call void @arm_heavy_mb() #13
  %120 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %io_shift478, align 4
  %shl969 = shl nuw i32 1, %121
  %add970 = add i32 %shl969, %shl942
  %add.ptr971 = getelementptr i8, ptr %1, i32 %add970
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr971, i8 0) #13, !srcloc !196
  br label %do.body988

do.body975:                                       ; preds = %if.else949
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 753, 0\0A.popsection", ""() #13, !srcloc !792
  unreachable

do.body988:                                       ; preds = %do.body955, %if.then947, %do.body931
  %tcr_cur_mode = getelementptr i8, ptr %dev, i32 2344
  %122 = ptrtoint ptr %tcr_cur_mode to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tcr_cur_mode, align 4
  %124 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cfg, align 4
  %and995 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and995)
  %tobool996.not = icmp eq i32 %and995, 0
  br i1 %tobool996.not, label %if.else999, label %if.then997

if.then997:                                       ; preds = %do.body988
  call void @__sanitizer_cov_trace_pc() #15
  %conv998 = trunc i32 %123 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %126 = tail call i16 @llvm.bswap.i16(i16 %conv998) #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %126) #13, !srcloc !213
  br label %if.end1032

if.else999:                                       ; preds = %do.body988
  %and1002 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1002)
  %tobool1003.not = icmp eq i32 %and1002, 0
  br i1 %tobool1003.not, label %do.body1025, label %do.body1005

do.body1005:                                      ; preds = %if.else999
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !793
  tail call void @arm_heavy_mb() #13
  %conv1011 = trunc i32 %123 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv1011) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !794
  tail call void @arm_heavy_mb() #13
  %shr1016 = lshr i32 %123, 8
  %conv1017 = trunc i32 %shr1016 to i8
  %127 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %io_shift478, align 4
  %shl1019 = shl nuw i32 1, %128
  %add.ptr1021 = getelementptr i8, ptr %1, i32 %shl1019
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1021, i8 %conv1017) #13, !srcloc !196
  br label %if.end1032

do.body1025:                                      ; preds = %if.else999
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 754, 0\0A.popsection", ""() #13, !srcloc !795
  unreachable

if.end1032:                                       ; preds = %do.body1005, %if.then997
  %129 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cfg, align 4
  %and1038 = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1038)
  %tobool1039.not = icmp eq i32 %and1038, 0
  br i1 %tobool1039.not, label %do.body1048, label %do.body1041

do.body1041:                                      ; preds = %if.end1032
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !796
  tail call void @arm_heavy_mb() #13
  %131 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %io_shift478, align 4
  %shl1045 = shl i32 12, %132
  %add.ptr1046 = getelementptr i8, ptr %1, i32 %shl1045
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1046, i32 512) #13, !srcloc !211
  br label %cleanup

do.body1048:                                      ; preds = %if.end1032
  %133 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %io_shift478, align 4
  %shl1052 = shl i32 14, %134
  %and1055 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1055)
  %tobool1056.not = icmp eq i32 %and1055, 0
  br i1 %tobool1056.not, label %if.else1059, label %if.then1057

if.then1057:                                      ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i1320 = getelementptr i8, ptr %1, i32 %shl1052
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i1320, i16 512) #13, !srcloc !213
  br label %cleanup

if.else1059:                                      ; preds = %do.body1048
  %and1062 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1062)
  %tobool1063.not = icmp eq i32 %and1062, 0
  br i1 %tobool1063.not, label %do.body1085, label %do.body1065

do.body1065:                                      ; preds = %if.else1059
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !797
  tail call void @arm_heavy_mb() #13
  %add.ptr1072 = getelementptr i8, ptr %1, i32 %shl1052
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1072, i8 2) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !798
  tail call void @arm_heavy_mb() #13
  %135 = ptrtoint ptr %io_shift478 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %io_shift478, align 4
  %shl1079 = shl nuw i32 1, %136
  %add1080 = add i32 %shl1079, %shl1052
  %add.ptr1081 = getelementptr i8, ptr %1, i32 %add1080
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1081, i8 0) #13, !srcloc !196
  br label %cleanup

do.body1085:                                      ; preds = %if.else1059
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #13, !srcloc !799
  unreachable

cleanup:                                          ; preds = %do.body1065, %if.then1057, %do.body1041, %if.then71, %do.body61
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_rcv(ptr noundef %dev) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %base = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cfg = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift = getelementptr i8, ptr %dev, i32 2512
  %4 = ptrtoint ptr %io_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_shift, align 4
  %shl = shl i32 5, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !800
  %conv = zext i8 %6 to i32
  br label %cond.end52

cond.false:                                       ; preds = %entry
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body43, label %cond.true10

cond.true10:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift3 = getelementptr i8, ptr %dev, i32 2512
  %7 = ptrtoint ptr %io_shift3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_shift3, align 4
  %shl4 = shl i32 4, %8
  %add.ptr13 = getelementptr i8, ptr %1, i32 %shl4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13) #13, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !801
  %10 = and i16 %9, 255
  %shr = zext i16 %10 to i32
  br label %cond.end52

do.body43:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #13, !srcloc !802
  unreachable

cond.end52:                                       ; preds = %cond.true10, %cond.true
  %cond53 = phi i32 [ %conv, %cond.true ], [ %shr, %cond.true10 ]
  %and54 = and i32 %cond53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body78, label %do.body60, !prof !237

do.body60:                                        ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_rcv.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_rcv, %if.then70)) #13
          to label %cleanup1094 [label %if.then70], !srcloc !268

if.then70:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_rcv.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.66) #13
  br label %cleanup1094

do.body78:                                        ; preds = %cond.end52
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg, align 4
  %and81 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body90, label %do.body84

do.body84:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !803
  tail call void @arm_heavy_mb() #13
  %io_shift87 = getelementptr i8, ptr %dev, i32 2512
  %13 = ptrtoint ptr %io_shift87 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_shift87, align 4
  %shl88 = shl i32 4, %14
  %add.ptr89 = getelementptr i8, ptr %1, i32 %shl88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 224) #13, !srcloc !211
  br label %do.body140

do.body90:                                        ; preds = %do.body78
  %io_shift93 = getelementptr i8, ptr %dev, i32 2512
  %15 = ptrtoint ptr %io_shift93 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_shift93, align 4
  %shl94 = shl i32 6, %16
  %and97 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  %add.ptr8.i = getelementptr i8, ptr %1, i32 %shl94
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 224) #13, !srcloc !213
  br label %do.body140

if.else101:                                       ; preds = %do.body90
  %and104 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body127, label %do.body107

do.body107:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !804
  tail call void @arm_heavy_mb() #13
  %add.ptr114 = getelementptr i8, ptr %1, i32 %shl94
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr114, i8 0) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !805
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %io_shift93 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_shift93, align 4
  %shl121 = shl nuw i32 1, %18
  %add122 = add i32 %shl121, %shl94
  %add.ptr123 = getelementptr i8, ptr %1, i32 %add122
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr123, i8 -32) #13, !srcloc !196
  br label %do.body140

do.body127:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 413, 0\0A.popsection", ""() #13, !srcloc !806
  unreachable

do.body140:                                       ; preds = %do.body107, %if.then99, %do.body84
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfg, align 4
  %and143 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  %io_shift158 = getelementptr i8, ptr %dev, i32 2512
  %21 = ptrtoint ptr %io_shift158 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_shift158, align 4
  %shl159 = shl i32 8, %22
  br i1 %tobool144.not, label %if.else156, label %if.then145

if.then145:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr150 = getelementptr i8, ptr %1, i32 %shl159
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #13, !srcloc !753
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !807
  %and154 = and i32 %24, 65535
  %shr155 = lshr i32 %24, 16
  br label %do.end271

if.else156:                                       ; preds = %do.body140
  %and163 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %cond.false173, label %cond.true165

cond.true165:                                     ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr168 = getelementptr i8, ptr %1, i32 %shl159
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr168) #13, !srcloc !205
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !808
  %conv172 = zext i16 %26 to i32
  br label %cond.end211

cond.false173:                                    ; preds = %if.else156
  %and176 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %do.body202, label %cond.true178

cond.true178:                                     ; preds = %cond.false173
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr183 = getelementptr i8, ptr %1, i32 %shl159
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr183) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !809
  %conv187 = zext i8 %27 to i32
  %28 = ptrtoint ptr %io_shift158 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_shift158, align 4
  %shl191 = shl nuw i32 1, %29
  %add192 = add i32 %shl191, %shl159
  %add.ptr193 = getelementptr i8, ptr %1, i32 %add192
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr193) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !810
  %conv197 = zext i8 %30 to i32
  %shl198 = shl nuw nsw i32 %conv197, 8
  %or199 = or i32 %shl198, %conv187
  br label %cond.end211

do.body202:                                       ; preds = %cond.false173
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #13, !srcloc !811
  unreachable

cond.end211:                                      ; preds = %cond.true178, %cond.true165
  %cond212 = phi i32 [ %conv172, %cond.true165 ], [ %or199, %cond.true178 ]
  %31 = ptrtoint ptr %io_shift158 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_shift158, align 4
  %shl215 = shl i32 8, %32
  %33 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cfg, align 4
  %and219 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %cond.false229, label %cond.true221

cond.true221:                                     ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr224 = getelementptr i8, ptr %1, i32 %shl215
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr224) #13, !srcloc !205
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !812
  %conv228 = zext i16 %36 to i32
  br label %do.end271

cond.false229:                                    ; preds = %cond.end211
  %and232 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.body258, label %cond.true234

cond.true234:                                     ; preds = %cond.false229
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr239 = getelementptr i8, ptr %1, i32 %shl215
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr239) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !813
  %conv243 = zext i8 %37 to i32
  %38 = ptrtoint ptr %io_shift158 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_shift158, align 4
  %shl247 = shl nuw i32 1, %39
  %add248 = add i32 %shl247, %shl215
  %add.ptr249 = getelementptr i8, ptr %1, i32 %add248
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr249) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !814
  %conv253 = zext i8 %40 to i32
  %shl254 = shl nuw nsw i32 %conv253, 8
  %or255 = or i32 %shl254, %conv243
  br label %do.end271

do.body258:                                       ; preds = %cond.false229
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #13, !srcloc !815
  unreachable

do.end271:                                        ; preds = %cond.true234, %cond.true221, %if.then145
  %packet_len.0 = phi i32 [ %shr155, %if.then145 ], [ %conv228, %cond.true221 ], [ %or255, %cond.true234 ]
  %status.0 = phi i32 [ %and154, %if.then145 ], [ %cond212, %cond.true221 ], [ %cond212, %cond.true234 ]
  %and272 = and i32 %packet_len.0, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and272)
  %cmp = icmp ult i32 %and272, 6
  %and2771337 = and i32 %status.0, 44032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2771337)
  %tobool2781338 = icmp ne i32 %and2771337, 0
  %41 = select i1 %cmp, i1 true, i1 %tobool2781338, !prof !203
  br i1 %41, label %if.then285.lr.ph, label %do.end271.if.else523_crit_edge, !prof !203

do.end271.if.else523_crit_edge:                   ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else523

if.then285.lr.ph:                                 ; preds = %do.end271
  call void @__sanitizer_cov_trace_const_cmp4(i32 1525, i32 %and272)
  %cmp288 = icmp ult i32 %and272, 1525
  %42 = and i32 %status.0, -2049
  %and277 = and i32 %status.0, 41984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278 = icmp ne i32 %and277, 0
  %43 = select i1 %cmp, i1 true, i1 %tobool278
  br label %if.then285

back:                                             ; preds = %if.then285
  br i1 %43, label %back.if.then285_crit_edge, label %back.if.else523_crit_edge, !prof !203

back.if.else523_crit_edge:                        ; preds = %back
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else523

back.if.then285_crit_edge:                        ; preds = %back
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then285

if.then285:                                       ; preds = %back.if.then285_crit_edge, %if.then285.lr.ph
  %status.11339 = phi i32 [ %status.0, %if.then285.lr.ph ], [ %42, %back.if.then285_crit_edge ]
  %and286 = and i32 %status.11339, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp ne i32 %and286, 0
  %or.cond = select i1 %tobool287.not, i1 %cmp288, i1 false
  br i1 %or.cond, label %back, label %if.end292

if.end292:                                        ; preds = %if.then285
  br i1 %cmp, label %if.then295, label %if.end292.do.body298_crit_edge

if.end292.do.body298_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body298

if.then295:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %and272, i32 noundef %status.11339) #16
  %or296 = or i32 %status.11339, 1024
  br label %do.body298

do.body298:                                       ; preds = %if.then295, %if.end292.do.body298_crit_edge
  %status.2 = phi i32 [ %or296, %if.then295 ], [ %status.11339, %if.end292.do.body298_crit_edge ]
  %io_shift300 = getelementptr i8, ptr %dev, i32 2512
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cfg, align 4
  %and305 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %cond.false315, label %cond.true307

cond.true307:                                     ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #15
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !816
  %conv314 = zext i16 %47 to i32
  br label %cond.end353

cond.false315:                                    ; preds = %do.body298
  %and318 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %tobool319.not = icmp eq i32 %and318, 0
  br i1 %tobool319.not, label %do.body344, label %cond.true320

cond.true320:                                     ; preds = %cond.false315
  call void @__sanitizer_cov_trace_pc() #15
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !817
  %conv329 = zext i8 %48 to i32
  %49 = ptrtoint ptr %io_shift300 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_shift300, align 4
  %shl333 = shl nuw i32 1, %50
  %add.ptr335 = getelementptr i8, ptr %1, i32 %shl333
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr335) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !818
  br label %cond.end353

do.body344:                                       ; preds = %cond.false315
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #13, !srcloc !819
  unreachable

cond.end353:                                      ; preds = %cond.true320, %cond.true307
  %cond354 = phi i32 [ %conv314, %cond.true307 ], [ %conv329, %cond.true320 ]
  %and355 = and i32 %cond354, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %cond.end353.do.body458_crit_edge, label %if.then363, !prof !237

cond.end353.do.body458_crit_edge:                 ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body458

if.then363:                                       ; preds = %cond.end353
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add364 = add i32 %52, 2
  br label %while.cond

while.cond:                                       ; preds = %do.end450, %if.then363
  %53 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cfg, align 4
  %and371 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %cond.false381, label %cond.true373

cond.true373:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !820
  %conv380 = zext i16 %56 to i32
  br label %cond.end419

cond.false381:                                    ; preds = %while.cond
  %and384 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and384)
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %do.body410, label %cond.true386

cond.true386:                                     ; preds = %cond.false381
  call void @__sanitizer_cov_trace_pc() #15
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !821
  %conv395 = zext i8 %57 to i32
  %58 = ptrtoint ptr %io_shift300 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_shift300, align 4
  %shl399 = shl nuw i32 1, %59
  %add.ptr401 = getelementptr i8, ptr %1, i32 %shl399
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr401) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !822
  br label %cond.end419

do.body410:                                       ; preds = %cond.false381
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #13, !srcloc !823
  unreachable

cond.end419:                                      ; preds = %cond.true386, %cond.true373
  %cond420 = phi i32 [ %conv380, %cond.true373 ], [ %conv395, %cond.true386 ]
  %and421 = and i32 %cond420, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and421)
  %tobool422.not = icmp eq i32 %and421, 0
  br i1 %tobool422.not, label %cond.end419.do.body458_crit_edge, label %while.body

cond.end419.do.body458_crit_edge:                 ; preds = %cond.end419
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body458

while.body:                                       ; preds = %cond.end419
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add364, %61
  %cmp423 = icmp slt i32 %sub, 0
  br i1 %cmp423, label %do.body427, label %do.end450

do.body427:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_rcv.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_rcv, %if.then439)) #13
          to label %do.body458 [label %if.then439], !srcloc !268

if.then439:                                       ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_rcv.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef 434) #13
  br label %do.body458

do.end450:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !824
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !825
  br label %while.cond

do.body458:                                       ; preds = %if.then439, %do.body427, %cond.end419.do.body458_crit_edge, %cond.end353.do.body458_crit_edge
  %62 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cfg, align 4
  %and465 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and465)
  %tobool466.not = icmp eq i32 %and465, 0
  br i1 %tobool466.not, label %if.else469, label %if.then467

if.then467:                                       ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -32768) #13, !srcloc !213
  br label %if.end502

if.else469:                                       ; preds = %do.body458
  %and472 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and472)
  %tobool473.not = icmp eq i32 %and472, 0
  br i1 %tobool473.not, label %do.body495, label %do.body475

do.body475:                                       ; preds = %if.else469
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !826
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -128) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !827
  tail call void @arm_heavy_mb() #13
  %64 = ptrtoint ptr %io_shift300 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_shift300, align 4
  %shl489 = shl nuw i32 1, %65
  %add.ptr491 = getelementptr i8, ptr %1, i32 %shl489
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr491, i8 0) #13, !srcloc !196
  br label %if.end502

do.body495:                                       ; preds = %if.else469
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 435, 0\0A.popsection", ""() #13, !srcloc !828
  unreachable

if.end502:                                        ; preds = %do.body475, %if.then467
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %66 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %67, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and505 = and i32 %status.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and505)
  %tobool506.not = icmp eq i32 %and505, 0
  br i1 %tobool506.not, label %if.end502.if.end510_crit_edge, label %if.then507

if.end502.if.end510_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end510

if.then507:                                       ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #15
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %68 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_frame_errors, align 4
  %inc509 = add i32 %69, 1
  store i32 %inc509, ptr %rx_frame_errors, align 4
  br label %if.end510

if.end510:                                        ; preds = %if.then507, %if.end502.if.end510_crit_edge
  %and511 = and i32 %status.2, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and511)
  %tobool512.not = icmp eq i32 %and511, 0
  br i1 %tobool512.not, label %if.end510.if.end516_crit_edge, label %if.then513

if.end510.if.end516_crit_edge:                    ; preds = %if.end510
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end516

if.then513:                                       ; preds = %if.end510
  call void @__sanitizer_cov_trace_pc() #15
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %70 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_length_errors, align 8
  %inc515 = add i32 %71, 1
  store i32 %inc515, ptr %rx_length_errors, align 8
  br label %if.end516

if.end516:                                        ; preds = %if.then513, %if.end510.if.end516_crit_edge
  %and517 = and i32 %status.2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and517)
  %tobool518.not = icmp eq i32 %and517, 0
  br i1 %tobool518.not, label %if.end516.cleanup1094_crit_edge, label %if.then519

if.end516.cleanup1094_crit_edge:                  ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1094

if.then519:                                       ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #15
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %72 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_crc_errors, align 8
  %inc521 = add i32 %73, 1
  store i32 %inc521, ptr %rx_crc_errors, align 8
  br label %cleanup1094

if.else523:                                       ; preds = %back.if.else523_crit_edge, %do.end271.if.else523_crit_edge
  %status.1.lcssa = phi i32 [ %status.0, %do.end271.if.else523_crit_edge ], [ %42, %back.if.else523_crit_edge ]
  %and524 = and i32 %status.1.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and524)
  %tobool525.not = icmp eq i32 %and524, 0
  br i1 %tobool525.not, label %if.else523.if.end529_crit_edge, label %if.then526

if.else523.if.end529_crit_edge:                   ; preds = %if.else523
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end529

if.then526:                                       ; preds = %if.else523
  call void @__sanitizer_cov_trace_pc() #15
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %74 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %multicast, align 8
  %inc528 = add i32 %75, 1
  store i32 %inc528, ptr %multicast, align 8
  br label %if.end529

if.end529:                                        ; preds = %if.then526, %if.else523.if.end529_crit_edge
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %and272, i32 noundef 2592) #13
  %cmp531 = icmp eq ptr %call.i, null
  br i1 %cmp531, label %do.body540, label %if.end754, !prof !203

do.body540:                                       ; preds = %if.end529
  %io_shift542 = getelementptr i8, ptr %dev, i32 2512
  %76 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cfg, align 4
  %and547 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and547)
  %tobool548.not = icmp eq i32 %and547, 0
  br i1 %tobool548.not, label %cond.false557, label %cond.true549

cond.true549:                                     ; preds = %do.body540
  call void @__sanitizer_cov_trace_pc() #15
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !829
  %conv556 = zext i16 %79 to i32
  br label %cond.end595

cond.false557:                                    ; preds = %do.body540
  %and560 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and560)
  %tobool561.not = icmp eq i32 %and560, 0
  br i1 %tobool561.not, label %do.body586, label %cond.true562

cond.true562:                                     ; preds = %cond.false557
  call void @__sanitizer_cov_trace_pc() #15
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !830
  %conv571 = zext i8 %80 to i32
  %81 = ptrtoint ptr %io_shift542 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_shift542, align 4
  %shl575 = shl nuw i32 1, %82
  %add.ptr577 = getelementptr i8, ptr %1, i32 %shl575
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr577) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !831
  br label %cond.end595

do.body586:                                       ; preds = %cond.false557
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #13, !srcloc !832
  unreachable

cond.end595:                                      ; preds = %cond.true562, %cond.true549
  %cond596 = phi i32 [ %conv556, %cond.true549 ], [ %conv571, %cond.true562 ]
  %and597 = and i32 %cond596, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and597)
  %tobool598.not = icmp eq i32 %and597, 0
  br i1 %tobool598.not, label %cond.end595.do.body705_crit_edge, label %if.then605, !prof !237

cond.end595.do.body705_crit_edge:                 ; preds = %cond.end595
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body705

if.then605:                                       ; preds = %cond.end595
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %add607 = add i32 %84, 2
  br label %while.cond608

while.cond608:                                    ; preds = %do.end696, %if.then605
  %85 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cfg, align 4
  %and615 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and615)
  %tobool616.not = icmp eq i32 %and615, 0
  br i1 %tobool616.not, label %cond.false625, label %cond.true617

cond.true617:                                     ; preds = %while.cond608
  call void @__sanitizer_cov_trace_pc() #15
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !833
  %conv624 = zext i16 %88 to i32
  br label %cond.end663

cond.false625:                                    ; preds = %while.cond608
  %and628 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and628)
  %tobool629.not = icmp eq i32 %and628, 0
  br i1 %tobool629.not, label %do.body654, label %cond.true630

cond.true630:                                     ; preds = %cond.false625
  call void @__sanitizer_cov_trace_pc() #15
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !834
  %conv639 = zext i8 %89 to i32
  %90 = ptrtoint ptr %io_shift542 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %io_shift542, align 4
  %shl643 = shl nuw i32 1, %91
  %add.ptr645 = getelementptr i8, ptr %1, i32 %shl643
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr645) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !835
  br label %cond.end663

do.body654:                                       ; preds = %cond.false625
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #13, !srcloc !836
  unreachable

cond.end663:                                      ; preds = %cond.true630, %cond.true617
  %cond664 = phi i32 [ %conv624, %cond.true617 ], [ %conv639, %cond.true630 ]
  %and665 = and i32 %cond664, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and665)
  %tobool666.not = icmp eq i32 %and665, 0
  br i1 %tobool666.not, label %cond.end663.do.body705_crit_edge, label %while.body667

cond.end663.do.body705_crit_edge:                 ; preds = %cond.end663
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body705

while.body667:                                    ; preds = %cond.end663
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub668 = sub i32 %add607, %93
  %cmp669 = icmp slt i32 %sub668, 0
  br i1 %cmp669, label %do.body673, label %do.end696

do.body673:                                       ; preds = %while.body667
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_rcv.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_rcv, %if.then685)) #13
          to label %do.body705 [label %if.then685], !srcloc !268

if.then685:                                       ; preds = %do.body673
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_rcv.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef 462) #13
  br label %do.body705

do.end696:                                        ; preds = %while.body667
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !837
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !838
  br label %while.cond608

do.body705:                                       ; preds = %if.then685, %do.body673, %cond.end663.do.body705_crit_edge, %cond.end595.do.body705_crit_edge
  %94 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cfg, align 4
  %and712 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and712)
  %tobool713.not = icmp eq i32 %and712, 0
  br i1 %tobool713.not, label %if.else716, label %if.then714

if.then714:                                       ; preds = %do.body705
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -32768) #13, !srcloc !213
  br label %if.end749

if.else716:                                       ; preds = %do.body705
  %and719 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and719)
  %tobool720.not = icmp eq i32 %and719, 0
  br i1 %tobool720.not, label %do.body742, label %do.body722

do.body722:                                       ; preds = %if.else716
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !839
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -128) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !840
  tail call void @arm_heavy_mb() #13
  %96 = ptrtoint ptr %io_shift542 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_shift542, align 4
  %shl736 = shl nuw i32 1, %97
  %add.ptr738 = getelementptr i8, ptr %1, i32 %shl736
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr738, i8 0) #13, !srcloc !196
  br label %if.end749

do.body742:                                       ; preds = %if.else716
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #13, !srcloc !841
  unreachable

if.end749:                                        ; preds = %do.body722, %if.then714
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %98 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_dropped, align 8
  %inc753 = add i32 %99, 1
  store i32 %inc753, ptr %rx_dropped, align 8
  br label %cleanup1094

if.end754:                                        ; preds = %if.end529
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %100 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i, align 4
  %add.ptr.i1326 = getelementptr i8, ptr %101, i32 2
  store ptr %add.ptr.i1326, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %103, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %version = getelementptr i8, ptr %dev, i32 2340
  %104 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %105)
  %cmp755 = icmp ne i32 %105, 144
  %status.1.op = and i32 %status.1.lcssa, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.op)
  %tobool761.not1332 = icmp eq i32 %status.1.op, 0
  %tobool761.not = select i1 %cmp755, i1 %tobool761.not1332, i1 false
  %cond762.neg = select i1 %tobool761.not, i32 -6, i32 -5
  %sub763 = add nsw i32 %cond762.neg, %and272
  %call764 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub763) #13
  %106 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cfg, align 4
  %and768 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and768)
  %tobool769.not = icmp eq i32 %and768, 0
  br i1 %tobool769.not, label %if.else846, label %if.then770

if.then770:                                       ; preds = %if.end754
  %sub771 = add nsw i32 %and272, -4
  %108 = ptrtoint ptr %call764 to i32
  %and772 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and772)
  %tobool773.not = icmp eq i32 %and772, 0
  br i1 %tobool773.not, label %if.then770.if.end840_crit_edge, label %do.body783

if.then770.if.end840_crit_edge:                   ; preds = %if.then770
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end840

do.body783:                                       ; preds = %if.then770
  call void @__sanitizer_cov_trace_pc() #15
  %add776 = add nsw i32 %and272, -2
  %add.ptr775 = getelementptr i8, ptr %call764, i32 -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !842
  tail call void @arm_heavy_mb() #13
  %io_shift786 = getelementptr i8, ptr %dev, i32 2512
  %109 = ptrtoint ptr %io_shift786 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %io_shift786, align 4
  %shl787 = shl i32 4, %110
  %add.ptr788 = getelementptr i8, ptr %1, i32 %shl787
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr788, i32 736) #13, !srcloc !211
  br label %if.end840

if.end840:                                        ; preds = %do.body783, %if.then770.if.end840_crit_edge
  %__len.0 = phi i32 [ %add776, %do.body783 ], [ %sub771, %if.then770.if.end840_crit_edge ]
  %__ptr.0 = phi ptr [ %add.ptr775, %do.body783 ], [ %call764, %if.then770.if.end840_crit_edge ]
  %add841 = add nuw nsw i32 %__len.0, 2
  %io_shift842 = getelementptr i8, ptr %dev, i32 2512
  %111 = ptrtoint ptr %io_shift842 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_shift842, align 4
  %shl843 = shl i32 8, %112
  %add.ptr844 = getelementptr i8, ptr %1, i32 %shl843
  %shr8451331 = lshr i32 %add841, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr844, ptr noundef %__ptr.0, i32 noundef %shr8451331) #13
  br label %do.body872

if.else846:                                       ; preds = %if.end754
  %and849 = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and849)
  %tobool850.not = icmp eq i32 %and849, 0
  br i1 %tobool850.not, label %if.else857, label %if.then851

if.then851:                                       ; preds = %if.else846
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift852 = getelementptr i8, ptr %dev, i32 2512
  %113 = ptrtoint ptr %io_shift852 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %io_shift852, align 4
  %shl853 = shl i32 8, %114
  %add.ptr854 = getelementptr i8, ptr %1, i32 %shl853
  %sub855 = add nsw i32 %and272, -4
  %shr856 = lshr i32 %sub855, 1
  tail call void @__raw_readsw(ptr noundef %add.ptr854, ptr noundef %call764, i32 noundef %shr856) #13
  br label %do.body872

if.else857:                                       ; preds = %if.else846
  %and860 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and860)
  %tobool861.not = icmp eq i32 %and860, 0
  br i1 %tobool861.not, label %if.else857.do.body872_crit_edge, label %if.then862

if.else857.do.body872_crit_edge:                  ; preds = %if.else857
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body872

if.then862:                                       ; preds = %if.else857
  call void @__sanitizer_cov_trace_pc() #15
  %io_shift863 = getelementptr i8, ptr %dev, i32 2512
  %115 = ptrtoint ptr %io_shift863 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %io_shift863, align 4
  %shl864 = shl i32 8, %116
  %add.ptr865 = getelementptr i8, ptr %1, i32 %shl864
  %sub866 = add nsw i32 %and272, -4
  tail call void @__raw_readsb(ptr noundef %add.ptr865, ptr noundef %call764, i32 noundef %sub866) #13
  br label %do.body872

do.body872:                                       ; preds = %if.then862, %if.else857.do.body872_crit_edge, %if.then851, %if.end840
  %io_shift874 = getelementptr i8, ptr %dev, i32 2512
  %117 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cfg, align 4
  %and879 = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and879)
  %tobool880.not = icmp eq i32 %and879, 0
  br i1 %tobool880.not, label %cond.false889, label %cond.true881

cond.true881:                                     ; preds = %do.body872
  call void @__sanitizer_cov_trace_pc() #15
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %120 = tail call i16 @llvm.bswap.i16(i16 %119)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !843
  %conv888 = zext i16 %120 to i32
  br label %cond.end927

cond.false889:                                    ; preds = %do.body872
  %and892 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and892)
  %tobool893.not = icmp eq i32 %and892, 0
  br i1 %tobool893.not, label %do.body918, label %cond.true894

cond.true894:                                     ; preds = %cond.false889
  call void @__sanitizer_cov_trace_pc() #15
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  %conv903 = zext i8 %121 to i32
  %122 = ptrtoint ptr %io_shift874 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_shift874, align 4
  %shl907 = shl nuw i32 1, %123
  %add.ptr909 = getelementptr i8, ptr %1, i32 %shl907
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr909) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !845
  br label %cond.end927

do.body918:                                       ; preds = %cond.false889
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 484, 0\0A.popsection", ""() #13, !srcloc !846
  unreachable

cond.end927:                                      ; preds = %cond.true894, %cond.true881
  %cond928 = phi i32 [ %conv888, %cond.true881 ], [ %conv903, %cond.true894 ]
  %and929 = and i32 %cond928, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and929)
  %tobool930.not = icmp eq i32 %and929, 0
  br i1 %tobool930.not, label %cond.end927.do.body1037_crit_edge, label %if.then937, !prof !237

cond.end927.do.body1037_crit_edge:                ; preds = %cond.end927
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1037

if.then937:                                       ; preds = %cond.end927
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %add939 = add i32 %125, 2
  br label %while.cond940

while.cond940:                                    ; preds = %do.end1028, %if.then937
  %126 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cfg, align 4
  %and947 = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and947)
  %tobool948.not = icmp eq i32 %and947, 0
  br i1 %tobool948.not, label %cond.false957, label %cond.true949

cond.true949:                                     ; preds = %while.cond940
  call void @__sanitizer_cov_trace_pc() #15
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #13, !srcloc !205
  %129 = tail call i16 @llvm.bswap.i16(i16 %128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !847
  %conv956 = zext i16 %129 to i32
  br label %cond.end995

cond.false957:                                    ; preds = %while.cond940
  %and960 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and960)
  %tobool961.not = icmp eq i32 %and960, 0
  br i1 %tobool961.not, label %do.body986, label %cond.true962

cond.true962:                                     ; preds = %cond.false957
  call void @__sanitizer_cov_trace_pc() #15
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !848
  %conv971 = zext i8 %130 to i32
  %131 = ptrtoint ptr %io_shift874 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %io_shift874, align 4
  %shl975 = shl nuw i32 1, %132
  %add.ptr977 = getelementptr i8, ptr %1, i32 %shl975
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr977) #13, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !849
  br label %cond.end995

do.body986:                                       ; preds = %cond.false957
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 484, 0\0A.popsection", ""() #13, !srcloc !850
  unreachable

cond.end995:                                      ; preds = %cond.true962, %cond.true949
  %cond996 = phi i32 [ %conv956, %cond.true949 ], [ %conv971, %cond.true962 ]
  %and997 = and i32 %cond996, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and997)
  %tobool998.not = icmp eq i32 %and997, 0
  br i1 %tobool998.not, label %cond.end995.do.body1037_crit_edge, label %while.body999

cond.end995.do.body1037_crit_edge:                ; preds = %cond.end995
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1037

while.body999:                                    ; preds = %cond.end995
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %134 = load volatile i32, ptr @jiffies, align 128
  %sub1000 = sub i32 %add939, %134
  %cmp1001 = icmp slt i32 %sub1000, 0
  br i1 %cmp1001, label %do.body1005, label %do.end1028

do.body1005:                                      ; preds = %while.body999
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_rcv.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_rcv, %if.then1017)) #13
          to label %do.body1037 [label %if.then1017], !srcloc !268

if.then1017:                                      ; preds = %do.body1005
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_rcv.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef 484) #13
  br label %do.body1037

do.end1028:                                       ; preds = %while.body999
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !851
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !852
  br label %while.cond940

do.body1037:                                      ; preds = %if.then1017, %do.body1005, %cond.end995.do.body1037_crit_edge, %cond.end927.do.body1037_crit_edge
  %135 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cfg, align 4
  %and1044 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1044)
  %tobool1045.not = icmp eq i32 %and1044, 0
  br i1 %tobool1045.not, label %if.else1048, label %if.then1046

if.then1046:                                      ; preds = %do.body1037
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 -32768) #13, !srcloc !213
  br label %if.end1081

if.else1048:                                      ; preds = %do.body1037
  %and1051 = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1051)
  %tobool1052.not = icmp eq i32 %and1051, 0
  br i1 %tobool1052.not, label %do.body1074, label %do.body1054

do.body1054:                                      ; preds = %if.else1048
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !853
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -128) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !854
  tail call void @arm_heavy_mb() #13
  %137 = ptrtoint ptr %io_shift874 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %io_shift874, align 4
  %shl1068 = shl nuw i32 1, %138
  %add.ptr1070 = getelementptr i8, ptr %1, i32 %shl1068
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1070, i8 0) #13, !srcloc !196
  br label %if.end1081

do.body1074:                                      ; preds = %if.else1048
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc91x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #13, !srcloc !855
  unreachable

if.end1081:                                       ; preds = %do.body1054, %if.then1046
  %call1085 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %139 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %call1085, ptr %protocol, align 8
  %call1086 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #13
  %stats1087 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %140 = ptrtoint ptr %stats1087 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %stats1087, align 8
  %inc1088 = add i32 %141, 1
  store i32 %inc1088, ptr %stats1087, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %142 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rx_bytes, align 8
  %add1090 = add i32 %143, %sub763
  store i32 %add1090, ptr %rx_bytes, align 8
  br label %cleanup1094

cleanup1094:                                      ; preds = %if.end1081, %if.end749, %if.then519, %if.end516.cleanup1094_crit_edge, %if.then70, %do.body60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_drv_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @netif_device_detach(ptr noundef nonnull %1) #13
  tail call fastcc void @smc_shutdown(ptr noundef nonnull %1)
  %phy_type.i = getelementptr i8, ptr %1, i32 2368
  %4 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then2.if.end3_crit_edge, label %if.end.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %mii.i = getelementptr i8, ptr %1, i32 2372
  %6 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii.i, align 4
  %phy_configure.i = getelementptr i8, ptr %1, i32 2404
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %phy_configure.i) #13
  %call2.i = tail call i32 @smc_phy_read(ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #13
  %or.i = or i32 %call2.i, 2048
  tail call void @smc_phy_write(ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0, i32 noundef %or.i) #13
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %if.then2.if.end3_crit_edge, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_drv_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call2 = tail call fastcc i32 @smc_enable_device(ptr noundef %add.ptr)
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.then
  tail call fastcc void @smc_reset(ptr noundef nonnull %1)
  tail call fastcc void @smc_enable(ptr noundef nonnull %1)
  %phy_type = getelementptr i8, ptr %1, i32 2368
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.then4.if.end_crit_edge, label %if.then5

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %phy_configure = getelementptr i8, ptr %1, i32 2404
  tail call void @smc_phy_configure(ptr noundef %phy_configure)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then4.if.end_crit_edge
  tail call void @netif_device_attach(ptr noundef nonnull %1) #13
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
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
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !68, !69, !71, !73, !74, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !141, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !162, !164, !166, !167, !168, !170, !172, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__param_nowait, !1, !"__param_nowait", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 91, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowaittype339, !1, !"__UNIQUE_ID_nowaittype339", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowait340, !4, !"__UNIQUE_ID_nowait340", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 92, i32 1}
!5 = !{ptr @__param_watchdog, !6, !"__param_watchdog", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 98, i32 1}
!7 = !{ptr @__UNIQUE_ID_watchdogtype341, !6, !"__UNIQUE_ID_watchdogtype341", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_watchdog342, !9, !"__UNIQUE_ID_watchdog342", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 99, i32 1}
!10 = !{ptr @__UNIQUE_ID_file343, !11, !"__UNIQUE_ID_file343", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 101, i32 1}
!12 = !{ptr @__UNIQUE_ID_license344, !11, !"__UNIQUE_ID_license344", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias345, !14, !"__UNIQUE_ID_alias345", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 102, i32 1}
!15 = !{ptr @__initcall__kmod_smc91x__403_2492_smc_driver_init6, !16, !"__initcall__kmod_smc91x__403_2492_smc_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2492, i32 1}
!17 = !{ptr @__exitcall_smc_driver_exit, !16, !"__exitcall_smc_driver_exit", i1 false, i1 false}
!18 = !{ptr @__param_str_nowait, !1, !"__param_str_nowait", i1 false, i1 false}
!19 = !{ptr @nowait, !20, !"nowait", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 90, i32 12}
!21 = !{ptr @__param_str_watchdog, !6, !"__param_str_watchdog", i1 false, i1 false}
!22 = !{ptr @watchdog, !23, !"watchdog", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 97, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2485, i32 11}
!26 = !{ptr @smc_driver, !27, !"smc_driver", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2481, i32 31}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2269, i32 4}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @smc_drv_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @smc_drv_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2283, i32 12}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2292, i32 12}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2304, i32 45}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2315, i32 45}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2319, i32 42}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2337, i32 59}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2409, i32 2}
!50 = !{ptr @smc_drv_probe._entry.12, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @smc_drv_probe._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2124, i32 77}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1865, i32 9}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1893, i32 20}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1908, i32 20}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1916, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @smc_probe._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @smc_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @smc_probe.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1922, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1960, i32 20}
!71 = !{ptr @smc_probe.__key.23, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1971, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2022, i32 20}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2027, i32 4}
!78 = !{ptr @smc_probe._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @smc_probe._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2029, i32 3}
!82 = !{ptr @smc_probe._entry.29, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @smc_probe._entry_ptr.31, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2034, i32 21}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2037, i32 21}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2042, i32 4}
!92 = !{ptr @smc_probe.__UNIQUE_ID_ddebug400, !91, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2044, i32 4}
!95 = !{ptr @smc_probe.__UNIQUE_ID_ddebug401, !94, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2046, i32 4}
!98 = !{ptr @smc_probe.__UNIQUE_ID_ddebug402, !97, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 735, i32 10}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 736, i32 10}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 737, i32 10}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 738, i32 10}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 739, i32 10}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 740, i32 10}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 741, i32 10}
!113 = !{ptr @chip_ids, !114, !"chip_ids", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/smsc/smc91x.h", i32 733, i32 21}
!115 = !{ptr @version, !116, !"version", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 47, i32 19}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 326, i32 2}
!119 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @smc_reset.__UNIQUE_ID_ddebug347, !118, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!121 = !{ptr @smc_netdev_ops, !122, !"smc_netdev_ops", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1748, i32 36}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1176, i32 21}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1177, i32 23}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1177, i32 30}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 653, i32 20}
!131 = !{ptr @smc_set_multicast_list.invert3, !132, !"invert3", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1411, i32 30}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1341, i32 2}
!135 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @smc_timeout.__UNIQUE_ID_ddebug385, !134, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!137 = !{ptr @smc_ethtool_ops, !138, !"smc_ethtool_ops", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1734, i32 33}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 565, i32 19}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1052, i32 20}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1079, i32 20}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 1282, i32 4}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @smc_interrupt.__UNIQUE_ID_ddebug382, !146, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 714, i32 3}
!151 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @smc_tx.__UNIQUE_ID_ddebug361, !150, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 735, i32 3}
!155 = !{ptr @smc_tx.__UNIQUE_ID_ddebug363, !154, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!156 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 740, i32 21}
!160 = !{ptr @smc_tx.__UNIQUE_ID_ddebug364, !161, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 745, i32 2}
!162 = !{ptr @smc_tx.__UNIQUE_ID_ddebug365, !163, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 749, i32 2}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 408, i32 3}
!166 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @smc_rcv.__UNIQUE_ID_ddebug351, !165, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 430, i32 20}
!170 = !{ptr @smc_rcv.__UNIQUE_ID_ddebug353, !171, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 434, i32 3}
!172 = !{ptr @smc_rcv.__UNIQUE_ID_ddebug354, !173, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 462, i32 4}
!174 = !{ptr @smc_rcv.__UNIQUE_ID_ddebug355, !175, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 484, i32 3}
!176 = !{ptr @smc91x_match, !177, !"smc91x_match", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2188, i32 34}
!178 = !{ptr @smc91x_acpi_match, !179, !"smc91x_acpi_match", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2181, i32 36}
!180 = !{ptr @smc_drv_pm_ops, !181, !"smc_drv_pm_ops", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/smsc/smc91x.c", i32 2476, i32 32}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"auto-init"}
!192 = !{i64 806851, i64 806912}
!193 = !{i64 4686979}
!194 = !{i64 2157780177}
!195 = !{i64 2157780449}
!196 = !{i64 4686584}
!197 = !{i64 2157780818}
!198 = !{i64 2157781621}
!199 = !{i64 2157781960}
!200 = !{i64 2157782329}
!201 = !{i64 2157782642}
!202 = !{i64 809583}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i64 809868}
!205 = !{i64 4686361}
!206 = !{i64 2157717998}
!207 = !{i64 2157718533}
!208 = !{i64 2157718895}
!209 = !{i64 2157719161, i64 2157719661, i64 2157719198, i64 2157719254, i64 2157719288, i64 2157719312, i64 2157719353, i64 2157719374, i64 2157719402, i64 2157719436}
!210 = !{i64 2157723606}
!211 = !{i64 4686781}
!212 = !{i64 2156828726}
!213 = !{i64 4686161}
!214 = !{i64 2157725098}
!215 = !{i64 2157725500}
!216 = !{i64 2157725858, i64 2157726358, i64 2157725895, i64 2157725951, i64 2157725985, i64 2157726009, i64 2157726050, i64 2157726071, i64 2157726099, i64 2157726133}
!217 = !{i64 2157727931}
!218 = !{i64 2157728466}
!219 = !{i64 2157728828}
!220 = !{i64 2157729094, i64 2157729594, i64 2157729131, i64 2157729187, i64 2157729221, i64 2157729245, i64 2157729286, i64 2157729307, i64 2157729335, i64 2157729369}
!221 = !{i64 2157730917}
!222 = !{i64 2157732409}
!223 = !{i64 2157732811}
!224 = !{i64 2157733169, i64 2157733669, i64 2157733206, i64 2157733262, i64 2157733296, i64 2157733320, i64 2157733361, i64 2157733382, i64 2157733410, i64 2157733444}
!225 = !{i64 2157735283}
!226 = !{i64 2157735818}
!227 = !{i64 2157736180}
!228 = !{i64 2157736446, i64 2157736946, i64 2157736483, i64 2157736539, i64 2157736573, i64 2157736597, i64 2157736638, i64 2157736659, i64 2157736687, i64 2157736721}
!229 = !{i64 2157738305}
!230 = !{i64 2157739797}
!231 = !{i64 2157740199}
!232 = !{i64 2157740557, i64 2157741057, i64 2157740594, i64 2157740650, i64 2157740684, i64 2157740708, i64 2157740749, i64 2157740770, i64 2157740798, i64 2157740832}
!233 = !{i64 2157742670}
!234 = !{i64 2157743205}
!235 = !{i64 2157743567}
!236 = !{i64 2157743833, i64 2157744333, i64 2157743870, i64 2157743926, i64 2157743960, i64 2157743984, i64 2157744025, i64 2157744046, i64 2157744074, i64 2157744108}
!237 = !{!"branch_weights", i32 2000, i32 1}
!238 = !{i64 2157754438}
!239 = !{i64 2157755930}
!240 = !{i64 2157756332}
!241 = !{i64 2157756690, i64 2157757190, i64 2157756727, i64 2157756783, i64 2157756817, i64 2157756841, i64 2157756882, i64 2157756903, i64 2157756931, i64 2157756965}
!242 = !{i64 2157759118}
!243 = !{i64 2157759653}
!244 = !{i64 2157760015}
!245 = !{i64 2157760281, i64 2157760781, i64 2157760318, i64 2157760374, i64 2157760408, i64 2157760432, i64 2157760473, i64 2157760494, i64 2157760522, i64 2157760556}
!246 = !{i64 2157762362}
!247 = !{i64 2157762897}
!248 = !{i64 2157763259}
!249 = !{i64 2157763525, i64 2157764025, i64 2157763562, i64 2157763618, i64 2157763652, i64 2157763676, i64 2157763717, i64 2157763738, i64 2157763766, i64 2157763800}
!250 = !{i64 2157765606}
!251 = !{i64 2157766141}
!252 = !{i64 2157766503}
!253 = !{i64 2157766769, i64 2157767269, i64 2157766806, i64 2157766862, i64 2157766896, i64 2157766920, i64 2157766961, i64 2157766982, i64 2157767010, i64 2157767044}
!254 = !{i64 2157695531}
!255 = !{i64 2157697023}
!256 = !{i64 2157697425}
!257 = !{i64 2157697783, i64 2157698283, i64 2157697820, i64 2157697876, i64 2157697910, i64 2157697934, i64 2157697975, i64 2157697996, i64 2157698024, i64 2157698058}
!258 = !{i64 2157699647}
!259 = !{i64 2157701818, i64 2157702318, i64 2157701855, i64 2157701911, i64 2157701945, i64 2157701969, i64 2157702010, i64 2157702031, i64 2157702059, i64 2157702093}
!260 = !{i64 2157704469}
!261 = !{i64 2157704871}
!262 = !{i64 2157705229, i64 2157705729, i64 2157705266, i64 2157705322, i64 2157705356, i64 2157705380, i64 2157705421, i64 2157705442, i64 2157705470, i64 2157705504}
!263 = !{i64 2157707590}
!264 = !{i64 2157708411}
!265 = !{i64 2157709574, i64 2157710074, i64 2157709611, i64 2157709667, i64 2157709701, i64 2157709725, i64 2157709766, i64 2157709787, i64 2157709815, i64 2157709849}
!266 = !{i64 2157711426}
!267 = !{i64 2157713591, i64 2157714091, i64 2157713628, i64 2157713684, i64 2157713718, i64 2157713742, i64 2157713783, i64 2157713804, i64 2157713832, i64 2157713866}
!268 = !{i64 2149016528, i64 2149016533, i64 2149016546, i64 2149016590, i64 2149016624, i64 2149016645}
!269 = !{i64 2156841669}
!270 = !{i64 2156843161}
!271 = !{i64 2156843563}
!272 = !{i64 2156843919, i64 2156844418, i64 2156843956, i64 2156844012, i64 2156844046, i64 2156844070, i64 2156844111, i64 2156844132, i64 2156844160, i64 2156844194}
!273 = !{i64 2156845765}
!274 = !{i64 2156847928, i64 2156848427, i64 2156847965, i64 2156848021, i64 2156848055, i64 2156848079, i64 2156848120, i64 2156848141, i64 2156848169, i64 2156848203}
!275 = !{i64 2156849786}
!276 = !{i64 2156851278}
!277 = !{i64 2156851680}
!278 = !{i64 2156852036, i64 2156852535, i64 2156852073, i64 2156852129, i64 2156852163, i64 2156852187, i64 2156852228, i64 2156852249, i64 2156852277, i64 2156852311}
!279 = !{i64 2156854674}
!280 = !{i64 2156855076}
!281 = !{i64 2156855432, i64 2156855931, i64 2156855469, i64 2156855525, i64 2156855559, i64 2156855583, i64 2156855624, i64 2156855645, i64 2156855673, i64 2156855707}
!282 = !{i64 2156857251}
!283 = !{i64 2156858743}
!284 = !{i64 2156859145}
!285 = !{i64 2156859501, i64 2156860000, i64 2156859538, i64 2156859594, i64 2156859628, i64 2156859652, i64 2156859693, i64 2156859714, i64 2156859742, i64 2156859776}
!286 = !{i64 2156862181}
!287 = !{i64 2156862583}
!288 = !{i64 2156862939, i64 2156863438, i64 2156862976, i64 2156863032, i64 2156863066, i64 2156863090, i64 2156863131, i64 2156863152, i64 2156863180, i64 2156863214}
!289 = !{i64 2156865294}
!290 = !{i64 2156866786}
!291 = !{i64 2156867188}
!292 = !{i64 2156867544, i64 2156868043, i64 2156867581, i64 2156867637, i64 2156867671, i64 2156867695, i64 2156867736, i64 2156867757, i64 2156867785, i64 2156867819}
!293 = !{i64 2156870173}
!294 = !{i64 2156870575}
!295 = !{i64 2156870931, i64 2156871430, i64 2156870968, i64 2156871024, i64 2156871058, i64 2156871082, i64 2156871123, i64 2156871144, i64 2156871172, i64 2156871206}
!296 = !{i64 2156873554}
!297 = !{i64 2156873956}
!298 = !{i64 2156874312, i64 2156874811, i64 2156874349, i64 2156874405, i64 2156874439, i64 2156874463, i64 2156874504, i64 2156874525, i64 2156874553, i64 2156874587}
!299 = !{i64 2156876131}
!300 = !{i64 2156877623}
!301 = !{i64 2156878025}
!302 = !{i64 2156878381, i64 2156878880, i64 2156878418, i64 2156878474, i64 2156878508, i64 2156878532, i64 2156878573, i64 2156878594, i64 2156878622, i64 2156878656}
!303 = !{i64 2156880493}
!304 = !{i64 2156881028}
!305 = !{i64 2156881390}
!306 = !{i64 2156881654, i64 2156882153, i64 2156881691, i64 2156881747, i64 2156881781, i64 2156881805, i64 2156881846, i64 2156881867, i64 2156881895, i64 2156881929}
!307 = !{i64 2156888363}
!308 = !{i64 2156888765}
!309 = !{i64 2156889121, i64 2156889620, i64 2156889158, i64 2156889214, i64 2156889248, i64 2156889272, i64 2156889313, i64 2156889334, i64 2156889362, i64 2156889396}
!310 = !{i64 2156890940}
!311 = !{i64 2156892432}
!312 = !{i64 2156892834}
!313 = !{i64 2156893190, i64 2156893689, i64 2156893227, i64 2156893283, i64 2156893317, i64 2156893341, i64 2156893382, i64 2156893403, i64 2156893431, i64 2156893465}
!314 = !{i64 2156895832}
!315 = !{i64 2156896234}
!316 = !{i64 2156896590, i64 2156897089, i64 2156896627, i64 2156896683, i64 2156896717, i64 2156896741, i64 2156896782, i64 2156896803, i64 2156896831, i64 2156896865}
!317 = !{i64 2156901861}
!318 = !{i64 2156902162}
!319 = !{i64 2156902378}
!320 = !{i64 2156902522, i64 2156902695, i64 2156902710, i64 2156902762, i64 2156902829, i64 2156902853, i64 2156902894, i64 2156902915, i64 2156902943, i64 2156902975}
!321 = !{i64 2156903904}
!322 = !{i64 2156904439}
!323 = !{i64 2156904801}
!324 = !{i64 2156905065, i64 2156905564, i64 2156905102, i64 2156905158, i64 2156905192, i64 2156905216, i64 2156905257, i64 2156905278, i64 2156905306, i64 2156905340}
!325 = !{i64 2156909271}
!326 = !{i64 2156909113}
!327 = !{i64 2157068646}
!328 = !{i64 2157069467}
!329 = !{i64 2157070628, i64 2157071127, i64 2157070665, i64 2157070721, i64 2157070755, i64 2157070779, i64 2157070820, i64 2157070841, i64 2157070869, i64 2157070903}
!330 = !{i64 2157072701}
!331 = !{i64 2157073371}
!332 = !{i64 2157075541, i64 2157076040, i64 2157075578, i64 2157075634, i64 2157075668, i64 2157075692, i64 2157075733, i64 2157075754, i64 2157075782, i64 2157075816}
!333 = !{i64 2157077424}
!334 = !{i64 2157078977}
!335 = !{i64 2157079379}
!336 = !{i64 2157079735, i64 2157080234, i64 2157079772, i64 2157079828, i64 2157079862, i64 2157079886, i64 2157079927, i64 2157079948, i64 2157079976, i64 2157080010}
!337 = !{i64 2157084392}
!338 = !{i64 2157085972}
!339 = !{i64 2157086374}
!340 = !{i64 2157086730, i64 2157087229, i64 2157086767, i64 2157086823, i64 2157086857, i64 2157086881, i64 2157086922, i64 2157086943, i64 2157086971, i64 2157087005}
!341 = !{i64 2157093373}
!342 = !{i64 2157093775}
!343 = !{i64 2157094131, i64 2157094630, i64 2157094168, i64 2157094224, i64 2157094258, i64 2157094282, i64 2157094323, i64 2157094344, i64 2157094372, i64 2157094406}
!344 = !{i64 2157098784}
!345 = !{i64 2157099186}
!346 = !{i64 2157099542, i64 2157100041, i64 2157099579, i64 2157099635, i64 2157099669, i64 2157099693, i64 2157099734, i64 2157099755, i64 2157099783, i64 2157099817}
!347 = !{i64 2157102186}
!348 = !{i64 2157102588}
!349 = !{i64 2157102944, i64 2157103443, i64 2157102981, i64 2157103037, i64 2157103071, i64 2157103095, i64 2157103136, i64 2157103157, i64 2157103185, i64 2157103219}
!350 = !{i64 2157105536}
!351 = !{i64 2157106357}
!352 = !{i64 2157107518, i64 2157108017, i64 2157107555, i64 2157107611, i64 2157107645, i64 2157107669, i64 2157107710, i64 2157107731, i64 2157107759, i64 2157107793}
!353 = !{i64 2157109376}
!354 = !{i64 2157111545, i64 2157112044, i64 2157111582, i64 2157111638, i64 2157111672, i64 2157111696, i64 2157111737, i64 2157111758, i64 2157111786, i64 2157111820}
!355 = !{i64 2157335313}
!356 = !{i64 2157336805}
!357 = !{i64 2157337207}
!358 = !{i64 2157337565, i64 2157338065, i64 2157337602, i64 2157337658, i64 2157337692, i64 2157337716, i64 2157337757, i64 2157337778, i64 2157337806, i64 2157337840}
!359 = !{i64 2157339482}
!360 = !{i64 2157341075}
!361 = !{i64 2157341477}
!362 = !{i64 2157341835, i64 2157342335, i64 2157341872, i64 2157341928, i64 2157341962, i64 2157341986, i64 2157342027, i64 2157342048, i64 2157342076, i64 2157342110}
!363 = !{i64 2157348568}
!364 = !{i64 2157350060}
!365 = !{i64 2157350462}
!366 = !{i64 2157350820, i64 2157351320, i64 2157350857, i64 2157350913, i64 2157350947, i64 2157350971, i64 2157351012, i64 2157351033, i64 2157351061, i64 2157351095}
!367 = !{i64 2157259254}
!368 = !{i64 2157260746}
!369 = !{i64 2157261148}
!370 = !{i64 2157261504, i64 2157262003, i64 2157261541, i64 2157261597, i64 2157261631, i64 2157261655, i64 2157261696, i64 2157261717, i64 2157261745, i64 2157261779}
!371 = !{i64 2157241699}
!372 = !{i64 2157242234}
!373 = !{i64 2157242596}
!374 = !{i64 2157242860, i64 2157243359, i64 2157242897, i64 2157242953, i64 2157242987, i64 2157243011, i64 2157243052, i64 2157243073, i64 2157243101, i64 2157243135}
!375 = !{i64 2157245514}
!376 = !{i64 2157245916}
!377 = !{i64 2157246272, i64 2157246771, i64 2157246309, i64 2157246365, i64 2157246399, i64 2157246423, i64 2157246464, i64 2157246485, i64 2157246513, i64 2157246547}
!378 = !{i64 2157248384}
!379 = !{i64 2157248919}
!380 = !{i64 2157249281}
!381 = !{i64 2157249545, i64 2157250044, i64 2157249582, i64 2157249638, i64 2157249672, i64 2157249696, i64 2157249737, i64 2157249758, i64 2157249786, i64 2157249820}
!382 = !{i64 2157252185}
!383 = !{i64 2157252587}
!384 = !{i64 2157252943, i64 2157253442, i64 2157252980, i64 2157253036, i64 2157253070, i64 2157253094, i64 2157253135, i64 2157253156, i64 2157253184, i64 2157253218}
!385 = !{i64 2157256139}
!386 = !{i64 2157256541}
!387 = !{i64 2157256897, i64 2157257396, i64 2157256934, i64 2157256990, i64 2157257024, i64 2157257048, i64 2157257089, i64 2157257110, i64 2157257138, i64 2157257172}
!388 = !{i64 2157268233}
!389 = !{i64 2157268534}
!390 = !{i64 2157268750}
!391 = !{i64 2157268894, i64 2157269067, i64 2157269082, i64 2157269134, i64 2157269201, i64 2157269225, i64 2157269266, i64 2157269287, i64 2157269315, i64 2157269347}
!392 = !{i64 2157270529}
!393 = !{i64 2157270931}
!394 = !{i64 2157271287, i64 2157271786, i64 2157271324, i64 2157271380, i64 2157271414, i64 2157271438, i64 2157271479, i64 2157271500, i64 2157271528, i64 2157271562}
!395 = !{i64 2157275841}
!396 = !{i64 2157277333}
!397 = !{i64 2157277735}
!398 = !{i64 2157278091, i64 2157278590, i64 2157278128, i64 2157278184, i64 2157278218, i64 2157278242, i64 2157278283, i64 2157278304, i64 2157278332, i64 2157278366}
!399 = !{i64 2157279910}
!400 = !{i64 2157281402}
!401 = !{i64 2157281804}
!402 = !{i64 2157282160, i64 2157282659, i64 2157282197, i64 2157282253, i64 2157282287, i64 2157282311, i64 2157282352, i64 2157282373, i64 2157282401, i64 2157282435}
!403 = !{i64 2157292950}
!404 = !{i64 2157293251}
!405 = !{i64 2157293467}
!406 = !{i64 2157293611, i64 2157293784, i64 2157293799, i64 2157293851, i64 2157293918, i64 2157293942, i64 2157293983, i64 2157294004, i64 2157294032, i64 2157294064}
!407 = !{i64 2157295246}
!408 = !{i64 2157295648}
!409 = !{i64 2157296004, i64 2157296503, i64 2157296041, i64 2157296097, i64 2157296131, i64 2157296155, i64 2157296196, i64 2157296217, i64 2157296245, i64 2157296279}
!410 = !{i64 2157300558}
!411 = !{i64 2157302050}
!412 = !{i64 2157302452}
!413 = !{i64 2157302808, i64 2157303307, i64 2157302845, i64 2157302901, i64 2157302935, i64 2157302959, i64 2157303000, i64 2157303021, i64 2157303049, i64 2157303083}
!414 = !{i64 2156951997}
!415 = !{i64 2156953489}
!416 = !{i64 2156953891}
!417 = !{i64 2156954247, i64 2156954746, i64 2156954284, i64 2156954340, i64 2156954374, i64 2156954398, i64 2156954439, i64 2156954460, i64 2156954488, i64 2156954522}
!418 = !{i64 2156956093}
!419 = !{i64 2156958256, i64 2156958755, i64 2156958293, i64 2156958349, i64 2156958383, i64 2156958407, i64 2156958448, i64 2156958469, i64 2156958497, i64 2156958531}
!420 = !{i64 2156960114}
!421 = !{i64 2156961606}
!422 = !{i64 2156962008}
!423 = !{i64 2156962364, i64 2156962863, i64 2156962401, i64 2156962457, i64 2156962491, i64 2156962515, i64 2156962556, i64 2156962577, i64 2156962605, i64 2156962639}
!424 = !{i64 2156964993}
!425 = !{i64 2156965395}
!426 = !{i64 2156965751, i64 2156966250, i64 2156965788, i64 2156965844, i64 2156965878, i64 2156965902, i64 2156965943, i64 2156965964, i64 2156965992, i64 2156966026}
!427 = !{i64 2156968374}
!428 = !{i64 2156968776}
!429 = !{i64 2156969132, i64 2156969631, i64 2156969169, i64 2156969225, i64 2156969259, i64 2156969283, i64 2156969324, i64 2156969345, i64 2156969373, i64 2156969407}
!430 = !{i64 2156970951}
!431 = !{i64 2156972443}
!432 = !{i64 2156972845}
!433 = !{i64 2156973201, i64 2156973700, i64 2156973238, i64 2156973294, i64 2156973328, i64 2156973352, i64 2156973393, i64 2156973414, i64 2156973442, i64 2156973476}
!434 = !{i64 2156979901}
!435 = !{i64 2156980202}
!436 = !{i64 2156980418}
!437 = !{i64 2156980562, i64 2156980735, i64 2156980750, i64 2156980802, i64 2156980869, i64 2156980893, i64 2156980934, i64 2156980955, i64 2156980983, i64 2156981015}
!438 = !{i64 2156982176}
!439 = !{i64 2156982578}
!440 = !{i64 2156982934, i64 2156983433, i64 2156982971, i64 2156983027, i64 2156983061, i64 2156983085, i64 2156983126, i64 2156983147, i64 2156983175, i64 2156983209}
!441 = !{i64 2157391296}
!442 = !{i64 2157391831}
!443 = !{i64 2157392193}
!444 = !{i64 2157392459, i64 2157392959, i64 2157392496, i64 2157392552, i64 2157392586, i64 2157392610, i64 2157392651, i64 2157392672, i64 2157392700, i64 2157392734}
!445 = !{i64 2157394275}
!446 = !{i64 2157395096}
!447 = !{i64 2157396259, i64 2157396759, i64 2157396296, i64 2157396352, i64 2157396386, i64 2157396410, i64 2157396451, i64 2157396472, i64 2157396500, i64 2157396534}
!448 = !{i64 2157398106}
!449 = !{i64 2157400271, i64 2157400771, i64 2157400308, i64 2157400364, i64 2157400398, i64 2157400422, i64 2157400463, i64 2157400484, i64 2157400512, i64 2157400546}
!450 = !{i64 2157402092}
!451 = !{i64 2157402913}
!452 = !{i64 2157404076, i64 2157404576, i64 2157404113, i64 2157404169, i64 2157404203, i64 2157404227, i64 2157404268, i64 2157404289, i64 2157404317, i64 2157404351}
!453 = !{i64 2157430524}
!454 = !{i64 2157432050}
!455 = !{i64 2157432585}
!456 = !{i64 2157432947}
!457 = !{i64 2157433213, i64 2157433713, i64 2157433250, i64 2157433306, i64 2157433340, i64 2157433364, i64 2157433405, i64 2157433426, i64 2157433454, i64 2157433488}
!458 = !{i64 2157435806}
!459 = !{i64 2157436208}
!460 = !{i64 2157436566, i64 2157437066, i64 2157436603, i64 2157436659, i64 2157436693, i64 2157436717, i64 2157436758, i64 2157436779, i64 2157436807, i64 2157436841}
!461 = !{i64 2157445985}
!462 = !{i64 2157447477}
!463 = !{i64 2157447879}
!464 = !{i64 2157448237, i64 2157448737, i64 2157448274, i64 2157448330, i64 2157448364, i64 2157448388, i64 2157448429, i64 2157448450, i64 2157448478, i64 2157448512}
!465 = !{i64 2157450354}
!466 = !{i64 2157450889}
!467 = !{i64 2157451251}
!468 = !{i64 2157451517, i64 2157452017, i64 2157451554, i64 2157451610, i64 2157451644, i64 2157451668, i64 2157451709, i64 2157451730, i64 2157451758, i64 2157451792}
!469 = !{i64 2157453337}
!470 = !{i64 2157454829}
!471 = !{i64 2157455231}
!472 = !{i64 2157455589, i64 2157456089, i64 2157455626, i64 2157455682, i64 2157455716, i64 2157455740, i64 2157455781, i64 2157455802, i64 2157455830, i64 2157455864}
!473 = !{i64 2157472121}
!474 = !{i64 2157473647}
!475 = !{i64 2157474182}
!476 = !{i64 2157474544}
!477 = !{i64 2157474810, i64 2157475310, i64 2157474847, i64 2157474903, i64 2157474937, i64 2157474961, i64 2157475002, i64 2157475023, i64 2157475051, i64 2157475085}
!478 = !{i64 2157477403}
!479 = !{i64 2157477805}
!480 = !{i64 2157478163, i64 2157478663, i64 2157478200, i64 2157478256, i64 2157478290, i64 2157478314, i64 2157478355, i64 2157478376, i64 2157478404, i64 2157478438}
!481 = !{i64 2157370545}
!482 = !{i64 2157372037}
!483 = !{i64 2157372439}
!484 = !{i64 2157372797, i64 2157373297, i64 2157372834, i64 2157372890, i64 2157372924, i64 2157372948, i64 2157372989, i64 2157373010, i64 2157373038, i64 2157373072}
!485 = !{i64 2157374910}
!486 = !{i64 2157375445}
!487 = !{i64 2157375807}
!488 = !{i64 2157376073, i64 2157376573, i64 2157376110, i64 2157376166, i64 2157376200, i64 2157376224, i64 2157376265, i64 2157376286, i64 2157376314, i64 2157376348}
!489 = !{i64 2157378728}
!490 = !{i64 2157379130}
!491 = !{i64 2157379488, i64 2157379988, i64 2157379525, i64 2157379581, i64 2157379615, i64 2157379639, i64 2157379680, i64 2157379701, i64 2157379729, i64 2157379763}
!492 = !{i64 2157382114}
!493 = !{i64 2157382516}
!494 = !{i64 2157382874, i64 2157383374, i64 2157382911, i64 2157382967, i64 2157383001, i64 2157383025, i64 2157383066, i64 2157383087, i64 2157383115, i64 2157383149}
!495 = !{i64 2157384694}
!496 = !{i64 2157386186}
!497 = !{i64 2157386588}
!498 = !{i64 2157386946, i64 2157387446, i64 2157386983, i64 2157387039, i64 2157387073, i64 2157387097, i64 2157387138, i64 2157387159, i64 2157387187, i64 2157387221}
!499 = !{i64 2157481040}
!500 = !{i64 2157482566}
!501 = !{i64 2157483101}
!502 = !{i64 2157483463}
!503 = !{i64 2157483729, i64 2157484229, i64 2157483766, i64 2157483822, i64 2157483856, i64 2157483880, i64 2157483921, i64 2157483942, i64 2157483970, i64 2157484004}
!504 = !{i64 2157486322}
!505 = !{i64 2157486724}
!506 = !{i64 2157487082, i64 2157487582, i64 2157487119, i64 2157487175, i64 2157487209, i64 2157487233, i64 2157487274, i64 2157487295, i64 2157487323, i64 2157487357}
!507 = !{i64 2157494015}
!508 = !{i64 2157495541}
!509 = !{i64 2157496076}
!510 = !{i64 2157496438}
!511 = !{i64 2157496704, i64 2157497204, i64 2157496741, i64 2157496797, i64 2157496831, i64 2157496855, i64 2157496896, i64 2157496917, i64 2157496945, i64 2157496979}
!512 = !{i64 2157499297}
!513 = !{i64 2157499699}
!514 = !{i64 2157500057, i64 2157500557, i64 2157500094, i64 2157500150, i64 2157500184, i64 2157500208, i64 2157500249, i64 2157500270, i64 2157500298, i64 2157500332}
!515 = !{i64 2157505273}
!516 = !{i64 2157506854}
!517 = !{i64 2157507256}
!518 = !{i64 2157507614, i64 2157508114, i64 2157507651, i64 2157507707, i64 2157507741, i64 2157507765, i64 2157507806, i64 2157507827, i64 2157507855, i64 2157507889}
!519 = !{i64 2157509473}
!520 = !{i64 2157511644, i64 2157512144, i64 2157511681, i64 2157511737, i64 2157511771, i64 2157511795, i64 2157511836, i64 2157511857, i64 2157511885, i64 2157511919}
!521 = !{i64 2157115462, i64 2157115961, i64 2157115499, i64 2157115555, i64 2157115589, i64 2157115613, i64 2157115654, i64 2157115675, i64 2157115703, i64 2157115737}
!522 = !{i64 2157118563}
!523 = !{i64 2157118965}
!524 = !{i64 2157119321, i64 2157119820, i64 2157119358, i64 2157119414, i64 2157119448, i64 2157119472, i64 2157119513, i64 2157119534, i64 2157119562, i64 2157119596}
!525 = !{i64 2157121142}
!526 = !{i64 2157121963}
!527 = !{i64 2157123124, i64 2157123623, i64 2157123161, i64 2157123217, i64 2157123251, i64 2157123275, i64 2157123316, i64 2157123337, i64 2157123365, i64 2157123399}
!528 = !{i64 2157125185}
!529 = !{i64 2157126711}
!530 = !{i64 2157127246}
!531 = !{i64 2157127608}
!532 = !{i64 2157127872, i64 2157128371, i64 2157127909, i64 2157127965, i64 2157127999, i64 2157128023, i64 2157128064, i64 2157128085, i64 2157128113, i64 2157128147}
!533 = !{i64 2157130464}
!534 = !{i64 2157130866}
!535 = !{i64 2157131222, i64 2157131721, i64 2157131259, i64 2157131315, i64 2157131349, i64 2157131373, i64 2157131414, i64 2157131435, i64 2157131463, i64 2157131497}
!536 = !{i64 2157137051}
!537 = !{i64 2157137872}
!538 = !{i64 2157139033, i64 2157139532, i64 2157139070, i64 2157139126, i64 2157139160, i64 2157139184, i64 2157139225, i64 2157139246, i64 2157139274, i64 2157139308}
!539 = !{i64 2157140891}
!540 = !{i64 2157143060, i64 2157143559, i64 2157143097, i64 2157143153, i64 2157143187, i64 2157143211, i64 2157143252, i64 2157143273, i64 2157143301, i64 2157143335}
!541 = !{i64 2157559773}
!542 = !{i64 2157565326}
!543 = !{i64 2157565728}
!544 = !{i64 2157566086, i64 2157566586, i64 2157566123, i64 2157566179, i64 2157566213, i64 2157566237, i64 2157566278, i64 2157566299, i64 2157566327, i64 2157566361}
!545 = !{i64 2157568738}
!546 = !{i64 2157569140}
!547 = !{i64 2157569498, i64 2157569998, i64 2157569535, i64 2157569591, i64 2157569625, i64 2157569649, i64 2157569690, i64 2157569711, i64 2157569739, i64 2157569773}
!548 = !{i64 2157571318}
!549 = !{i64 2157572810}
!550 = !{i64 2157573212}
!551 = !{i64 2157573570, i64 2157574070, i64 2157573607, i64 2157573663, i64 2157573697, i64 2157573721, i64 2157573762, i64 2157573783, i64 2157573811, i64 2157573845}
!552 = !{i64 2157576527}
!553 = !{i64 2157576929}
!554 = !{i64 2157577287, i64 2157577787, i64 2157577324, i64 2157577380, i64 2157577414, i64 2157577438, i64 2157577479, i64 2157577500, i64 2157577528, i64 2157577562}
!555 = !{i64 2157579883}
!556 = !{i64 2157580285}
!557 = !{i64 2157580643, i64 2157581143, i64 2157580680, i64 2157580736, i64 2157580770, i64 2157580794, i64 2157580835, i64 2157580856, i64 2157580884, i64 2157580918}
!558 = !{i64 2157583239}
!559 = !{i64 2157583641}
!560 = !{i64 2157583999, i64 2157584499, i64 2157584036, i64 2157584092, i64 2157584126, i64 2157584150, i64 2157584191, i64 2157584212, i64 2157584240, i64 2157584274}
!561 = !{i64 2157586595}
!562 = !{i64 2157586997}
!563 = !{i64 2157587355, i64 2157587855, i64 2157587392, i64 2157587448, i64 2157587482, i64 2157587506, i64 2157587547, i64 2157587568, i64 2157587596, i64 2157587630}
!564 = !{i64 2157589175}
!565 = !{i64 2157590667}
!566 = !{i64 2157591069}
!567 = !{i64 2157591427, i64 2157591927, i64 2157591464, i64 2157591520, i64 2157591554, i64 2157591578, i64 2157591619, i64 2157591640, i64 2157591668, i64 2157591702}
!568 = !{i64 2157518221}
!569 = !{i64 2157519042}
!570 = !{i64 2157520205, i64 2157520705, i64 2157520242, i64 2157520298, i64 2157520332, i64 2157520356, i64 2157520397, i64 2157520418, i64 2157520446, i64 2157520480}
!571 = !{i64 2157522021}
!572 = !{i64 2157522842}
!573 = !{i64 2157524005, i64 2157524505, i64 2157524042, i64 2157524098, i64 2157524132, i64 2157524156, i64 2157524197, i64 2157524218, i64 2157524246, i64 2157524280}
!574 = !{i64 2157526119}
!575 = !{i64 2157526654}
!576 = !{i64 2157527016}
!577 = !{i64 2157527282, i64 2157527782, i64 2157527319, i64 2157527375, i64 2157527409, i64 2157527433, i64 2157527474, i64 2157527495, i64 2157527523, i64 2157527557}
!578 = !{i64 2157529102}
!579 = !{i64 2157530594}
!580 = !{i64 2157530996}
!581 = !{i64 2157531354, i64 2157531854, i64 2157531391, i64 2157531447, i64 2157531481, i64 2157531505, i64 2157531546, i64 2157531567, i64 2157531595, i64 2157531629}
!582 = !{i64 2157533474}
!583 = !{i64 2157534009}
!584 = !{i64 2157534371}
!585 = !{i64 2157534637, i64 2157535137, i64 2157534674, i64 2157534730, i64 2157534764, i64 2157534788, i64 2157534829, i64 2157534850, i64 2157534878, i64 2157534912}
!586 = !{i64 2157536750}
!587 = !{i64 2157537285}
!588 = !{i64 2157537647}
!589 = !{i64 2157537913, i64 2157538413, i64 2157537950, i64 2157538006, i64 2157538040, i64 2157538064, i64 2157538105, i64 2157538126, i64 2157538154, i64 2157538188}
!590 = !{i64 2157539733}
!591 = !{i64 2157541225}
!592 = !{i64 2157541627}
!593 = !{i64 2157541985, i64 2157542485, i64 2157542022, i64 2157542078, i64 2157542112, i64 2157542136, i64 2157542177, i64 2157542198, i64 2157542226, i64 2157542260}
!594 = !{i64 2156912067}
!595 = !{i64 2156913559}
!596 = !{i64 2156913961}
!597 = !{i64 2156914317, i64 2156914816, i64 2156914354, i64 2156914410, i64 2156914444, i64 2156914468, i64 2156914509, i64 2156914530, i64 2156914558, i64 2156914592}
!598 = !{i64 2156916968}
!599 = !{i64 2156917370}
!600 = !{i64 2156917726, i64 2156918225, i64 2156917763, i64 2156917819, i64 2156917853, i64 2156917877, i64 2156917918, i64 2156917939, i64 2156917967, i64 2156918001}
!601 = !{i64 2156920377}
!602 = !{i64 2156920779}
!603 = !{i64 2156921135, i64 2156921634, i64 2156921172, i64 2156921228, i64 2156921262, i64 2156921286, i64 2156921327, i64 2156921348, i64 2156921376, i64 2156921410}
!604 = !{i64 2156922954}
!605 = !{i64 2156924446}
!606 = !{i64 2156924848}
!607 = !{i64 2156925204, i64 2156925703, i64 2156925241, i64 2156925297, i64 2156925331, i64 2156925355, i64 2156925396, i64 2156925417, i64 2156925445, i64 2156925479}
!608 = !{i64 2156928154}
!609 = !{i64 2156928556}
!610 = !{i64 2156928912, i64 2156929411, i64 2156928949, i64 2156929005, i64 2156929039, i64 2156929063, i64 2156929104, i64 2156929125, i64 2156929153, i64 2156929187}
!611 = !{i64 2156931532}
!612 = !{i64 2156931934}
!613 = !{i64 2156932290, i64 2156932789, i64 2156932327, i64 2156932383, i64 2156932417, i64 2156932441, i64 2156932482, i64 2156932503, i64 2156932531, i64 2156932565}
!614 = !{i64 2156934910}
!615 = !{i64 2156935312}
!616 = !{i64 2156935668, i64 2156936167, i64 2156935705, i64 2156935761, i64 2156935795, i64 2156935819, i64 2156935860, i64 2156935881, i64 2156935909, i64 2156935943}
!617 = !{i64 2156937509}
!618 = !{i64 2156939001}
!619 = !{i64 2156939403}
!620 = !{i64 2156939759, i64 2156940258, i64 2156939796, i64 2156939852, i64 2156939886, i64 2156939910, i64 2156939951, i64 2156939972, i64 2156940000, i64 2156940034}
!621 = !{i64 2156941617}
!622 = !{i64 2156943786, i64 2156948346, i64 2156943823, i64 2156943879, i64 2156943913, i64 2156943937, i64 2156943978, i64 2156943999, i64 2156944027, i64 2156944061}
!623 = !{i64 2157354889}
!624 = !{i64 2157356381}
!625 = !{i64 2157356783}
!626 = !{i64 2157357141, i64 2157357641, i64 2157357178, i64 2157357234, i64 2157357268, i64 2157357292, i64 2157357333, i64 2157357354, i64 2157357382, i64 2157357416}
!627 = !{i64 2157363322}
!628 = !{i64 2157363857}
!629 = !{i64 2157364219}
!630 = !{i64 2157364485, i64 2157364985, i64 2157364522, i64 2157364578, i64 2157364612, i64 2157364636, i64 2157364677, i64 2157364698, i64 2157364726, i64 2157364760}
!631 = !{i64 2157366312}
!632 = !{i64 2157367804}
!633 = !{i64 2157368206}
!634 = !{i64 2157368564, i64 2157369064, i64 2157368601, i64 2157368657, i64 2157368691, i64 2157368715, i64 2157368756, i64 2157368777, i64 2157368805, i64 2157368839}
!635 = !{i64 2157641089}
!636 = !{i64 2157642581}
!637 = !{i64 2157642983}
!638 = !{i64 2157643341, i64 2157643841, i64 2157643378, i64 2157643434, i64 2157643468, i64 2157643492, i64 2157643533, i64 2157643554, i64 2157643582, i64 2157643616}
!639 = !{i64 2157645253}
!640 = !{i64 2157646834}
!641 = !{i64 2157647236}
!642 = !{i64 2157647594, i64 2157648094, i64 2157647631, i64 2157647687, i64 2157647721, i64 2157647745, i64 2157647786, i64 2157647807, i64 2157647835, i64 2157647869}
!643 = !{i64 2157649414}
!644 = !{i64 2157650906}
!645 = !{i64 2157651308}
!646 = !{i64 2157651666, i64 2157652166, i64 2157651703, i64 2157651759, i64 2157651793, i64 2157651817, i64 2157651858, i64 2157651879, i64 2157651907, i64 2157651941}
!647 = !{i64 2157653542}
!648 = !{i64 2157655095}
!649 = !{i64 2157655497}
!650 = !{i64 2157655855, i64 2157656355, i64 2157655892, i64 2157655948, i64 2157655982, i64 2157656006, i64 2157656047, i64 2157656068, i64 2157656096, i64 2157656130}
!651 = !{i64 2157657968}
!652 = !{i64 2157658503}
!653 = !{i64 2157658865}
!654 = !{i64 2157659131, i64 2157659631, i64 2157659168, i64 2157659224, i64 2157659258, i64 2157659282, i64 2157659323, i64 2157659344, i64 2157659372, i64 2157659406}
!655 = !{i64 2157661815}
!656 = !{i64 2157662217}
!657 = !{i64 2157662575, i64 2157663075, i64 2157662612, i64 2157662668, i64 2157662702, i64 2157662726, i64 2157662767, i64 2157662788, i64 2157662816, i64 2157662850}
!658 = !{i64 2157665224}
!659 = !{i64 2157665759}
!660 = !{i64 2157666121}
!661 = !{i64 2157666387, i64 2157666887, i64 2157666424, i64 2157666480, i64 2157666514, i64 2157666538, i64 2157666579, i64 2157666600, i64 2157666628, i64 2157666662}
!662 = !{i64 2157668506}
!663 = !{i64 2157669041}
!664 = !{i64 2157669403}
!665 = !{i64 2157669669, i64 2157670169, i64 2157669706, i64 2157669762, i64 2157669796, i64 2157669820, i64 2157669861, i64 2157669882, i64 2157669910, i64 2157669944}
!666 = !{i64 2157672295}
!667 = !{i64 2157672697}
!668 = !{i64 2157673055, i64 2157673555, i64 2157673092, i64 2157673148, i64 2157673182, i64 2157673206, i64 2157673247, i64 2157673268, i64 2157673296, i64 2157673330}
!669 = !{i64 2157674875}
!670 = !{i64 2157676367}
!671 = !{i64 2157676769}
!672 = !{i64 2157677127, i64 2157681688, i64 2157677164, i64 2157677220, i64 2157677254, i64 2157677278, i64 2157677319, i64 2157677340, i64 2157677368, i64 2157677402}
!673 = !{i64 2157598468}
!674 = !{i64 2157599960}
!675 = !{i64 2157600362}
!676 = !{i64 2157600720, i64 2157601220, i64 2157600757, i64 2157600813, i64 2157600847, i64 2157600871, i64 2157600912, i64 2157600933, i64 2157600961, i64 2157600995}
!677 = !{i64 2157602588}
!678 = !{i64 2157604133}
!679 = !{i64 2157604535}
!680 = !{i64 2157604893, i64 2157605393, i64 2157604930, i64 2157604986, i64 2157605020, i64 2157605044, i64 2157605085, i64 2157605106, i64 2157605134, i64 2157605168}
!681 = !{i64 2157606713}
!682 = !{i64 2157608205}
!683 = !{i64 2157608607}
!684 = !{i64 2157608965, i64 2157609465, i64 2157609002, i64 2157609058, i64 2157609092, i64 2157609116, i64 2157609157, i64 2157609178, i64 2157609206, i64 2157609240}
!685 = !{i64 2157610834}
!686 = !{i64 2157612379}
!687 = !{i64 2157612781}
!688 = !{i64 2157613139, i64 2157613639, i64 2157613176, i64 2157613232, i64 2157613266, i64 2157613290, i64 2157613331, i64 2157613352, i64 2157613380, i64 2157613414}
!689 = !{i64 2157614959}
!690 = !{i64 2157616451}
!691 = !{i64 2157616853}
!692 = !{i64 2157617211, i64 2157617711, i64 2157617248, i64 2157617304, i64 2157617338, i64 2157617362, i64 2157617403, i64 2157617424, i64 2157617452, i64 2157617486}
!693 = !{i64 2157623385}
!694 = !{i64 2157623920}
!695 = !{i64 2157624282}
!696 = !{i64 2157624548, i64 2157625048, i64 2157624585, i64 2157624641, i64 2157624675, i64 2157624699, i64 2157624740, i64 2157624761, i64 2157624789, i64 2157624823}
!697 = !{i64 2157627232}
!698 = !{i64 2157627634}
!699 = !{i64 2157627992, i64 2157628492, i64 2157628029, i64 2157628085, i64 2157628119, i64 2157628143, i64 2157628184, i64 2157628205, i64 2157628233, i64 2157628267}
!700 = !{i64 2157630641}
!701 = !{i64 2157631176}
!702 = !{i64 2157631538}
!703 = !{i64 2157631804, i64 2157632304, i64 2157631841, i64 2157631897, i64 2157631931, i64 2157631955, i64 2157631996, i64 2157632017, i64 2157632045, i64 2157632079}
!704 = !{i64 2157634437}
!705 = !{i64 2157634839}
!706 = !{i64 2157635197, i64 2157635697, i64 2157635234, i64 2157635290, i64 2157635324, i64 2157635348, i64 2157635389, i64 2157635410, i64 2157635438, i64 2157635472}
!707 = !{i64 2157637017}
!708 = !{i64 2157638509}
!709 = !{i64 2157638911}
!710 = !{i64 2157639269, i64 2157639769, i64 2157639306, i64 2157639362, i64 2157639396, i64 2157639420, i64 2157639461, i64 2157639482, i64 2157639510, i64 2157639544}
!711 = !{i64 2157311597}
!712 = !{i64 2157313089}
!713 = !{i64 2157313491}
!714 = !{i64 2157313847, i64 2157314346, i64 2157313884, i64 2157313940, i64 2157313974, i64 2157313998, i64 2157314039, i64 2157314060, i64 2157314088, i64 2157314122}
!715 = !{i64 2157315763}
!716 = !{i64 2157317356}
!717 = !{i64 2157317758}
!718 = !{i64 2157318114, i64 2157318613, i64 2157318151, i64 2157318207, i64 2157318241, i64 2157318265, i64 2157318306, i64 2157318327, i64 2157318355, i64 2157318389}
!719 = !{i64 2157319933}
!720 = !{i64 2157321425}
!721 = !{i64 2157321827}
!722 = !{i64 2157322183, i64 2157322682, i64 2157322220, i64 2157322276, i64 2157322310, i64 2157322334, i64 2157322375, i64 2157322396, i64 2157322424, i64 2157322458}
!723 = !{i64 2157324225}
!724 = !{i64 2157325717}
!725 = !{i64 2157326119}
!726 = !{i64 2157326477, i64 2157326977, i64 2157326514, i64 2157326570, i64 2157326604, i64 2157326628, i64 2157326669, i64 2157326690, i64 2157326718, i64 2157326752}
!727 = !{i64 2157329129}
!728 = !{i64 2157329531}
!729 = !{i64 2157329889, i64 2157330389, i64 2157329926, i64 2157329982, i64 2157330016, i64 2157330040, i64 2157330081, i64 2157330102, i64 2157330130, i64 2157330164}
!730 = !{i64 2157230501}
!731 = !{i64 2157231036}
!732 = !{i64 2157231398}
!733 = !{i64 2157231662, i64 2157232161, i64 2157231699, i64 2157231755, i64 2157231789, i64 2157231813, i64 2157231854, i64 2157231875, i64 2157231903, i64 2157231937}
!734 = !{i64 2157234337}
!735 = !{i64 2157234739}
!736 = !{i64 2157235095, i64 2157235594, i64 2157235132, i64 2157235188, i64 2157235222, i64 2157235246, i64 2157235287, i64 2157235308, i64 2157235336, i64 2157235370}
!737 = !{i64 2157238291}
!738 = !{i64 2157238693}
!739 = !{i64 2157239049, i64 2157239548, i64 2157239086, i64 2157239142, i64 2157239176, i64 2157239200, i64 2157239241, i64 2157239262, i64 2157239290, i64 2157239324}
!740 = !{i64 2157147148}
!741 = !{i64 2157147969}
!742 = !{i64 2157149130, i64 2157149629, i64 2157149167, i64 2157149223, i64 2157149257, i64 2157149281, i64 2157149322, i64 2157149343, i64 2157149371, i64 2157149405}
!743 = !{i64 2157153505}
!744 = !{i64 2157154326}
!745 = !{i64 2157155487, i64 2157160047, i64 2157155524, i64 2157155580, i64 2157155614, i64 2157155638, i64 2157155679, i64 2157155700, i64 2157155728, i64 2157155762}
!746 = !{i64 2157161520}
!747 = !{i64 2157162190}
!748 = !{i64 2157164360, i64 2157164859, i64 2157164397, i64 2157164453, i64 2157164487, i64 2157164511, i64 2157164552, i64 2157164573, i64 2157164601, i64 2157164635}
!749 = !{i64 2157166286}
!750 = !{i64 2157167875}
!751 = !{i64 2157168277}
!752 = !{i64 2157168633, i64 2157169132, i64 2157168670, i64 2157168726, i64 2157168760, i64 2157168784, i64 2157168825, i64 2157168846, i64 2157168874, i64 2157168908}
!753 = !{i64 4687199}
!754 = !{i64 2157171009}
!755 = !{i64 2157171830}
!756 = !{i64 2157172365}
!757 = !{i64 2157172727}
!758 = !{i64 2157172991, i64 2157173490, i64 2157173028, i64 2157173084, i64 2157173118, i64 2157173142, i64 2157173183, i64 2157173204, i64 2157173232, i64 2157173266}
!759 = !{i64 2157175071}
!760 = !{i64 2157175606}
!761 = !{i64 2157175968}
!762 = !{i64 2157176232, i64 2157176731, i64 2157176269, i64 2157176325, i64 2157176359, i64 2157176383, i64 2157176424, i64 2157176445, i64 2157176473, i64 2157176507}
!763 = !{i64 2157186960}
!764 = !{i64 2157187261}
!765 = !{i64 2157187477}
!766 = !{i64 2157187621, i64 2157187794, i64 2157187809, i64 2157187861, i64 2157187928, i64 2157187952, i64 2157187993, i64 2157188014, i64 2157188042, i64 2157188074}
!767 = !{i64 2157189003}
!768 = !{i64 2157189538}
!769 = !{i64 2157189900}
!770 = !{i64 2157190164, i64 2157190663, i64 2157190201, i64 2157190257, i64 2157190291, i64 2157190315, i64 2157190356, i64 2157190377, i64 2157190405, i64 2157190439}
!771 = !{i64 2157194370}
!772 = !{i64 2157194212}
!773 = !{i64 2157195753}
!774 = !{i64 2157196155}
!775 = !{i64 2157196511, i64 2157197010, i64 2157196548, i64 2157196604, i64 2157196638, i64 2157196662, i64 2157196703, i64 2157196724, i64 2157196752, i64 2157196786}
!776 = !{i64 2157201782}
!777 = !{i64 2157202083}
!778 = !{i64 2157202299}
!779 = !{i64 2157202443, i64 2157202616, i64 2157202631, i64 2157202683, i64 2157202750, i64 2157202774, i64 2157202815, i64 2157202836, i64 2157202864, i64 2157202896}
!780 = !{i64 2157203825}
!781 = !{i64 2157204360}
!782 = !{i64 2157204722}
!783 = !{i64 2157204986, i64 2157205485, i64 2157205023, i64 2157205079, i64 2157205113, i64 2157205137, i64 2157205178, i64 2157205199, i64 2157205227, i64 2157205261}
!784 = !{i64 2157209192}
!785 = !{i64 2157209034}
!786 = !{i64 2157209920}
!787 = !{i64 2157210605}
!788 = !{i64 2157212781, i64 2157213280, i64 2157212818, i64 2157212874, i64 2157212908, i64 2157212932, i64 2157212973, i64 2157212994, i64 2157213022, i64 2157213056}
!789 = !{i64 2157214600}
!790 = !{i64 2157216092}
!791 = !{i64 2157216494}
!792 = !{i64 2157216850, i64 2157217349, i64 2157216887, i64 2157216943, i64 2157216977, i64 2157217001, i64 2157217042, i64 2157217063, i64 2157217091, i64 2157217125}
!793 = !{i64 2157219501}
!794 = !{i64 2157219903}
!795 = !{i64 2157220259, i64 2157220758, i64 2157220296, i64 2157220352, i64 2157220386, i64 2157220410, i64 2157220451, i64 2157220472, i64 2157220500, i64 2157220534}
!796 = !{i64 2157222078}
!797 = !{i64 2157223570}
!798 = !{i64 2157223972}
!799 = !{i64 2157224328, i64 2157224827, i64 2157224365, i64 2157224421, i64 2157224455, i64 2157224479, i64 2157224520, i64 2157224541, i64 2157224569, i64 2157224603}
!800 = !{i64 2156987161}
!801 = !{i64 2156987982}
!802 = !{i64 2156989143, i64 2156989642, i64 2156989180, i64 2156989236, i64 2156989270, i64 2156989294, i64 2156989335, i64 2156989356, i64 2156989384, i64 2156989418}
!803 = !{i64 2156993685}
!804 = !{i64 2156995310}
!805 = !{i64 2156995712}
!806 = !{i64 2156996068, i64 2156996567, i64 2156996105, i64 2156996161, i64 2156996195, i64 2156996219, i64 2156996260, i64 2156996281, i64 2156996309, i64 2156996343}
!807 = !{i64 2156998444}
!808 = !{i64 2156999265}
!809 = !{i64 2156999800}
!810 = !{i64 2157000162}
!811 = !{i64 2157000426, i64 2157000925, i64 2157000463, i64 2157000519, i64 2157000553, i64 2157000577, i64 2157000618, i64 2157000639, i64 2157000667, i64 2157000701}
!812 = !{i64 2157002506}
!813 = !{i64 2157003041}
!814 = !{i64 2157003403}
!815 = !{i64 2157003667, i64 2157004166, i64 2157003704, i64 2157003760, i64 2157003794, i64 2157003818, i64 2157003859, i64 2157003880, i64 2157003908, i64 2157003942}
!816 = !{i64 2157011930}
!817 = !{i64 2157012231}
!818 = !{i64 2157012447}
!819 = !{i64 2157012591, i64 2157012764, i64 2157012779, i64 2157012831, i64 2157012898, i64 2157012922, i64 2157012963, i64 2157012984, i64 2157013012, i64 2157013044}
!820 = !{i64 2157013973}
!821 = !{i64 2157014508}
!822 = !{i64 2157014870}
!823 = !{i64 2157019195, i64 2157019694, i64 2157019232, i64 2157019288, i64 2157019322, i64 2157019346, i64 2157019387, i64 2157019408, i64 2157019436, i64 2157019470}
!824 = !{i64 2157023401}
!825 = !{i64 2157023243}
!826 = !{i64 2157024784}
!827 = !{i64 2157025186}
!828 = !{i64 2157025542, i64 2157026041, i64 2157025579, i64 2157025635, i64 2157025669, i64 2157025693, i64 2157025734, i64 2157025755, i64 2157025783, i64 2157025817}
!829 = !{i64 2157030906}
!830 = !{i64 2157031207}
!831 = !{i64 2157031423}
!832 = !{i64 2157031567, i64 2157031740, i64 2157031755, i64 2157031807, i64 2157031874, i64 2157031898, i64 2157031939, i64 2157031960, i64 2157031988, i64 2157032020}
!833 = !{i64 2157032949}
!834 = !{i64 2157033484}
!835 = !{i64 2157033846}
!836 = !{i64 2157034110, i64 2157034609, i64 2157034147, i64 2157034203, i64 2157034237, i64 2157034261, i64 2157034302, i64 2157034323, i64 2157034351, i64 2157034385}
!837 = !{i64 2157038316}
!838 = !{i64 2157038158}
!839 = !{i64 2157039699}
!840 = !{i64 2157040101}
!841 = !{i64 2157040457, i64 2157040956, i64 2157040494, i64 2157040550, i64 2157040584, i64 2157040608, i64 2157040649, i64 2157040670, i64 2157040698, i64 2157040732}
!842 = !{i64 2157043687}
!843 = !{i64 2157052164}
!844 = !{i64 2157052465}
!845 = !{i64 2157052681}
!846 = !{i64 2157052825, i64 2157052998, i64 2157053013, i64 2157053065, i64 2157053132, i64 2157053156, i64 2157053197, i64 2157053218, i64 2157053246, i64 2157053278}
!847 = !{i64 2157054207}
!848 = !{i64 2157054742}
!849 = !{i64 2157055104}
!850 = !{i64 2157055368, i64 2157055867, i64 2157055405, i64 2157055461, i64 2157055495, i64 2157055519, i64 2157055560, i64 2157055581, i64 2157055609, i64 2157055643}
!851 = !{i64 2157059574}
!852 = !{i64 2157059416}
!853 = !{i64 2157060957}
!854 = !{i64 2157061359}
!855 = !{i64 2157061715, i64 2157062214, i64 2157061752, i64 2157061808, i64 2157061842, i64 2157061866, i64 2157061907, i64 2157061928, i64 2157061956, i64 2157061990}
