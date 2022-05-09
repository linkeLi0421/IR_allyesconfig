; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/davicom/dm9000.c_pt.bc'
source_filename = "../drivers/net/ethernet/davicom/dm9000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.dm9000_plat_data = type { i32, [6 x i8], ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.board_info = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, %struct.delayed_work, ptr, %struct.spinlock, %struct.mii_if_info, i32, i32, i32, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.ifreq = type { %union.anon.110, %union.anon.111 }
%union.anon.110 = type { [16 x i8] }
%union.anon.111 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.dm9000_rxhdr = type { i8, i8, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__param_str_watchdog = internal constant [16 x i8] c"dm9000.watchdog\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@watchdog = internal global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__param_watchdog = internal constant %struct.kernel_param { ptr @__param_str_watchdog, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.101 { ptr @watchdog } }, section "__param", align 4
@__UNIQUE_ID_watchdogtype379 = internal constant [29 x i8] c"dm9000.parmtype=watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_watchdog380 = internal constant [54 x i8] c"dm9000.parm=watchdog:transmit timeout in milliseconds\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"dm9000.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype381 = internal constant [26 x i8] c"dm9000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug382 = internal constant [43 x i8] c"dm9000.parm=debug:dm9000 debug level (0-6)\00", section ".modinfo", align 1
@__initcall__kmod_dm9000__410_1805_dm9000_driver_init6 = internal global ptr @dm9000_driver_init, section ".initcall6.init", align 4
@dm9000_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dm9000_probe, ptr @dm9000_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dm9000_of_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm9000_drv_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dm9000_driver_exit = internal global ptr @dm9000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author411 = internal constant [38 x i8] c"dm9000.author=Sascha Hauer, Ben Dooks\00", section ".modinfo", align 1
@__UNIQUE_ID_description412 = internal constant [49 x i8] c"dm9000.description=Davicom DM9000 network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file413 = internal constant [48 x i8] c"dm9000.file=drivers/net/ethernet/davicom/dm9000\00", section ".modinfo", align 1
@__UNIQUE_ID_license414 = internal constant [19 x i8] c"dm9000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias415 = internal constant [29 x i8] c"dm9000.alias=platform:dm9000\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm9000\00", [25 x i8] zeroinitializer }, align 32
@dm9000_of_matches = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"davicom,dm9000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dm9000_drv_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dm9000_drv_suspend, ptr @dm9000_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@dm9000_probe.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm9000_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/davicom/dm9000.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no regulator provided\0A\00", [41 x i8] zeroinitializer }, align 32
@dm9000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1439, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable power regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr = internal global ptr @dm9000_probe._entry, section ".printk_index", align 4
@dm9000_probe.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"regulator enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm9000_reset\00", [19 x i8] zeroinitializer }, align 32
@dm9000_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request reset gpio %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.13 = internal global ptr @dm9000_probe._entry.11, section ".printk_index", align 4
@dm9000_probe.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm9000_probe()\0A\00", [16 x i8] zeroinitializer }, align 32
@dm9000_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&db->lock\00", [22 x i8] zeroinitializer }, align 32
@dm9000_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&db->addr_lock\00", [17 x i8] zeroinitializer }, align 32
@dm9000_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&db->phy_poll)->work)\00", [54 x i8] zeroinitializer }, align 32
@dm9000_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&db->phy_poll)->timer\00", [40 x i8] zeroinitializer }, align 32
@dm9000_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1500, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"insufficient resources addr=%p data=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.24 = internal global ptr @dm9000_probe._entry.22, section ".printk_index", align 4
@dm9000_probe.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 1, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakeup irq %d\0A\00", [17 x i8] zeroinitializer }, align 32
@dm9000_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1518, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get wakeup irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.28 = internal global ptr @dm9000_probe._entry.26, section ".printk_index", align 4
@dm9000_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1525, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"irq %d cannot set wakeup (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.31 = internal global ptr @dm9000_probe._entry.29, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@dm9000_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1538, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot claim address reg area\0A\00", [33 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.34 = internal global ptr @dm9000_probe._entry.32, section ".printk_index", align 4
@dm9000_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1546, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to ioremap address reg\0A\00", [33 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.37 = internal global ptr @dm9000_probe._entry.35, section ".printk_index", align 4
@dm9000_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1556, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot claim data reg area\0A\00", [36 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.40 = internal global ptr @dm9000_probe._entry.38, section ".printk_index", align 4
@dm9000_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 1564, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to ioremap data reg\0A\00", [36 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.43 = internal global ptr @dm9000_probe._entry.41, section ".printk_index", align 4
@dm9000_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 1619, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read wrong id 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.46 = internal global ptr @dm9000_probe._entry.44, section ".printk_index", align 4
@dm9000_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.2, ptr @.str.3, i32 1623, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wrong id: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.49 = internal global ptr @dm9000_probe._entry.47, section ".printk_index", align 4
@dm9000_probe.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.50, i8 1, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm9000 revision 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dm9000_probe.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.51, i8 1, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ID %02x => defaulting to DM9000E\0A\00", [62 x i8] zeroinitializer }, align 32
@dm9000_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dm9000_open, ptr @dm9000_stop, ptr @dm9000_start_xmit, ptr null, ptr null, ptr null, ptr @dm9000_hash_table, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @dm9000_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm9000_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm9000_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm9000_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@dm9000_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dm9000_get_drvinfo, ptr null, ptr null, ptr @dm9000_get_wol, ptr @dm9000_set_wol, ptr @dm9000_get_msglevel, ptr @dm9000_set_msglevel, ptr @dm9000_nway_reset, ptr @dm9000_get_link, ptr null, ptr @dm9000_get_eeprom_len, ptr @dm9000_get_eeprom, ptr @dm9000_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm9000_get_link_ksettings, ptr @dm9000_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"platform data\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chip\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"random\00", [25 x i8] zeroinitializer }, align 32
@dm9000_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.2, ptr @.str.3, i32 1700, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Invalid ethernet MAC address. Please set using ip\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.59 = internal global ptr @dm9000_probe._entry.56, section ".printk_index", align 4
@dm9000_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.2, ptr @.str.3, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: dm9000%c at %p,%p IRQ %d MAC: %pM (%s)\0A\00", [50 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.62 = internal global ptr @dm9000_probe._entry.60, section ".printk_index", align 4
@dm9000_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.2, ptr @.str.3, i32 1709, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not found (%d).\0A\00", [47 x i8] zeroinitializer }, align 32
@dm9000_probe._entry_ptr.65 = internal global ptr @dm9000_probe._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"davicom,ext-phy\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davicom,no-eeprom\00", [46 x i8] zeroinitializer }, align 32
@dm9000_show_carrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 761, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: link up, %dMbps, %s-duplex, lpa 0x%04X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm9000_show_carrier\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dm9000_show_carrier._entry_ptr = internal global ptr @dm9000_show_carrier._entry, section ".printk_index", align 4
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@dm9000_show_carrier._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.3, i32 763, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: link down\0A\00", [17 x i8] zeroinitializer }, align 32
@dm9000_show_carrier._entry_ptr.75 = internal global ptr @dm9000_show_carrier._entry.73, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dm9000_wol_interrupt.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm9000_wol_interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: NSR=0x%02x, WCR=0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@dm9000_wol_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 1258, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wake by link status change\0A\00", [36 x i8] zeroinitializer }, align 32
@dm9000_wol_interrupt._entry_ptr = internal global ptr @dm9000_wol_interrupt._entry, section ".printk_index", align 4
@dm9000_wol_interrupt._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.76, ptr @.str.3, i32 1260, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wake by sample packet\0A\00", [41 x i8] zeroinitializer }, align 32
@dm9000_wol_interrupt._entry_ptr.81 = internal global ptr @dm9000_wol_interrupt._entry.79, section ".printk_index", align 4
@dm9000_wol_interrupt._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.76, ptr @.str.3, i32 1262, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wake by magic packet\0A\00", [42 x i8] zeroinitializer }, align 32
@dm9000_wol_interrupt._entry_ptr.84 = internal global ptr @dm9000_wol_interrupt._entry.82, section ".printk_index", align 4
@dm9000_wol_interrupt._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.76, ptr @.str.3, i32 1265, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"wake signalled with no reason? NSR=0x%02x, WSR=0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@dm9000_wol_interrupt._entry_ptr.87 = internal global ptr @dm9000_wol_interrupt._entry.85, section ".printk_index", align 4
@dm9000_set_io.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm9000_set_io\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c": 3 byte IO, falling back to 16bit\0A\00", [60 x i8] zeroinitializer }, align 32
@dm9000_reset.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.90, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resetting device\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dm9000_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.10, ptr @.str.3, i32 188, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dm9000 did not respond to first reset\0A\00", [57 x i8] zeroinitializer }, align 32
@dm9000_reset._entry_ptr = internal global ptr @dm9000_reset._entry, section ".printk_index", align 4
@dm9000_reset._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.10, ptr @.str.3, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dm9000 did not respond to second reset\0A\00", [56 x i8] zeroinitializer }, align 32
@dm9000_reset._entry_ptr.94 = internal global ptr @dm9000_reset._entry.92, section ".printk_index", align 4
@dm9000_open.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 1, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm9000_open\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enabling %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dm9000_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 1302, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WARNING: no IRQ resource flags set.\0A\00", [59 x i8] zeroinitializer }, align 32
@dm9000_open._entry_ptr = internal global ptr @dm9000_open._entry, section ".printk_index", align 4
@dm9000_init_dm9000.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm9000_init_dm9000\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"entering %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dm9000_hash_table_unlocked.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.99, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dm9000_hash_table_unlocked\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dm9000_interrupt.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.3, ptr @.str.99, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm9000_interrupt\00", [47 x i8] zeroinitializer }, align 32
@dm9000_interrupt.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 1, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt status %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@dm9000_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 1106, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"status check fail: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dm9000_rx\00", [22 x i8] zeroinitializer }, align 32
@dm9000_rx._entry_ptr = internal global ptr @dm9000_rx._entry, section ".printk_index", align 4
@dm9000_rx.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: status %02x, length %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@dm9000_rx.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.106, i8 1, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX: Bad Packet (runt)\0A\00", [41 x i8] zeroinitializer }, align 32
@dm9000_rx.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.107, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RST: RX Len:%x\0A\00", [16 x i8] zeroinitializer }, align 32
@dm9000_rx.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.108, i8 1, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fifo error\0A\00", [20 x i8] zeroinitializer }, align 32
@dm9000_rx.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.109, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc error\0A\00", [21 x i8] zeroinitializer }, align 32
@dm9000_rx.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.110, i8 1, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"length error\0A\00", [18 x i8] zeroinitializer }, align 32
@dm9000_tx_done.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm9000_tx_done\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx done, NSR %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@dm9000_stop.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm9000_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shutting down %s\0A\00", [46 x i8] zeroinitializer }, align 32
@dm9000_start_xmit.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm9000_start_xmit\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@dm9000_wait_eeprom.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm9000_wait_eeprom\00", [45 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout waiting EEPROM\0A\00", [40 x i8] zeroinitializer }, align 32
@dm9000_phy_read.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm9000_phy_read\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy_read[%02x] -> %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@dm9000_phy_write.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.3, ptr @.str.122, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm9000_phy_write\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy_write[%02x] = %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@dm9000_drv_remove.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 1, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm9000_drv_remove\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"released and freed device\0A\00", [37 x i8] zeroinitializer }, align 32
@switch.table.dm9000_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 101, i32 97, i32 98], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 25, i64 26]
@___asan_gen_.126 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 49, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 56, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"dm9000_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1795, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1797, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"dm9000_of_matches\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1788, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"dm9000_drv_pm_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1766, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1430, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1434, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1438, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1442, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1445, i32 54 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1449, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1451, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1480, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1490, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1491, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1493, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1499, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1513, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1518, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1524, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1538, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1546, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1556, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1564, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1619, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1623, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1631, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1641, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"dm9000_netdev_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1369, i32 36 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"dm9000_ethtool_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 733, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1666, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1674, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1681, i32 13 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1690, i32 13 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1699, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1701, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1709, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1397, i32 27 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1399, i32 27 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 758, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 763, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1251, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1258, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1260, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1262, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1264, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 386, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 179, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 188, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 194, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1296, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1302, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 905, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 846, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1197, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1213, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1106, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1123, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1130, i32 5 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1134, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1144, i32 6 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1149, i32 6 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1154, i32 6 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1068, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1354, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1021, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 457, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 315, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 328, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.487 = private constant [41 x i8] c"../drivers/net/ethernet/davicom/dm9000.c\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1783, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [26 x i8] c"switch.table.dm9000_probe\00", align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_alias415, ptr @__UNIQUE_ID_author411, ptr @__UNIQUE_ID_debug382, ptr @__UNIQUE_ID_debugtype381, ptr @__UNIQUE_ID_description412, ptr @__UNIQUE_ID_file413, ptr @__UNIQUE_ID_license414, ptr @__UNIQUE_ID_watchdog380, ptr @__UNIQUE_ID_watchdogtype379, ptr @__exitcall_dm9000_driver_exit, ptr @__initcall__kmod_dm9000__410_1805_dm9000_driver_init6, ptr @__param_debug, ptr @__param_watchdog, ptr @dm9000_driver_exit, ptr @dm9000_open._entry, ptr @dm9000_open._entry_ptr, ptr @dm9000_probe._entry, ptr @dm9000_probe._entry.11, ptr @dm9000_probe._entry.22, ptr @dm9000_probe._entry.26, ptr @dm9000_probe._entry.29, ptr @dm9000_probe._entry.32, ptr @dm9000_probe._entry.35, ptr @dm9000_probe._entry.38, ptr @dm9000_probe._entry.41, ptr @dm9000_probe._entry.44, ptr @dm9000_probe._entry.47, ptr @dm9000_probe._entry.56, ptr @dm9000_probe._entry.60, ptr @dm9000_probe._entry.63, ptr @dm9000_probe._entry_ptr, ptr @dm9000_probe._entry_ptr.13, ptr @dm9000_probe._entry_ptr.24, ptr @dm9000_probe._entry_ptr.28, ptr @dm9000_probe._entry_ptr.31, ptr @dm9000_probe._entry_ptr.34, ptr @dm9000_probe._entry_ptr.37, ptr @dm9000_probe._entry_ptr.40, ptr @dm9000_probe._entry_ptr.43, ptr @dm9000_probe._entry_ptr.46, ptr @dm9000_probe._entry_ptr.49, ptr @dm9000_probe._entry_ptr.59, ptr @dm9000_probe._entry_ptr.62, ptr @dm9000_probe._entry_ptr.65, ptr @dm9000_reset._entry, ptr @dm9000_reset._entry.92, ptr @dm9000_reset._entry_ptr, ptr @dm9000_reset._entry_ptr.94, ptr @dm9000_rx._entry, ptr @dm9000_rx._entry_ptr, ptr @dm9000_show_carrier._entry, ptr @dm9000_show_carrier._entry.73, ptr @dm9000_show_carrier._entry_ptr, ptr @dm9000_show_carrier._entry_ptr.75, ptr @dm9000_wol_interrupt._entry, ptr @dm9000_wol_interrupt._entry.79, ptr @dm9000_wol_interrupt._entry.82, ptr @dm9000_wol_interrupt._entry.85, ptr @dm9000_wol_interrupt._entry_ptr, ptr @dm9000_wol_interrupt._entry_ptr.81, ptr @dm9000_wol_interrupt._entry_ptr.84, ptr @dm9000_wol_interrupt._entry_ptr.87, ptr @watchdog, ptr @debug, ptr @dm9000_driver, ptr @.str, ptr @dm9000_of_matches, ptr @dm9000_drv_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @dm9000_probe.__key, ptr @.str.15, ptr @dm9000_probe.__key.16, ptr @.str.17, ptr @dm9000_probe.__key.18, ptr @.str.19, ptr @dm9000_probe.__key.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @dm9000_netdev_ops, ptr @dm9000_ethtool_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @switch.table.dm9000_probe], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_of_matches to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_drv_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_show_carrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_show_carrier._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_wol_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_wol_interrupt._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_wol_interrupt._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_wol_interrupt._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_reset._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9000_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm9000_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dm9000_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @dm9000_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %flags = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %8 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  %cmp.i652 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i652, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_probe.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then10)) #13
          to label %if.end35 [label %if.then10], !srcloc !277

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_probe.__UNIQUE_ID_ddebug403, ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %if.end35

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @regulator_enable(ptr noundef %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %do.body19, label %do.end17

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call12) #16
  br label %cleanup

do.body19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_probe.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then31)) #13
          to label %if.end35 [label %if.then31], !srcloc !277

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_probe.__UNIQUE_ID_ddebug404, ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.body19, %if.then10, %do.body
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call36 = call i32 @of_get_named_gpio_flags(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call36)
  %11 = icmp ult i32 %call36, 2048
  br i1 %11, label %if.then38, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then38:                                        ; preds = %if.end35
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %call39 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %call36, i32 noundef %13, ptr noundef nonnull @.str.10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call36, i32 noundef %call39) #16
  br label %out_regulator_disable

if.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 2) #13
  %call.i = call ptr @gpio_to_desc(i32 noundef %call36) #13
  call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #13
  call void @msleep(i32 noundef 4) #13
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end35.if.end46_crit_edge
  %tobool47.not = icmp eq ptr %1, null
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then48:                                        ; preds = %if.end46
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then48.if.then52_crit_edge, label %if.end.i653

if.then48.if.then52_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end.i653:                                      ; preds = %if.then48
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #13
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i653.if.then52_crit_edge, label %if.end5.i

if.end.i653.if.then52_crit_edge:                  ; preds = %if.end.i653
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end5.i:                                        ; preds = %if.end.i653
  %call6.i = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.66, ptr noundef null) #13
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then8.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i.i, align 4
  %or.i = or i32 %17, 8
  store i32 %or.i, ptr %call.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end5.i.if.end9.i_crit_edge
  %call10.i = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.67, ptr noundef null) #13
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i.i, align 4
  %or14.i = or i32 %19, 16
  store i32 %or14.i, ptr %call.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %dev_addr.i = getelementptr inbounds %struct.dm9000_plat_data, ptr %call.i.i, i32 0, i32 1
  %call16.i = call i32 @of_get_mac_address(ptr noundef nonnull %15, ptr noundef %dev_addr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call16.i)
  %cmp.i654 = icmp eq i32 %call16.i, -517
  br i1 %cmp.i654, label %if.end15.i.if.then52_crit_edge, label %dm9000_parse_dt.exit

if.end15.i.if.then52_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

dm9000_parse_dt.exit:                             ; preds = %if.end15.i
  %cmp.i656 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i656, label %dm9000_parse_dt.exit.if.then52_crit_edge, label %dm9000_parse_dt.exit.if.end55_crit_edge

dm9000_parse_dt.exit.if.end55_crit_edge:          ; preds = %dm9000_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

dm9000_parse_dt.exit.if.then52_crit_edge:         ; preds = %dm9000_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.then52:                                        ; preds = %dm9000_parse_dt.exit.if.then52_crit_edge, %if.end15.i.if.then52_crit_edge, %if.end.i653.if.then52_crit_edge, %if.then48.if.then52_crit_edge
  %retval.0.i655711 = phi ptr [ %call.i.i, %dm9000_parse_dt.exit.if.then52_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i653.if.then52_crit_edge ], [ inttoptr (i32 -6 to ptr), %if.then48.if.then52_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end15.i.if.then52_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i655711 to i32
  br label %out_regulator_disable

if.end55:                                         ; preds = %dm9000_parse_dt.exit.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end46.if.end55_crit_edge ], [ %call.i.i, %dm9000_parse_dt.exit.if.end55_crit_edge ]
  %call56 = call ptr @alloc_etherdev_mqs(i32 noundef 360, i32 noundef 1, i32 noundef 1) #13
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.out_regulator_disable_crit_edge, label %if.end59

if.end55.out_regulator_disable_crit_edge:         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_regulator_disable

if.end59:                                         ; preds = %if.end55
  %parent = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 133, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_probe.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then74)) #13
          to label %do.end78 [label %if.then74], !srcloc !277

if.then74:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_probe.__UNIQUE_ID_ddebug405, ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %if.end59
  %add.ptr.i = getelementptr i8, ptr %call56, i32 2304
  %dev81 = getelementptr i8, ptr %call56, i32 2352
  %22 = ptrtoint ptr %dev81 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev81, align 4
  %ndev82 = getelementptr i8, ptr %call56, i32 2568
  %23 = ptrtoint ptr %ndev82 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call56, ptr %ndev82, align 4
  br i1 %cmp.i652, label %do.end78.do.body86_crit_edge, label %if.then84

do.end78.do.body86_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body86

if.then84:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  %power_supply = getelementptr i8, ptr %call56, i32 2660
  %24 = ptrtoint ptr %power_supply to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call3, ptr %power_supply, align 4
  br label %do.body86

do.body86:                                        ; preds = %if.then84, %do.end78.do.body86_crit_edge
  %lock = getelementptr i8, ptr %call56, i32 2572
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @dm9000_probe.__key, i16 noundef signext 3) #13
  %addr_lock = getelementptr i8, ptr %call56, i32 2376
  call void @__mutex_init(ptr noundef %addr_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @dm9000_probe.__key.16) #13
  %phy_poll = getelementptr i8, ptr %call56, i32 2468
  call void @__init_work(ptr noundef %phy_poll, i32 noundef 0) #13
  %25 = ptrtoint ptr %phy_poll to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %phy_poll, align 4
  %lockdep_map = getelementptr i8, ptr %call56, i32 2484
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @dm9000_probe.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry101 = getelementptr i8, ptr %call56, i32 2472
  %26 = ptrtoint ptr %entry101 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry101, ptr %entry101, align 4
  %prev.i = getelementptr i8, ptr %call56, i32 2476
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry101, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call56, i32 2480
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dm9000_poll_work, ptr %func, align 4
  %timer = getelementptr i8, ptr %call56, i32 2512
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @dm9000_probe.__key.20) #13
  %call112 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %addr_res = getelementptr i8, ptr %call56, i32 2356
  %29 = ptrtoint ptr %addr_res to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call112, ptr %addr_res, align 4
  %call113 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #13
  %data_res = getelementptr i8, ptr %call56, i32 2360
  %30 = ptrtoint ptr %data_res to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call113, ptr %data_res, align 4
  %31 = ptrtoint ptr %addr_res to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr_res, align 4
  %tobool115.not = icmp eq ptr %32, null
  %tobool117.not = icmp eq ptr %call113, null
  %or.cond = select i1 %tobool115.not, i1 true, i1 %tobool117.not
  br i1 %or.cond, label %do.end121, label %if.end125

do.end121:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.23, ptr noundef %32, ptr noundef %call113) #16
  br label %do.end420

if.end125:                                        ; preds = %do.body86
  %call126 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 64
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call126, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp128 = icmp slt i32 %call126, 0
  br i1 %cmp128, label %if.end125.do.end420_crit_edge, label %if.end131

if.end125.do.end420_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end420

if.end131:                                        ; preds = %if.end125
  %call132 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #13
  %irq_wake = getelementptr i8, ptr %call56, i32 2372
  %36 = ptrtoint ptr %irq_wake to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call132, ptr %irq_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call132)
  %cmp134 = icmp sgt i32 %call132, -1
  br i1 %cmp134, label %do.body136, label %if.end131.if.end179_crit_edge

if.end131.if.end179_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179

do.body136:                                       ; preds = %if.end131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_probe.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then148)) #13
          to label %do.end153 [label %if.then148], !srcloc !277

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev81, align 4
  %39 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_wake, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_probe.__UNIQUE_ID_ddebug406, ptr noundef %38, ptr noundef nonnull @.str.25, i32 noundef %40) #13
  br label %do.end153

do.end153:                                        ; preds = %if.then148, %do.body136
  %41 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_wake, align 4
  %43 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev81, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i658 = icmp eq ptr %46, null
  br i1 %tobool.not.i658, label %if.end.i659, label %do.end153.dev_name.exit_crit_edge

do.end153.dev_name.exit_crit_edge:                ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i659:                                      ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i659, %do.end153.dev_name.exit_crit_edge
  %retval.0.i660 = phi ptr [ %48, %if.end.i659 ], [ %46, %do.end153.dev_name.exit_crit_edge ]
  %call.i661 = call i32 @request_threaded_irq(i32 noundef %42, ptr noundef nonnull @dm9000_wol_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i660, ptr noundef nonnull %call56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i661)
  %tobool158.not = icmp eq i32 %call.i661, 0
  br i1 %tobool158.not, label %if.else164, label %do.end162

do.end162:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.27, i32 noundef %call.i661) #16
  br label %if.end179

if.else164:                                       ; preds = %dev_name.exit
  %51 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq_wake, align 4
  %call166 = call i32 @irq_set_irq_wake(i32 noundef %52, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.else174, label %do.end171

do.end171:                                        ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev81, align 4
  %55 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq_wake, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.30, i32 noundef %56, i32 noundef %call166) #16
  br label %if.end179

if.else174:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq_wake, align 4
  %call176 = call i32 @irq_set_irq_wake(i32 noundef %58, i32 noundef 0) #13
  %wake_supported = getelementptr i8, ptr %call56, i32 2332
  %59 = ptrtoint ptr %wake_supported to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %wake_supported, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %wake_supported, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else174, %do.end171, %do.end162, %if.end131.if.end179_crit_edge
  %60 = ptrtoint ptr %addr_res to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %addr_res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %end.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  %sub.i = add i32 %63, 1
  %add.i = sub i32 %sub.i, %65
  %66 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev, align 8
  %call183 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %65, i32 noundef %add.i, ptr noundef %67, i32 noundef 0) #13
  %addr_req = getelementptr i8, ptr %call56, i32 2364
  %68 = ptrtoint ptr %addr_req to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call183, ptr %addr_req, align 4
  %cmp185 = icmp eq ptr %call183, null
  br i1 %cmp185, label %do.end189, label %if.end191

do.end189:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.33) #16
  br label %do.end420

if.end191:                                        ; preds = %if.end179
  %71 = ptrtoint ptr %addr_res to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %addr_res, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %call194 = call ptr @ioremap(i32 noundef %74, i32 noundef %add.i) #13
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call194, ptr %add.ptr.i, align 4
  %cmp196 = icmp eq ptr %call194, null
  br i1 %cmp196, label %do.end200, label %if.end202

do.end200:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.36) #16
  br label %do.end420

if.end202:                                        ; preds = %if.end191
  %78 = ptrtoint ptr %data_res to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data_res, align 4
  %end.i662 = getelementptr inbounds %struct.resource, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %end.i662 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %end.i662, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %79, align 4
  %sub.i663 = add i32 %81, 1
  %add.i664 = sub i32 %sub.i663, %83
  %84 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev, align 8
  %call208 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %83, i32 noundef %add.i664, ptr noundef %85, i32 noundef 0) #13
  %data_req = getelementptr i8, ptr %call56, i32 2368
  %86 = ptrtoint ptr %data_req to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call208, ptr %data_req, align 4
  %cmp210 = icmp eq ptr %call208, null
  br i1 %cmp210, label %do.end214, label %if.end216

do.end214:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.39) #16
  br label %do.end420

if.end216:                                        ; preds = %if.end202
  %89 = ptrtoint ptr %data_res to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data_res, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %call219 = call ptr @ioremap(i32 noundef %92, i32 noundef %add.i664) #13
  %io_data = getelementptr i8, ptr %call56, i32 2308
  %93 = ptrtoint ptr %io_data to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call219, ptr %io_data, align 4
  %cmp221 = icmp eq ptr %call219, null
  br i1 %cmp221, label %do.end225, label %if.end227

do.end225:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.42) #16
  br label %do.end420

if.end227:                                        ; preds = %if.end216
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 4
  %98 = ptrtoint ptr %97 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 5
  %99 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %base_addr, align 32
  %100 = zext i32 %add.i664 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add.i664, label %sw.default.i [
    i32 1, label %if.end227.if.then230_crit_edge
    i32 3, label %do.body.i
    i32 2, label %if.end227.sw.bb4.i_crit_edge
  ]

if.end227.sw.bb4.i_crit_edge:                     ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4.i

if.end227.if.then230_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then230

do.body.i:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_set_io.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then.i665)) #13
          to label %sw.bb4.i [label %if.then.i665], !srcloc !277

if.then.i665:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_set_io.__UNIQUE_ID_ddebug386, ptr noundef %102, ptr noundef nonnull @.str.89) #13
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %if.then.i665, %do.body.i, %if.end227.sw.bb4.i_crit_edge
  br label %if.then230

sw.default.i:                                     ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then230

if.then230:                                       ; preds = %sw.default.i, %sw.bb4.i, %if.end227.if.then230_crit_edge
  %dm9000_dumpblk_32bit.sink.i = phi ptr [ @dm9000_dumpblk_32bit, %sw.default.i ], [ @dm9000_dumpblk_16bit, %sw.bb4.i ], [ @dm9000_dumpblk_8bit, %if.end227.if.then230_crit_edge ]
  %dm9000_outblk_32bit.sink.i = phi ptr [ @dm9000_outblk_32bit, %sw.default.i ], [ @dm9000_outblk_16bit, %sw.bb4.i ], [ @dm9000_outblk_8bit, %if.end227.if.then230_crit_edge ]
  %dm9000_inblk_32bit.sink.i = phi ptr [ @dm9000_inblk_32bit, %sw.default.i ], [ @dm9000_inblk_16bit, %sw.bb4.i ], [ @dm9000_inblk_8bit, %if.end227.if.then230_crit_edge ]
  %dumpblk9.i = getelementptr i8, ptr %call56, i32 2348
  %103 = ptrtoint ptr %dumpblk9.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %dm9000_dumpblk_32bit.sink.i, ptr %dumpblk9.i, align 4
  %outblk10.i = getelementptr i8, ptr %call56, i32 2344
  %104 = ptrtoint ptr %outblk10.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %dm9000_outblk_32bit.sink.i, ptr %outblk10.i, align 4
  %inblk11.i = getelementptr i8, ptr %call56, i32 2340
  %105 = ptrtoint ptr %inblk11.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %dm9000_inblk_32bit.sink.i, ptr %inblk11.i, align 4
  %106 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pdata.0, align 4
  %and = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool232.not = icmp eq i32 %and, 0
  br i1 %tobool232.not, label %if.then230.if.end234_crit_edge, label %if.then233

if.then230.if.end234_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

if.then233:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %dumpblk9.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @dm9000_dumpblk_8bit, ptr %dumpblk9.i, align 4
  %109 = ptrtoint ptr %outblk10.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @dm9000_outblk_8bit, ptr %outblk10.i, align 4
  %110 = ptrtoint ptr %inblk11.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @dm9000_inblk_8bit, ptr %inblk11.i, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.then233, %if.then230.if.end234_crit_edge
  %111 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pdata.0, align 4
  %and236 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end234.if.end239_crit_edge, label %if.then238

if.end234.if.end239_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end239

if.then238:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %dumpblk9.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @dm9000_dumpblk_16bit, ptr %dumpblk9.i, align 4
  %114 = ptrtoint ptr %outblk10.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @dm9000_outblk_16bit, ptr %outblk10.i, align 4
  %115 = ptrtoint ptr %inblk11.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @dm9000_inblk_16bit, ptr %inblk11.i, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.end234.if.end239_crit_edge
  %116 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pdata.0, align 4
  %and241 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %if.end239.if.end244_crit_edge, label %if.then243

if.end239.if.end244_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end244

if.then243:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %dumpblk9.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @dm9000_dumpblk_32bit, ptr %dumpblk9.i, align 4
  %119 = ptrtoint ptr %outblk10.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @dm9000_outblk_32bit, ptr %outblk10.i, align 4
  %120 = ptrtoint ptr %inblk11.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @dm9000_inblk_32bit, ptr %inblk11.i, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.end239.if.end244_crit_edge
  %inblk = getelementptr inbounds %struct.dm9000_plat_data, ptr %pdata.0, i32 0, i32 2
  %121 = ptrtoint ptr %inblk to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %inblk, align 4
  %cmp245.not = icmp eq ptr %122, null
  br i1 %cmp245.not, label %if.end244.if.end249_crit_edge, label %if.then246

if.end244.if.end249_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249

if.then246:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %inblk11.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %inblk11.i, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then246, %if.end244.if.end249_crit_edge
  %outblk = getelementptr inbounds %struct.dm9000_plat_data, ptr %pdata.0, i32 0, i32 3
  %124 = ptrtoint ptr %outblk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %outblk, align 4
  %cmp250.not = icmp eq ptr %125, null
  br i1 %cmp250.not, label %if.end249.if.end254_crit_edge, label %if.then251

if.end249.if.end254_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254

if.then251:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %outblk10.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %outblk10.i, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.end249.if.end254_crit_edge
  %dumpblk = getelementptr inbounds %struct.dm9000_plat_data, ptr %pdata.0, i32 0, i32 4
  %127 = ptrtoint ptr %dumpblk to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dumpblk, align 4
  %cmp255.not = icmp eq ptr %128, null
  br i1 %cmp255.not, label %if.end254.if.end262_crit_edge, label %if.then256

if.end254.if.end262_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end262

if.then256:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %dumpblk9.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %dumpblk9.i, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then256, %if.end254.if.end262_crit_edge
  %130 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pdata.0, align 4
  %flags263 = getelementptr i8, ptr %call56, i32 2328
  %or = or i32 %131, 32
  %132 = ptrtoint ptr %flags263 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or, ptr %flags263, align 4
  call fastcc void @dm9000_reset(ptr noundef %add.ptr.i)
  br label %for.body

for.body:                                         ; preds = %do.end283.for.body_crit_edge, %if.end262
  %i.0721 = phi i32 [ 0, %if.end262 ], [ %inc, %do.end283.for.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 40) #13, !srcloc !279
  %135 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io_data, align 4
  %137 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %136) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv = zext i8 %137 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %139, i8 41) #13, !srcloc !279
  %140 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_data, align 4
  %142 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %141) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv267 = zext i8 %142 to i32
  %shl = shl nuw nsw i32 %conv267, 8
  %or268 = or i32 %shl, %conv
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %144, i8 42) #13, !srcloc !279
  %145 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io_data, align 4
  %147 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %146) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv270 = zext i8 %147 to i32
  %shl271 = shl nuw nsw i32 %conv270, 16
  %or272 = or i32 %shl271, %or268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %149, i8 43) #13, !srcloc !279
  %150 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %io_data, align 4
  %152 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %151) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv274 = zext i8 %152 to i32
  %shl275 = shl nuw i32 %conv274, 24
  %or276 = or i32 %shl275, %or272
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879045562, i32 %or276)
  %cmp277 = icmp eq i32 %or276, -1879045562
  br i1 %cmp277, label %if.end292, label %do.end283

do.end283:                                        ; preds = %for.body
  %153 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.45, i32 noundef %or276) #16
  %inc = add nuw nsw i32 %i.0721, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.end290, label %do.end283.for.body_crit_edge

do.end283.for.body_crit_edge:                     ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end290:                                        ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.48, i32 noundef %or276) #16
  br label %do.end420

if.end292:                                        ; preds = %for.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %157 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %158, i8 44) #13, !srcloc !279
  %159 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %io_data, align 4
  %161 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %160) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv294 = zext i8 %161 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_probe.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then307)) #13
          to label %do.end311 [label %if.then307], !srcloc !277

if.then307:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #15
  %162 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_probe.__UNIQUE_ID_ddebug407, ptr noundef %163, ptr noundef nonnull @.str.50, i32 noundef %conv294) #13
  br label %do.end311

do.end311:                                        ; preds = %if.then307, %if.end292
  %164 = zext i8 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %161, label %do.body314 [
    i8 25, label %do.end311.sw.epilog_crit_edge
    i8 26, label %sw.bb312
  ]

do.end311.sw.epilog_crit_edge:                    ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb312:                                         ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body314:                                       ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_probe.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_probe, %if.then326)) #13
          to label %sw.epilog [label %if.then326], !srcloc !277

if.then326:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #15
  %165 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_probe.__UNIQUE_ID_ddebug408, ptr noundef %166, ptr noundef nonnull @.str.51, i32 noundef %conv294) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then326, %do.body314, %sw.bb312, %do.end311.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb312 ], [ 1, %do.end311.sw.epilog_crit_edge ], [ 0, %do.body314 ], [ 0, %if.then326 ]
  %type331 = getelementptr i8, ptr %call56, i32 2336
  %167 = ptrtoint ptr %type331 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %.sink, ptr %type331, align 4
  %type332 = getelementptr i8, ptr %call56, i32 2336
  %.off = add nsw i32 %.sink, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then339, label %sw.epilog.if.end342_crit_edge

sw.epilog.if.end342_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end342

if.then339:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 24
  %168 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 1099511627778, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 23
  %169 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %features, align 16
  %or341 = or i64 %170, 1099511627778
  store i64 %or341, ptr %features, align 16
  br label %if.end342

if.end342:                                        ; preds = %if.then339, %sw.epilog.if.end342_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 16
  %171 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @dm9000_netdev_ops, ptr %netdev_ops, align 8
  %172 = load i32, ptr @watchdog, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %172) #13
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 115
  %173 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %call2.i, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 44
  %174 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @dm9000_ethtool_ops, ptr %ethtool_ops, align 16
  %msg_enable = getelementptr i8, ptr %call56, i32 2648
  %175 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 4, ptr %msg_enable, align 4
  %phy_id_mask = getelementptr i8, ptr %call56, i32 2624
  %176 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call56, i32 2628
  %177 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 31, ptr %reg_num_mask, align 4
  %force_media = getelementptr i8, ptr %call56, i32 2632
  %178 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load346 = load i8, ptr %force_media, align 4
  %bf.clear351 = and i8 %bf.load346, 63
  store i8 %bf.clear351, ptr %force_media, align 4
  %dev354 = getelementptr i8, ptr %call56, i32 2636
  %179 = ptrtoint ptr %dev354 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call56, ptr %dev354, align 4
  %mdio_read = getelementptr i8, ptr %call56, i32 2640
  %180 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @dm9000_phy_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call56, i32 2644
  %181 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @dm9000_phy_write, ptr %mdio_write, align 4
  call fastcc void @dm9000_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %addr)
  call fastcc void @dm9000_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef %4)
  call fastcc void @dm9000_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef %6)
  call void @dev_addr_mod(ptr noundef %call56, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 86
  %182 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev_addr, align 64
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %186 = and i32 %185, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.i.not.i = icmp eq i32 %186, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %if.end342.if.then367_crit_edge

if.end342.if.then367_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then367

land.rhs.i:                                       ; preds = %if.end342
  %add.ptr.i.i = getelementptr i8, ptr %183, i32 4
  %187 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %188 to i32
  %or.i.i = or i32 %185, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %land.rhs.i.if.then367_crit_edge, label %land.rhs.i.if.end370_crit_edge

land.rhs.i.if.end370_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370

land.rhs.i.if.then367_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then367

if.then367:                                       ; preds = %land.rhs.i.if.then367_crit_edge, %if.end342.if.then367_crit_edge
  %dev_addr368 = getelementptr inbounds %struct.dm9000_plat_data, ptr %pdata.0, i32 0, i32 1
  call void @dev_addr_mod(ptr noundef %call56, i32 noundef 0, ptr noundef %dev_addr368, i32 noundef 6) #13
  br label %if.end370

if.end370:                                        ; preds = %if.then367, %land.rhs.i.if.end370_crit_edge
  %mac_src.0 = phi ptr [ @.str.52, %land.rhs.i.if.end370_crit_edge ], [ @.str.53, %if.then367 ]
  %189 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_addr, align 64
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  %193 = and i32 %192, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.i.not.i690 = icmp eq i32 %193, 0
  br i1 %tobool.i.not.i690, label %land.rhs.i695, label %if.end370.for.cond374.preheader_crit_edge

if.end370.for.cond374.preheader_crit_edge:        ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond374.preheader

land.rhs.i695:                                    ; preds = %if.end370
  %add.ptr.i.i691 = getelementptr i8, ptr %190, i32 4
  %194 = ptrtoint ptr %add.ptr.i.i691 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %add.ptr.i.i691, align 2
  %conv.i.i692 = zext i16 %195 to i32
  %or.i.i693 = or i32 %192, %conv.i.i692
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i693)
  %cmp.i.i694.not = icmp eq i32 %or.i.i693, 0
  br i1 %cmp.i.i694.not, label %land.rhs.i695.for.cond374.preheader_crit_edge, label %land.rhs.i695.if.end385_crit_edge

land.rhs.i695.if.end385_crit_edge:                ; preds = %land.rhs.i695
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end385

land.rhs.i695.for.cond374.preheader_crit_edge:    ; preds = %land.rhs.i695
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond374.preheader

for.cond374.preheader:                            ; preds = %land.rhs.i695.for.cond374.preheader_crit_edge, %if.end370.for.cond374.preheader_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %197, i8 16) #13, !srcloc !279
  %198 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %io_data, align 4
  %200 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %199) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %201 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %addr, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %203, i8 17) #13, !srcloc !279
  %204 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %io_data, align 4
  %206 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %205) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %207 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %3, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %208 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %209, i8 18) #13, !srcloc !279
  %210 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_data, align 4
  %212 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %211) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %213 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %4, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %215, i8 19) #13, !srcloc !279
  %216 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %io_data, align 4
  %218 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %217) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %219 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %5, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %220 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %221, i8 20) #13, !srcloc !279
  %222 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %io_data, align 4
  %224 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %223) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %225 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %6, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %226 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %227, i8 21) #13, !srcloc !279
  %228 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %io_data, align 4
  %230 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %229) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %231 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %7, align 1
  %dev_addr383 = getelementptr inbounds %struct.dm9000_plat_data, ptr %pdata.0, i32 0, i32 1
  call void @dev_addr_mod(ptr noundef %call56, i32 noundef 0, ptr noundef %dev_addr383, i32 noundef 6) #13
  br label %if.end385

if.end385:                                        ; preds = %for.cond374.preheader, %land.rhs.i695.if.end385_crit_edge
  %mac_src.1 = phi ptr [ @.str.54, %for.cond374.preheader ], [ %mac_src.0, %land.rhs.i695.if.end385_crit_edge ]
  %232 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev_addr, align 64
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %236 = and i32 %235, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.i.not.i698 = icmp eq i32 %236, 0
  br i1 %tobool.i.not.i698, label %is_valid_ether_addr.exit704, label %if.end385.if.end389.thread_crit_edge

if.end385.if.end389.thread_crit_edge:             ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end389.thread

is_valid_ether_addr.exit704:                      ; preds = %if.end385
  %add.ptr.i.i699 = getelementptr i8, ptr %233, i32 4
  %237 = ptrtoint ptr %add.ptr.i.i699 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %add.ptr.i.i699, align 2
  %conv.i.i700 = zext i16 %238 to i32
  %or.i.i701 = or i32 %235, %conv.i.i700
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i701)
  %cmp.i.i702.not = icmp eq i32 %or.i.i701, 0
  br i1 %cmp.i.i702.not, label %is_valid_ether_addr.exit704.if.end389.thread_crit_edge, label %if.end389

is_valid_ether_addr.exit704.if.end389.thread_crit_edge: ; preds = %is_valid_ether_addr.exit704
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end389.thread

if.end389:                                        ; preds = %is_valid_ether_addr.exit704
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %239 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call56, ptr %driver_data.i.i, align 4
  %call390 = call i32 @register_netdev(ptr noundef %call56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call390)
  %cmp391 = icmp eq i32 %call390, 0
  br i1 %cmp391, label %if.end389.do.end405_crit_edge, label %if.end389.cleanup_crit_edge

if.end389.cleanup_crit_edge:                      ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end389.do.end405_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end405

if.end389.thread:                                 ; preds = %is_valid_ether_addr.exit704.if.end389.thread_crit_edge, %if.end385.if.end389.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #13
  %240 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %241 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %addr.i, align 1
  %243 = and i8 %242, -4
  %244 = or i8 %243, 2
  store i8 %244, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %call56, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call56, i32 0, i32 55
  %245 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #13
  %driver_data.i.i727 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %246 = ptrtoint ptr %driver_data.i.i727 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call56, ptr %driver_data.i.i727, align 4
  %call390728 = call i32 @register_netdev(ptr noundef %call56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call390728)
  %cmp391729 = icmp eq i32 %call390728, 0
  br i1 %cmp391729, label %do.end398, label %if.end389.thread.cleanup_crit_edge

if.end389.thread.cleanup_crit_edge:               ; preds = %if.end389.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end398:                                        ; preds = %if.end389.thread
  call void @__sanitizer_cov_trace_pc() #15
  %247 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %248, ptr noundef nonnull @.str.57, ptr noundef %call56) #16
  br label %do.end405

do.end405:                                        ; preds = %do.end398, %if.end389.do.end405_crit_edge
  %mac_src.2730733 = phi ptr [ @.str.55, %do.end398 ], [ %mac_src.1, %if.end389.do.end405_crit_edge ]
  %249 = ptrtoint ptr %type332 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %type332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %251 = icmp ult i32 %250, 3
  br i1 %251, label %switch.lookup, label %do.end405.dm9000_type_to_char.exit_crit_edge

do.end405.dm9000_type_to_char.exit_crit_edge:     ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm9000_type_to_char.exit

switch.lookup:                                    ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dm9000_probe, i32 0, i32 %250
  %252 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %252)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dm9000_type_to_char.exit

dm9000_type_to_char.exit:                         ; preds = %switch.lookup, %do.end405.dm9000_type_to_char.exit_crit_edge
  %retval.0.i705 = phi i32 [ %switch.load, %switch.lookup ], [ 63, %do.end405.dm9000_type_to_char.exit_crit_edge ]
  %253 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr.i, align 4
  %255 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %io_data, align 4
  %257 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %irq, align 4
  %259 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev_addr, align 64
  %call416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %call56, i32 noundef %retval.0.i705, ptr noundef %254, ptr noundef %256, i32 noundef %258, ptr noundef %260, ptr noundef %mac_src.2730733) #16
  br label %cleanup

do.end420:                                        ; preds = %do.end290, %do.end225, %do.end214, %do.end200, %do.end189, %if.end125.do.end420_crit_edge, %do.end121
  %ret.0 = phi i32 [ -5, %do.end189 ], [ -22, %do.end200 ], [ -5, %do.end214 ], [ -22, %do.end225 ], [ -19, %do.end290 ], [ -2, %do.end121 ], [ %call126, %if.end125.do.end420_crit_edge ]
  %261 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %262, ptr noundef nonnull @.str.64, i32 noundef %ret.0) #16
  call fastcc void @dm9000_release_board(ptr noundef %add.ptr.i)
  call void @free_netdev(ptr noundef %call56) #13
  br label %out_regulator_disable

out_regulator_disable:                            ; preds = %do.end420, %if.end55.out_regulator_disable_crit_edge, %if.then52, %do.end44
  %ret.1 = phi i32 [ %call39, %do.end44 ], [ %ret.0, %do.end420 ], [ %20, %if.then52 ], [ -12, %if.end55.out_regulator_disable_crit_edge ]
  br i1 %cmp.i652, label %out_regulator_disable.cleanup_crit_edge, label %if.then423

out_regulator_disable.cleanup_crit_edge:          ; preds = %out_regulator_disable
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then423:                                       ; preds = %out_regulator_disable
  call void @__sanitizer_cov_trace_pc() #15
  %call424 = call i32 @regulator_disable(ptr noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then423, %out_regulator_disable.cleanup_crit_edge, %dm9000_type_to_char.exit, %if.end389.thread.cleanup_crit_edge, %if.end389.cleanup_crit_edge, %do.end17, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ -517, %if.then.cleanup_crit_edge ], [ 0, %dm9000_type_to_char.exit ], [ 0, %if.end389.cleanup_crit_edge ], [ %ret.1, %if.then423 ], [ %ret.1, %out_regulator_disable.cleanup_crit_edge ], [ 0, %if.end389.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #13
  tail call fastcc void @dm9000_release_board(ptr noundef %add.ptr.i.i)
  tail call void @free_netdev(ptr noundef %1) #13
  %power_supply = getelementptr i8, ptr %1, i32 2660
  %2 = ptrtoint ptr %power_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_supply, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #13
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_drv_remove.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_drv_remove, %if.then8)) #13
          to label %do.end [label %if.then8], !srcloc !277

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_drv_remove.__UNIQUE_ID_ddebug409, ptr noundef %dev, ptr noundef nonnull @.str.124) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_poll_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -164
  %ndev1 = getelementptr i8, ptr %w, i32 100
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %flags = getelementptr i8, ptr %w, i32 -140
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %lock.i = getelementptr i8, ptr %w, i32 104
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 1) #13, !srcloc !279
  %io_data.i.i = getelementptr i8, ptr %w, i32 -160
  %8 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_data.i.i, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv6.i = zext i8 %10 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %and7 = and i32 %conv6.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cmp.not = xor i1 %tobool8.not, %tobool.not.i
  br i1 %cmp.not, label %if.then.if.end22_crit_edge, label %if.then10

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then10:                                        ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %w, i32 180
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and11 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then10
  %16 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev1, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 0) #13, !srcloc !279
  %20 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_data.i.i, align 4
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #13
  br i1 %tobool8.not, label %if.end.thread, label %if.end.thread42

if.end.thread42:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %mii2.i = getelementptr i8, ptr %w, i32 148
  %mdio_read.i = getelementptr i8, ptr %w, i32 172
  %23 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr i8, ptr %w, i32 168
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %mii2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mii2.i, align 4
  %call3.i = tail call i32 %24(ptr noundef %26, i32 noundef %28, i32 noundef 5) #13
  %dev4.i = getelementptr i8, ptr %w, i32 -116
  %29 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev4.i, align 4
  %and.i = and i32 %conv6.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool5.not.i, i32 100, i32 10
  %31 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not.i = icmp eq i8 %31, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.72, ptr @.str.71
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.68, ptr noundef %17, i32 noundef %cond.i, ptr noundef nonnull %cond8.i, i32 noundef %call3.i) #16
  br label %if.else

if.end.thread:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %dev12.i = getelementptr i8, ptr %w, i32 -116
  %32 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.74, ptr noundef %17) #16
  br label %if.then15

if.end:                                           ; preds = %if.then10
  br i1 %tobool8.not, label %if.end.if.then15_crit_edge, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %if.end.if.then15_crit_edge, %if.end.thread
  tail call void @netif_carrier_off(ptr noundef %1) #13
  br label %if.end22

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.thread42
  tail call void @netif_carrier_on(ptr noundef %1) #13
  br label %if.end22

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mii = getelementptr i8, ptr %w, i32 148
  %msg_enable19 = getelementptr i8, ptr %w, i32 180
  %34 = ptrtoint ptr %msg_enable19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable19, align 4
  %and20 = and i32 %35, 4
  %call21 = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef %and20, i32 noundef 0) #13
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.else, %if.then15, %if.then.if.end22_crit_edge
  %state.i40 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %state.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i40, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  %type.i = getelementptr i8, ptr %w, i32 -132
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.then.i41, label %if.then24.if.end25_crit_edge

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then.i41:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %w, i32 noundef 200) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then.i41, %if.then24.if.end25_crit_edge, %if.end22.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_wol_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %lock = getelementptr i8, ptr %dev_id, i32 2572
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 1) #13, !srcloc !279
  %io_data.i = getelementptr i8, ptr %dev_id, i32 2308
  %2 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_data.i, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv7 = zext i8 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 15) #13, !srcloc !279
  %7 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_data.i, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv9 = zext i8 %9 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_wol_interrupt.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_wol_interrupt, %if.then)) #13
          to label %do.end17 [label %if.then], !srcloc !277

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev15 = getelementptr i8, ptr %dev_id, i32 2352
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_wol_interrupt.__UNIQUE_ID_ddebug400, ptr noundef %11, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, i32 noundef %conv7, i32 noundef %conv9) #13
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %and = and i32 %conv7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.end17.if.end52_crit_edge, label %if.then19

do.end17.if.end52_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then19:                                        ; preds = %do.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 32) #13, !srcloc !279
  %and20 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then19.if.end27_crit_edge, label %do.end25

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %dev26 = getelementptr i8, ptr %dev_id, i32 2352
  %16 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.78) #16
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.then19.if.end27_crit_edge
  %and28 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %do.end33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %dev34 = getelementptr i8, ptr %dev_id, i32 2352
  %18 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.80) #16
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.end27.if.end35_crit_edge
  %and36 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %do.end41

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %dev42 = getelementptr i8, ptr %dev_id, i32 2352
  %20 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.83) #16
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end35.if.end43_crit_edge
  %and44 = and i32 %conv9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end49, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %dev50 = getelementptr i8, ptr %dev_id, i32 2352
  %22 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.86, i32 noundef %conv7, i32 noundef %conv9) #16
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %if.end43.if.end52_crit_edge, %do.end17.if.end52_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %not.tobool18.not = xor i1 %tobool18.not, true
  %cond = zext i1 %not.tobool18.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_reset(ptr nocapture noundef readonly %db) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_reset.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_reset, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !277

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 17
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_reset.__UNIQUE_ID_ddebug383, ptr noundef %1, ptr noundef nonnull @.str.90) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 1
  %4 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 3) #13, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 0) #13, !srcloc !279
  %9 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_data.i, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %do.end.if.end9_crit_edge, label %do.end7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev8 = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 17
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.91) #16
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %do.end.if.end9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 3) #13, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 0) #13, !srcloc !279
  %26 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_data.i, align 4
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool13.not = icmp eq i8 %29, 0
  br i1 %tobool13.not, label %if.end9.if.end18_crit_edge, label %do.end16

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %dev17 = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 17
  %30 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.93) #16
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end9.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_phy_read(ptr noundef %dev, i32 noundef %phy_reg_unused, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %addr_lock = getelementptr i8, ptr %dev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %addr_lock, i32 noundef 0) #13
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 12) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %5 = trunc i32 %reg to i8
  %conv3.i = or i8 %5, 64
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %conv3.i) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 12) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !285
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %2) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %in_suspend.i = getelementptr i8, ptr %dev, i32 2332
  %14 = ptrtoint ptr %in_suspend.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %in_suspend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %15 = icmp ult i8 %bf.load.i, 64
  br i1 %15, label %if.else.i, label %cond.false.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #13
  br label %dm9000_msleep.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 1) #13
  br label %dm9000_msleep.exit

dm9000_msleep.exit:                               ; preds = %if.else.i, %cond.false.i
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 14) #13, !srcloc !279
  %26 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_data.i, align 4
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv38 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv38, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 13) #13, !srcloc !279
  %31 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_data.i, align 4
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv40 = zext i8 %33 to i32
  %or41 = or i32 %shl, %conv40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !287
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %19) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #13
  tail call void @mutex_unlock(ptr noundef %addr_lock) #13
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %36)
  %cmp50 = icmp sgt i32 %36, 5
  br i1 %cmp50, label %do.body52, label %dm9000_msleep.exit.do.end63_crit_edge

dm9000_msleep.exit.do.end63_crit_edge:            ; preds = %dm9000_msleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end63

do.body52:                                        ; preds = %dm9000_msleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_phy_read.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_phy_read, %if.then57)) #13
          to label %do.end63 [label %if.then57], !srcloc !277

if.then57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %dev58 = getelementptr i8, ptr %dev, i32 2352
  %37 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_phy_read.__UNIQUE_ID_ddebug384, ptr noundef %38, ptr noundef nonnull @.str.120, i32 noundef %reg, i32 noundef %or41) #13
  br label %do.end63

do.end63:                                         ; preds = %if.then57, %do.body52, %dm9000_msleep.exit.do.end63_crit_edge
  ret i32 %or41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_phy_write(ptr noundef %dev, i32 noundef %phyaddr_unused, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %do.body1, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_phy_write.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_phy_write, %if.then5)) #13
          to label %do.end9 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr i8, ptr %dev, i32 2352
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_phy_write.__UNIQUE_ID_ddebug385, ptr noundef %2, ptr noundef nonnull @.str.122, i32 noundef %reg, i32 noundef %value) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %in_timeout = getelementptr i8, ptr %dev, i32 2332
  %3 = ptrtoint ptr %in_timeout to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %in_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %if.then11, label %do.end9.do.body14_crit_edge

do.end9.do.body14_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %addr_lock = getelementptr i8, ptr %dev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %addr_lock, i32 noundef 0) #13
  br label %do.body14

do.body14:                                        ; preds = %if.then11, %do.end9.do.body14_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 12) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %9 = trunc i32 %reg to i8
  %conv3.i = or i8 %9, 64
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %conv3.i) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 13) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i91 = trunc i32 %value to i8
  %14 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %conv3.i91) #13, !srcloc !279
  %16 = lshr i32 %value, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 14) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i93 = trunc i32 %16 to i8
  %19 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %conv3.i93) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 10) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !289
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %6) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #13
  %27 = ptrtoint ptr %in_timeout to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %in_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %28 = icmp ult i8 %bf.load.i, 64
  br i1 %28, label %if.else.i, label %cond.false.i

cond.false.i:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #13
  br label %dm9000_msleep.exit

if.else.i:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 1) #13
  br label %dm9000_msleep.exit

dm9000_msleep.exit:                               ; preds = %if.else.i, %cond.false.i
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !291
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %32) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #13
  %39 = ptrtoint ptr %in_timeout to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load61 = load i8, ptr %in_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load61)
  %tobool64.not = icmp sgt i8 %bf.load61, -1
  br i1 %tobool64.not, label %if.then65, label %dm9000_msleep.exit.if.end67_crit_edge

dm9000_msleep.exit.if.end67_crit_edge:            ; preds = %dm9000_msleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then65:                                        ; preds = %dm9000_msleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  %addr_lock66 = getelementptr i8, ptr %dev, i32 2376
  tail call void @mutex_unlock(ptr noundef %addr_lock66) #13
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %dm9000_msleep.exit.if.end67_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_read_eeprom(ptr noundef %db, i32 noundef %offset, ptr nocapture noundef writeonly %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 11
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %to, align 1
  %arrayidx2 = getelementptr i8, ptr %to, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %arrayidx2, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %addr_lock = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %addr_lock, i32 noundef 0) #13
  %lock = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 26
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 12) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i = trunc i32 %offset to i8
  %io_data.i = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 1
  %6 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %conv3.i) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 4) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  tail call fastcc void @dm9000_wait_eeprom(ptr noundef %db)
  tail call void @msleep(i32 noundef 1) #13
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 13) #13, !srcloc !279
  %18 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_data.i, align 4
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %21 = ptrtoint ptr %to to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %to, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 14) #13, !srcloc !279
  %24 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_data.i, align 4
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %arrayidx26 = getelementptr i8, ptr %to, i32 1
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx26, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #13
  tail call void @mutex_unlock(ptr noundef %addr_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_release_board(ptr nocapture noundef readonly %db) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db, align 4
  tail call void @iounmap(ptr noundef %1) #13
  %io_data = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 1
  %2 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_data, align 4
  tail call void @iounmap(ptr noundef %3) #13
  %data_req = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 21
  %4 = ptrtoint ptr %data_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_req, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @release_resource(ptr noundef nonnull %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %data_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_req, align 4
  tail call void @kfree(ptr noundef %7) #13
  %addr_req = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 20
  %8 = ptrtoint ptr %addr_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr_req, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @release_resource(ptr noundef nonnull %9) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %10 = ptrtoint ptr %addr_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_req, align 4
  tail call void @kfree(ptr noundef %11) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_dumpblk_8bit(ptr noundef %reg, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3 = icmp sgt i32 %count, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %reg) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !292
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_outblk_8bit(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_writesb(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_inblk_8bit(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_readsb(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_dumpblk_16bit(ptr noundef %reg, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp4 = icmp sgt i32 %add, 1
  br i1 %cmp4, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %shr6 = lshr i32 %add, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg) #13, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %shr6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_outblk_16bit(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 1
  %shr = ashr i32 %add, 1
  tail call void @__raw_writesw(ptr noundef %reg, ptr noundef %data, i32 noundef %shr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_inblk_16bit(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 1
  %shr = ashr i32 %add, 1
  tail call void @__raw_readsw(ptr noundef %reg, ptr noundef %data, i32 noundef %shr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_dumpblk_32bit(ptr noundef %reg, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp4 = icmp sgt i32 %add, 3
  br i1 %cmp4, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %shr6 = lshr i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #13, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %shr6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_outblk_32bit(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 3
  %shr = ashr i32 %add, 2
  tail call void @__raw_writesl(ptr noundef %reg, ptr noundef %data, i32 noundef %shr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_inblk_32bit(ptr noundef %reg, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, 3
  %shr = ashr i32 %add, 2
  tail call void @__raw_readsl(ptr noundef %reg, ptr noundef %data, i32 noundef %shr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %1) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

entry.irq_get_trigger_type.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, 15
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %entry.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %and.i.i, %cond.true.i ], [ 0, %entry.irq_get_trigger_type.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %dev, i32 2648
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %irq_get_trigger_type.exit.if.end8_crit_edge, label %do.body

irq_get_trigger_type.exit.if.end8_crit_edge:      ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

do.body:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_open.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_open, %if.then6)) #13
          to label %if.end8 [label %if.then6], !srcloc !277

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev7 = getelementptr i8, ptr %dev, i32 2352
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_open.__UNIQUE_ID_ddebug401, ptr noundef %9, ptr noundef nonnull @.str.96, ptr noundef %dev) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %irq_get_trigger_type.exit.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 0
  br i1 %cmp, label %do.end12, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %dev13 = getelementptr i8, ptr %dev, i32 2352
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.97) #16
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end8.if.end14_crit_edge
  %or = or i32 %cond.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 31) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 0) #13, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #13
  tail call fastcc void @dm9000_init_dm9000(ptr noundef %dev)
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call.i44 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @dm9000_interrupt, ptr noundef null, i32 noundef %or, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool19.not = icmp eq i32 %call.i44, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %imr_all.i = getelementptr i8, ptr %dev, i32 2326
  %19 = ptrtoint ptr %imr_all.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %imr_all.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %20) #13, !srcloc !279
  %dbug_cnt = getelementptr i8, ptr %dev, i32 2322
  %25 = ptrtoint ptr %dbug_cnt to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %dbug_cnt, align 2
  %mii = getelementptr i8, ptr %dev, i32 2616
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 4
  %and23 = and i32 %27, 4
  %call24 = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef %and23, i32 noundef 1) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %phy_poll = getelementptr i8, ptr %dev, i32 2468
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %phy_poll, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -11, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2648
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_stop.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_stop, %if.then5)) #13
          to label %if.end6 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %ndev, i32 2352
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_stop.__UNIQUE_ID_ddebug402, ptr noundef %3, ptr noundef nonnull @.str.114, ptr noundef %ndev) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %phy_poll = getelementptr i8, ptr %ndev, i32 2468
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %phy_poll) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %ndev) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %ndev) #13
  tail call fastcc void @dm9000_shutdown(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.body1, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_start_xmit.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_start_xmit, %if.then5)) #13
          to label %do.end9 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr i8, ptr %dev, i32 2352
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_start_xmit.__UNIQUE_ID_ddebug390, ptr noundef %2, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %tx_pkt_cnt = getelementptr i8, ptr %dev, i32 2314
  %3 = ptrtoint ptr %tx_pkt_cnt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_pkt_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp10 = icmp ugt i16 %4, 1
  br i1 %cmp10, label %do.end9.cleanup_crit_edge, label %do.body15

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body15:                                        ; preds = %do.end9
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 -8) #13, !srcloc !279
  %outblk = getelementptr i8, ptr %dev, i32 2344
  %7 = ptrtoint ptr %outblk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %outblk, align 4
  %io_data = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %io_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_data, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  tail call void %8(ptr noundef %10, ptr noundef %12, i32 noundef %14) #13
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %18, %16
  store i32 %add, ptr %tx_bytes, align 4
  %19 = ptrtoint ptr %tx_pkt_cnt to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_pkt_cnt, align 2
  %inc = add i16 %20, 1
  store i16 %inc, ptr %tx_pkt_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp32 = icmp eq i16 %20, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %21 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %22 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %22 to i32
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %conv37 = trunc i32 %24 to i16
  tail call fastcc void @dm9000_send_packet(ptr noundef %dev, i32 noundef %bf.cast, i16 noundef zeroext %conv37)
  br label %if.end46

if.else:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %conv39 = trunc i32 %26 to i16
  %queue_pkt_len = getelementptr i8, ptr %dev, i32 2316
  %27 = ptrtoint ptr %queue_pkt_len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv39, ptr %queue_pkt_len, align 4
  %ip_summed40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %ip_summed40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load41 = load i16, ptr %ip_summed40, align 8
  %bf.lshr42 = lshr i16 %bf.load41, 9
  %conv45 = and i16 %bf.lshr42, 3
  %queue_ip_summed = getelementptr i8, ptr %dev, i32 2320
  %29 = ptrtoint ptr %queue_ip_summed to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv45, ptr %queue_ip_summed, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ 16, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_hash_table(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call fastcc void @dm9000_hash_table_unlocked(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_ioctl(ptr noundef %dev, ptr noundef %req, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mii = getelementptr i8, ptr %dev, i32 2616
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %in_timeout = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %in_timeout to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %in_timeout, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %in_timeout, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %2) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call fastcc void @dm9000_init_dm9000(ptr noundef %dev)
  %imr_all.i = getelementptr i8, ptr %dev, i32 2326
  %6 = ptrtoint ptr %imr_all.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %imr_all.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %7) #13, !srcloc !279
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not.i.i = icmp eq i32 %16, %14
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %14, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %3) #13, !srcloc !279
  %22 = ptrtoint ptr %in_timeout to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load14 = load i8, ptr %in_timeout, align 4
  %bf.clear15 = and i8 %bf.load14, 127
  store i8 %bf.clear15, ptr %in_timeout, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_poll_controller(ptr noundef %dev) #2 align 64 {
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
  %call = tail call i32 @dm9000_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_set_features(ptr noundef %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %and7 = lshr i64 %features, 39
  %2 = trunc i64 %and7 to i8
  %3 = and i8 %2, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 50) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %3) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_init_dm9000(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_init_dm9000.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_init_dm9000, %if.then5)) #13
          to label %do.end9 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr i8, ptr %dev, i32 2352
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_init_dm9000.__UNIQUE_ID_ddebug389, ptr noundef %2, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  tail call fastcc void @dm9000_reset(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i.i = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 -128) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 -2) #13, !srcloc !279
  %9 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_data.i.i, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %12 = lshr i8 %11, 6
  %io_mode = getelementptr i8, ptr %dev, i32 2324
  %13 = ptrtoint ptr %io_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %io_mode, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %14 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hw_features, align 8
  %and = and i64 %15, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %do.end9.if.end16_crit_edge, label %if.then13

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features, align 16
  %and14 = lshr i64 %17, 39
  %18 = trunc i64 %and14 to i8
  %19 = and i8 %18, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 50) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %19) #13, !srcloc !279
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.end9.if.end16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 30) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 31) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 0) #13, !srcloc !279
  %type = getelementptr i8, ptr %dev, i32 2336
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp17 = icmp eq i32 %33, 2
  br i1 %cmp17, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dm9000_phy_write(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 32768)
  tail call void @dm9000_phy_write(ptr noundef %dev, i32 noundef 0, i32 noundef 27, i32 noundef 57600)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 2328
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %wake_supported = getelementptr i8, ptr %dev, i32 2332
  %36 = ptrtoint ptr %wake_supported to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %wake_supported, align 4
  %37 = shl i8 %bf.load, 1
  %38 = and i8 %37, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %.tr = trunc i32 %35 to i8
  %41 = shl i8 %.tr, 4
  %42 = and i8 %41, -128
  %conv3.i66 = or i8 %42, %38
  %43 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %conv3.i66) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 2) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 8) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 63) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 10) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 47) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 0) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %63 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 44) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 -2) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 15) #13, !srcloc !279
  tail call fastcc void @dm9000_hash_table_unlocked(ptr noundef %dev)
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp28.not = icmp eq i32 %70, 0
  %imr.0 = select i1 %cmp28.not, i8 -125, i8 -93
  %imr_all = getelementptr i8, ptr %dev, i32 2326
  %71 = ptrtoint ptr %imr_all to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %imr.0, ptr %imr_all, align 2
  %tx_pkt_cnt = getelementptr i8, ptr %dev, i32 2314
  %72 = ptrtoint ptr %tx_pkt_cnt to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %tx_pkt_cnt, align 2
  %queue_pkt_len = getelementptr i8, ptr %dev, i32 2316
  %73 = ptrtoint ptr %queue_pkt_len to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %queue_pkt_len, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %74 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %75, i32 0, i32 12
  %77 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp.not.i.i = icmp eq i32 %78, %76
  br i1 %cmp.not.i.i, label %if.end20.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end20.netif_trans_update.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %76, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end20.netif_trans_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.body1, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_interrupt.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_interrupt, %if.then5)) #13
          to label %do.body11 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr i8, ptr %dev_id, i32 2352
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_interrupt.__UNIQUE_ID_ddebug398, ptr noundef %2, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.101) #13
  br label %do.body11

do.body11:                                        ; preds = %if.then5, %do.body1, %entry.do.body11_crit_edge
  %lock = getelementptr i8, ptr %dev_id, i32 2572
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i.i = getelementptr i8, ptr %dev_id, i32 2308
  %8 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 -128) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 -2) #13, !srcloc !279
  %12 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_data.i.i, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv24 = zext i8 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 -2) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %14) #13, !srcloc !279
  %msg_enable = getelementptr i8, ptr %dev_id, i32 2648
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body11.if.end44_crit_edge, label %do.body27

do.body11.if.end44_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body27:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_interrupt.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_interrupt, %if.then39)) #13
          to label %if.end44 [label %if.then39], !srcloc !277

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr i8, ptr %dev_id, i32 2352
  %21 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_interrupt.__UNIQUE_ID_ddebug399, ptr noundef %22, ptr noundef nonnull @.str.102, i32 noundef %conv24) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %do.body27, %do.body11.if.end44_crit_edge
  %and45 = and i32 %conv24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dm9000_rx(ptr noundef %dev_id)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %and49 = and i32 %conv24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dm9000_tx_done(ptr noundef %dev_id, ptr noundef %add.ptr.i)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %type = getelementptr i8, ptr %dev_id, i32 2336
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp53.not = icmp eq i32 %24, 0
  %and56 = and i32 %conv24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond = or i1 %tobool57.not, %cmp53.not
  br i1 %or.cond, label %if.end52.if.end61_crit_edge, label %if.then58

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %phy_poll = getelementptr i8, ptr %dev_id, i32 2468
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %phy_poll, i32 noundef 1) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end52.if.end61_crit_edge
  %imr_all.i = getelementptr i8, ptr %dev_id, i32 2326
  %26 = ptrtoint ptr %imr_all.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %imr_all.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %27) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !301
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %5) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_hash_table_unlocked(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #13
  %0 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 32768, ptr %hash_table, align 8
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.body1, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_hash_table_unlocked.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_hash_table_unlocked, %if.then5)) #13
          to label %do.end9 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr i8, ptr %dev, i32 2352
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_hash_table_unlocked.__UNIQUE_ID_ddebug388, ptr noundef %3, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 16) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %7) #13, !srcloc !279
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 17) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %15) #13, !srcloc !279
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 18) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %23) #13, !srcloc !279
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 19) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %31) #13, !srcloc !279
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 20) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 %39) #13, !srcloc !279
  %44 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %45, i32 5
  %46 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 21) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %50 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %47) #13, !srcloc !279
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 8
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %54 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %54)
  %ha.095 = load ptr, ptr %mc, align 4
  %cmp30.not96 = icmp eq ptr %ha.095, %mc
  br i1 %cmp30.not96, label %do.end9.for.cond48.preheader_crit_edge, label %do.end9.for.body34_crit_edge

do.end9.for.body34_crit_edge:                     ; preds = %do.end9
  br label %for.body34

do.end9.for.cond48.preheader_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.body34.for.cond48.preheader_crit_edge, %do.end9.for.cond48.preheader_crit_edge
  %55 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hash_table, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 22) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i = trunc i16 %56 to i8
  %59 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 %conv3.i) #13, !srcloc !279
  %61 = lshr i16 %56, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 23) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i89 = trunc i16 %61 to i8
  %64 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %conv3.i89) #13, !srcloc !279
  %arrayidx53.1 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx53.1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 24) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i.1 = trunc i16 %67 to i8
  %70 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 %conv3.i.1) #13, !srcloc !279
  %72 = lshr i16 %67, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 25) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i89.1 = trunc i16 %72 to i8
  %75 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 %conv3.i89.1) #13, !srcloc !279
  %arrayidx53.2 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %77 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx53.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 26) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i.2 = trunc i16 %78 to i8
  %81 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %conv3.i.2) #13, !srcloc !279
  %83 = lshr i16 %78, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %85, i8 27) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i89.2 = trunc i16 %83 to i8
  %86 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %87, i8 %conv3.i89.2) #13, !srcloc !279
  %arrayidx53.3 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx53.3, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 28) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i.3 = trunc i16 %89 to i8
  %92 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 %conv3.i.3) #13, !srcloc !279
  %94 = lshr i16 %89, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 29) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i89.3 = trunc i16 %94 to i8
  %97 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %98, i8 %conv3.i89.3) #13, !srcloc !279
  %and = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool12.not, i8 49, i8 51
  %and18 = lshr i32 %53, 6
  %99 = trunc i32 %and18 to i8
  %100 = and i8 %99, 8
  %101 = or i8 %100, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %103, i8 5) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %104 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %105, i8 %101) #13, !srcloc !279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #13
  ret void

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %do.end9.for.body34_crit_edge
  %ha.097 = phi ptr [ %ha.0, %for.body34.for.body34_crit_edge ], [ %ha.095, %do.end9.for.body34_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.097, i32 0, i32 2
  %call35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %rem = and i32 %call35, 15
  %shl = shl nuw nsw i32 1, %rem
  %and36 = lshr i32 %call35, 4
  %div85 = and i32 %and36, 3
  %arrayidx37 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %div85
  %106 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx37, align 2
  %108 = trunc i32 %shl to i16
  %conv40 = or i16 %107, %108
  store i16 %conv40, ptr %arrayidx37, align 2
  %109 = ptrtoint ptr %ha.097 to i32
  call void @__asan_load4_noabort(i32 %109)
  %ha.0 = load ptr, ptr %ha.097, align 4
  %cmp30.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp30.not, label %for.body34.for.cond48.preheader_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body34

for.body34.for.cond48.preheader_crit_edge:        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond48.preheader
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %rxhdr = alloca %struct.dm9000_rxhdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxhdr) #13
  %0 = getelementptr inbounds %struct.dm9000_rxhdr, ptr %rxhdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dm9000_rxhdr, ptr %rxhdr, i32 0, i32 2
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %inblk = getelementptr i8, ptr %dev, i32 2340
  %msg_enable = getelementptr i8, ptr %dev, i32 2648
  %dev28 = getelementptr i8, ptr %dev, i32 2352
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %stats183 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %dumpblk = getelementptr i8, ptr %dev, i32 2348
  %2 = ptrtoint ptr %rxhdr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rxhdr, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -16) #13, !srcloc !279
  %5 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_data.i, align 4
  %7 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %8 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_data.i, align 4
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #13, !srcloc !280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !302
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.103, i32 noundef %conv) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 5) #13, !srcloc !279
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_data.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 0) #13, !srcloc !279
  br label %cleanup

if.end:                                           ; preds = %do.body
  %and8 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !303
  call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 -14) #13, !srcloc !279
  %19 = ptrtoint ptr %inblk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inblk, align 4
  %21 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_data.i, align 4
  call void %20(ptr noundef %22, ptr noundef nonnull %rxhdr, i32 noundef 4) #13
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv17 = zext i16 %25 to i32
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 4
  %and18 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end11.if.end33_crit_edge, label %do.body21

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

do.body21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_rx.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_rx, %if.then27)) #13
          to label %if.end33 [label %if.then27], !srcloc !277

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %0, align 1
  %conv29 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_rx.__UNIQUE_ID_ddebug392, ptr noundef %29, ptr noundef nonnull @.str.105, i32 noundef %conv29, i32 noundef %conv17) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %do.body21, %if.end11.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %25)
  %cmp = icmp ult i16 %25, 64
  br i1 %cmp, label %if.then35, label %if.end33.if.end58_crit_edge

if.end33.if.end58_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then35:                                        ; preds = %if.end33
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and37 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then35.if.end79_crit_edge, label %do.body40

if.then35.if.end79_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

do.body40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_rx.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_rx, %if.then52)) #13
          to label %if.end58 [label %if.then52], !srcloc !277

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_rx.__UNIQUE_ID_ddebug393, ptr noundef %35, ptr noundef nonnull @.str.106) #13
  br label %if.end79

if.end58:                                         ; preds = %do.body40, %if.end33.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %25)
  %cmp59 = icmp ugt i16 %25, 1536
  br i1 %cmp59, label %do.body62, label %if.end58.if.end79_crit_edge

if.end58.if.end79_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

do.body62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_rx.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_rx, %if.then74)) #13
          to label %if.end79 [label %if.then74], !srcloc !277

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_rx.__UNIQUE_ID_ddebug394, ptr noundef %37, ptr noundef nonnull @.str.107, i32 noundef %conv17) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %do.body62, %if.end58.if.end79_crit_edge, %if.then52, %if.then35.if.end79_crit_edge
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 1
  %conv81 = zext i8 %39 to i32
  %and82 = and i32 %conv81, 191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end173, label %if.then84

if.then84:                                        ; preds = %if.end79
  %and87 = and i32 %conv81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then84.if.end112_crit_edge, label %if.then89

if.then84.if.end112_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then89:                                        ; preds = %if.then84
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 4
  %and91 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then89.if.end111_crit_edge, label %do.body94

if.then89.if.end111_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

do.body94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_rx.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_rx, %if.then106)) #13
          to label %if.end111 [label %if.then106], !srcloc !277

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_rx.__UNIQUE_ID_ddebug395, ptr noundef %43, ptr noundef nonnull @.str.108) #13
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %do.body94, %if.then89.if.end111_crit_edge
  %44 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_fifo_errors, align 8
  %inc = add i32 %45, 1
  store i32 %inc, ptr %rx_fifo_errors, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then84.if.end112_crit_edge
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %0, align 1
  %48 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool116.not = icmp eq i8 %48, 0
  br i1 %tobool116.not, label %if.end112.if.end142_crit_edge, label %if.then117

if.end112.if.end142_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

if.then117:                                       ; preds = %if.end112
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 4
  %and119 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then117.if.end139_crit_edge, label %do.body122

if.then117.if.end139_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

do.body122:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_rx.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_rx, %if.then134)) #13
          to label %if.end139 [label %if.then134], !srcloc !277

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_rx.__UNIQUE_ID_ddebug396, ptr noundef %52, ptr noundef nonnull @.str.109) #13
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %do.body122, %if.then117.if.end139_crit_edge
  %53 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_crc_errors, align 8
  %inc141 = add i32 %54, 1
  store i32 %inc141, ptr %rx_crc_errors, align 8
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr = load i8, ptr %0, align 1
  br label %if.end142

if.end142:                                        ; preds = %if.end139, %if.end112.if.end142_crit_edge
  %56 = phi i8 [ %.pr, %if.end139 ], [ %47, %if.end112.if.end142_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %tobool146.not = icmp sgt i8 %56, -1
  br i1 %tobool146.not, label %if.end142.if.else201_crit_edge, label %if.then147

if.end142.if.else201_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else201

if.then147:                                       ; preds = %if.end142
  %57 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable, align 4
  %and149 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.then147.if.end169_crit_edge, label %do.body152

if.then147.if.end169_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

do.body152:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_rx.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_rx, %if.then164)) #13
          to label %if.end169 [label %if.then164], !srcloc !277

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_rx.__UNIQUE_ID_ddebug397, ptr noundef %60, ptr noundef nonnull @.str.110) #13
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %do.body152, %if.then147.if.end169_crit_edge
  %61 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_length_errors, align 8
  %inc171 = add i32 %62, 1
  store i32 %inc171, ptr %rx_length_errors, align 8
  br label %if.else201

if.end173:                                        ; preds = %if.end79
  br i1 %cmp, label %if.end173.if.else201_crit_edge, label %land.lhs.true

if.end173.if.else201_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else201

land.lhs.true:                                    ; preds = %if.end173
  %add = add nuw nsw i32 %conv17, 4
  %call.i = call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add, i32 noundef 2592) #13
  %cmp177.not = icmp eq ptr %call.i, null
  br i1 %cmp177.not, label %land.lhs.true.if.else201_crit_edge, label %if.then179

land.lhs.true.if.else201_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else201

if.then179:                                       ; preds = %land.lhs.true
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %64, i32 2
  store ptr %add.ptr.i280, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %65 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %66, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub = add nsw i32 %conv17, -4
  %call180 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub) #13
  %67 = ptrtoint ptr %inblk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %inblk, align 4
  %69 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_data.i, align 4
  call void %68(ptr noundef %70, ptr noundef %call180, i32 noundef %conv17) #13
  %71 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_bytes, align 8
  %add184 = add i32 %72, %conv17
  store i32 %add184, ptr %rx_bytes, align 8
  %call185 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %73 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %call185, ptr %protocol, align 8
  %74 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %features, align 16
  %and186 = and i64 %75, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and186)
  %tobool187.not = icmp eq i64 %and186, 0
  br i1 %tobool187.not, label %if.then179.if.end197_crit_edge, label %if.then188

if.then179.if.end197_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

if.then188:                                       ; preds = %if.then179
  %and190 = shl nuw nsw i32 %conv, 3
  %shl = and i32 %conv, 224
  %and192 = and i32 %shl, %and190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %cmp193 = icmp eq i32 %and192, 0
  br i1 %cmp193, label %if.then195, label %if.then188.if.end197_crit_edge

if.then188.if.end197_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

if.then195:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %76 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %if.then188.if.end197_crit_edge, %if.then179.if.end197_crit_edge
  %call198 = call i32 @netif_rx(ptr noundef nonnull %call.i) #13
  %77 = ptrtoint ptr %stats183 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %stats183, align 8
  %inc200 = add i32 %78, 1
  store i32 %inc200, ptr %stats183, align 8
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.else201, %if.end197
  br label %do.body

if.else201:                                       ; preds = %land.lhs.true.if.else201_crit_edge, %if.end173.if.else201_crit_edge, %if.end169, %if.end142.if.else201_crit_edge
  %79 = ptrtoint ptr %dumpblk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dumpblk, align 4
  %81 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_data.i, align 4
  call void %80(ptr noundef %82, i32 noundef %conv17) #13
  br label %do.body.backedge

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxhdr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_tx_done(ptr nocapture noundef %dev, ptr nocapture noundef %db) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 1) #13, !srcloc !279
  %io_data.i = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 1
  %2 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_data.i, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %entry
  %tx_pkt_cnt = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pkt_cnt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_pkt_cnt, align 2
  %dec = add i16 %6, -1
  store i16 %dec, ptr %tx_pkt_cnt, align 2
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %7 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx_packets, align 4
  %msg_enable = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 28
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_tx_done.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_tx_done, %if.then8)) #13
          to label %if.end10 [label %if.then8], !srcloc !277

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev9 = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 17
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_tx_done.__UNIQUE_ID_ddebug391, ptr noundef %12, ptr noundef nonnull @.str.112, i32 noundef %conv) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.then.if.end10_crit_edge
  %13 = ptrtoint ptr %tx_pkt_cnt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tx_pkt_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  br i1 %cmp.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %queue_ip_summed = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 6
  %15 = ptrtoint ptr %queue_ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %queue_ip_summed, align 4
  %conv15 = zext i16 %16 to i32
  %queue_pkt_len = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 4
  %17 = ptrtoint ptr %queue_pkt_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %queue_pkt_len, align 4
  tail call fastcc void @dm9000_send_packet(ptr noundef %dev, i32 noundef %conv15, i16 noundef zeroext %18)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %20) #13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry.if.end17_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_send_packet(ptr nocapture noundef %dev, i32 noundef %ip_summed, i16 noundef zeroext %pkt_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %ip_summed1 = getelementptr i8, ptr %dev, i32 2656
  %0 = ptrtoint ptr %ip_summed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip_summed1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ip_summed)
  %cmp.not = icmp eq i32 %1, %ip_summed
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ip_summed)
  %cmp2 = icmp eq i32 %ip_summed, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 49) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_data.i, align 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 0) #13, !srcloc !279
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 7) #13, !srcloc !279
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %6 = ptrtoint ptr %ip_summed1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ip_summed, ptr %ip_summed1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 -4) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i = trunc i16 %pkt_len to i8
  %io_data.i17 = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %io_data.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_data.i17, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %conv3.i) #13, !srcloc !279
  %11 = lshr i16 %pkt_len, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 -3) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i18 = trunc i16 %11 to i8
  %14 = ptrtoint ptr %io_data.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_data.i17, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %conv3.i18) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 2) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %io_data.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_data.i17, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 1) #13, !srcloc !279
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_shutdown(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @dm9000_phy_write(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 32768)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 31) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 -128) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 5) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 0) #13, !srcloc !279
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9000_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %dev3 = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %3, i32 noundef 32) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dm9000_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %w) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %w, i32 0, i32 20)
  %wake_supported = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %wake_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %wake_supported, align 4
  %2 = and i8 %bf.load, 32
  %3 = zext i8 %2 to i32
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %w, i32 0, i32 1
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %supported, align 4
  %wake_state = getelementptr i8, ptr %dev, i32 2652
  %5 = ptrtoint ptr %wake_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wake_state, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %w, i32 0, i32 2
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %w, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %wake_supported = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %wake_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wake_supported, align 4
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %addr_lock = getelementptr i8, ptr %dev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %addr_lock, i32 noundef 0) #13
  %lock = getelementptr i8, ptr %dev, i32 2572
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 15) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %6 = trunc i32 %1 to i8
  %7 = lshr i8 %6, 2
  %conv3.i = and i8 %7, 8
  %io_data.i = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %conv3.i) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #13
  tail call void @mutex_unlock(ptr noundef %addr_lock) #13
  %wake_state = getelementptr i8, ptr %dev, i32 2652
  %10 = ptrtoint ptr %wake_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wake_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp15.not = icmp eq i32 %11, %1
  br i1 %cmp15.not, label %if.end3.if.end30_crit_edge, label %if.then17

if.end3.if.end30_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  br i1 %tobool19.not, label %if.then17.if.end30.sink.split_crit_edge, label %land.lhs.true

if.then17.if.end30.sink.split_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.sink.split

land.lhs.true:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool24.not = icmp eq i32 %1, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end30.sink.split_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true.if.end30.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %land.lhs.true.if.end30.sink.split_crit_edge, %if.then17.if.end30.sink.split_crit_edge
  %.sink52 = phi i32 [ 1, %if.then17.if.end30.sink.split_crit_edge ], [ 0, %land.lhs.true.if.end30.sink.split_crit_edge ]
  %irq_wake = getelementptr i8, ptr %dev, i32 2372
  %12 = ptrtoint ptr %irq_wake to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_wake, align 4
  %call21 = tail call i32 @irq_set_irq_wake(i32 noundef %13, i32 noundef %.sink52) #13
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %land.lhs.true.if.end30_crit_edge, %if.end3.if.end30_crit_edge
  %14 = ptrtoint ptr %wake_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %wake_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dm9000_get_msglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2648
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dm9000_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2648
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2616
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mii = getelementptr i8, ptr %dev, i32 2616
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %lock.i = getelementptr i8, ptr %dev, i32 2572
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 1) #13, !srcloc !279
  %io_data.i.i = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_data.i.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %7 = lshr i8 %6, 6
  %8 = and i8 %7, 1
  %and3.lobit = zext i8 %8 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %and3.lobit, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dm9000_get_eeprom_len(ptr nocapture noundef readnone %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_get_eeprom(ptr noundef %dev, ptr nocapture noundef %ee, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %and3 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2328
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and5 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1145911627, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp821 = icmp sgt i32 %3, 0
  br i1 %cmp821, label %if.end7.for.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.022 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %add = add i32 %i.022, %1
  %div = sdiv i32 %add, 2
  %add.ptr = getelementptr i8, ptr %data, i32 %i.022
  tail call fastcc void @dm9000_read_eeprom(ptr noundef %add.ptr.i.i, i32 noundef %div, ptr noundef %add.ptr)
  %add9 = add i32 %i.022, 2
  %cmp8 = icmp slt i32 %add9, %3
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_set_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %ee, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %tmp = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %len2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %4 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset1, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145911627, i32 %7)
  %cmp.not = icmp eq i32 %7, 1145911627
  br i1 %cmp.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp535 = icmp sgt i32 %3, 0
  br i1 %cmp535, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %8 = getelementptr inbounds [2 x i8], ptr %tmp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %len.040 = phi i32 [ %3, %while.body.lr.ph ], [ %sub, %if.end15.while.body_crit_edge ]
  %offset.038 = phi i32 [ %5, %while.body.lr.ph ], [ %add, %if.end15.while.body_crit_edge ]
  %data.addr.036 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end15.while.body_crit_edge ]
  %and6 = and i32 %len.040, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and8 = and i32 %offset.038, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then10

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #13
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %tmp, align 1, !annotation !276
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %8, align 1, !annotation !276
  %div = sdiv i32 %offset.038, 2
  call fastcc void @dm9000_read_eeprom(ptr noundef %add.ptr.i.i, i32 noundef %div, ptr noundef nonnull %tmp)
  %11 = ptrtoint ptr %data.addr.036 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.addr.036, align 1
  %arrayidx = getelementptr [2 x i8], ptr %tmp, i32 0, i32 %and8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx, align 1
  call fastcc void @dm9000_write_eeprom(ptr noundef %add.ptr.i.i, i32 noundef %div, ptr noundef nonnull %tmp)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #13
  br label %if.end15

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %div14 = sdiv i32 %offset.038, 2
  tail call fastcc void @dm9000_write_eeprom(ptr noundef %add.ptr.i.i, i32 noundef %div14, ptr noundef %data.addr.036)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %done.0 = phi i32 [ 1, %if.then10 ], [ 2, %if.else ]
  %add.ptr = getelementptr i8, ptr %data.addr.036, i32 %done.0
  %add = add i32 %done.0, %offset.038
  %sub = sub nsw i32 %len.040, %done.0
  %cmp5 = icmp sgt i32 %sub, 0
  br i1 %cmp5, label %if.end15.while.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2616
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2616
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #13
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_write_eeprom(ptr noundef %db, i32 noundef %offset, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 11
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %addr_lock = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %addr_lock, i32 noundef 0) #13
  %lock = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 26
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 12) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %conv3.i = trunc i32 %offset to i8
  %io_data.i = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 1
  %4 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %conv3.i) #13, !srcloc !279
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 14) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %7) #13, !srcloc !279
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 13) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %13) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 18) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  tail call fastcc void @dm9000_wait_eeprom(ptr noundef %db)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #13
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 11) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %io_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_data.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 0) #13, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #13
  tail call void @mutex_unlock(ptr noundef %addr_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9000_wait_eeprom(ptr noundef %db) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 26
  %io_data.i.i = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %timeout.0 = phi i32 [ 8, %entry ], [ %dec, %if.end.while.cond_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 11) #13, !srcloc !279
  %2 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_data.i.i, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #13, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %if.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.cond
  tail call void @msleep(i32 noundef 1) #13
  %dec = add nsw i32 %timeout.0, -1
  %cmp1 = icmp slt i32 %timeout.0, 0
  br i1 %cmp1, label %do.body, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9000_wait_eeprom.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9000_wait_eeprom, %if.then6)) #13
          to label %while.end [label %if.then6], !srcloc !277

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.board_info, ptr %db, i32 0, i32 17
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dm9000_wait_eeprom.__UNIQUE_ID_ddebug387, ptr noundef %7, ptr noundef nonnull @.str.118) #13
  br label %while.end

while.end:                                        ; preds = %if.then6, %do.body, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_drv_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 2332
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %in_suspend, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %in_suspend, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @netif_device_detach(ptr noundef nonnull %1) #13
  %wake_state = getelementptr i8, ptr %1, i32 2652
  %5 = ptrtoint ptr %wake_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wake_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dm9000_shutdown(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9000_drv_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %wake_state = getelementptr i8, ptr %1, i32 2652
  %4 = ptrtoint ptr %wake_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dm9000_init_dm9000(ptr noundef nonnull %1)
  %imr_all.i = getelementptr i8, ptr %1, i32 2326
  %6 = ptrtoint ptr %imr_all.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %imr_all.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 -1) #13, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  tail call void @arm_heavy_mb() #13
  %io_data.i.i = getelementptr i8, ptr %1, i32 2308
  %10 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_data.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %7) #13, !srcloc !279
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3.if.end_crit_edge
  tail call void @netif_device_attach(ptr noundef nonnull %1) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then.if.end6_crit_edge
  %in_suspend = getelementptr i8, ptr %1, i32 2332
  %12 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %in_suspend, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %in_suspend, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry.if.end7_crit_edge
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

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
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
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !50, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !143, !144, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @__param_watchdog, !1, !"__param_watchdog", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_watchdogtype379, !1, !"__UNIQUE_ID_watchdogtype379", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_watchdog380, !4, !"__UNIQUE_ID_watchdog380", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 51, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 57, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype381, !6, !"__UNIQUE_ID_debugtype381", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug382, !9, !"__UNIQUE_ID_debug382", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 58, i32 1}
!10 = !{ptr @__initcall__kmod_dm9000__410_1805_dm9000_driver_init6, !11, !"__initcall__kmod_dm9000__410_1805_dm9000_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1805, i32 1}
!12 = !{ptr @__exitcall_dm9000_driver_exit, !11, !"__exitcall_dm9000_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author411, !14, !"__UNIQUE_ID_author411", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1807, i32 1}
!15 = !{ptr @__UNIQUE_ID_description412, !16, !"__UNIQUE_ID_description412", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1808, i32 1}
!17 = !{ptr @__UNIQUE_ID_file413, !18, !"__UNIQUE_ID_file413", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1809, i32 1}
!19 = !{ptr @__UNIQUE_ID_license414, !18, !"__UNIQUE_ID_license414", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias415, !21, !"__UNIQUE_ID_alias415", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1810, i32 1}
!22 = !{ptr @debug, !23, !"debug", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 56, i32 12}
!24 = !{ptr @__param_str_watchdog, !1, !"__param_str_watchdog", i1 false, i1 false}
!25 = !{ptr @watchdog, !26, !"watchdog", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 49, i32 12}
!27 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1797, i32 14}
!30 = !{ptr @dm9000_driver, !31, !"dm9000_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1795, i32 31}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1430, i32 34}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1434, i32 3}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dm9000_probe.__UNIQUE_ID_ddebug403, !35, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1438, i32 4}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dm9000_probe._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @dm9000_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1442, i32 3}
!47 = !{ptr @dm9000_probe.__UNIQUE_ID_ddebug404, !46, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1445, i32 54}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1449, i32 10}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1451, i32 4}
!54 = !{ptr @dm9000_probe._entry.11, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dm9000_probe._entry_ptr.13, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1480, i32 2}
!58 = !{ptr @dm9000_probe.__UNIQUE_ID_ddebug405, !57, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!59 = !{ptr @dm9000_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1490, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dm9000_probe.__key.16, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1491, i32 2}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dm9000_probe.__key.18, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1493, i32 2}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dm9000_probe.__key.20, !66, !"__key", i1 false, i1 false}
!69 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1499, i32 3}
!72 = !{ptr @dm9000_probe._entry.22, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dm9000_probe._entry_ptr.24, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1513, i32 3}
!76 = !{ptr @dm9000_probe.__UNIQUE_ID_ddebug406, !75, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1518, i32 4}
!79 = !{ptr @dm9000_probe._entry.26, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dm9000_probe._entry_ptr.28, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1524, i32 5}
!83 = !{ptr @dm9000_probe._entry.29, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dm9000_probe._entry_ptr.31, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1538, i32 3}
!87 = !{ptr @dm9000_probe._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @dm9000_probe._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1546, i32 3}
!91 = !{ptr @dm9000_probe._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @dm9000_probe._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1556, i32 3}
!95 = !{ptr @dm9000_probe._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dm9000_probe._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1564, i32 3}
!99 = !{ptr @dm9000_probe._entry.41, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @dm9000_probe._entry_ptr.43, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1619, i32 3}
!103 = !{ptr @dm9000_probe._entry.44, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dm9000_probe._entry_ptr.46, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1623, i32 3}
!107 = !{ptr @dm9000_probe._entry.47, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dm9000_probe._entry_ptr.49, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1631, i32 2}
!111 = !{ptr @dm9000_probe.__UNIQUE_ID_ddebug407, !110, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1641, i32 3}
!114 = !{ptr @dm9000_probe.__UNIQUE_ID_ddebug408, !113, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1666, i32 12}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1674, i32 13}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1681, i32 13}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1690, i32 13}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1699, i32 4}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @dm9000_probe._entry.56, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @dm9000_probe._entry_ptr.59, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1701, i32 3}
!130 = !{ptr @dm9000_probe._entry.60, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @dm9000_probe._entry_ptr.62, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1709, i32 2}
!134 = !{ptr @dm9000_probe._entry.63, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @dm9000_probe._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1397, i32 27}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1399, i32 27}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 758, i32 3}
!142 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @dm9000_show_carrier._entry, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @dm9000_show_carrier._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 763, i32 3}
!150 = !{ptr @dm9000_show_carrier._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @dm9000_show_carrier._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1251, i32 2}
!154 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @dm9000_wol_interrupt.__UNIQUE_ID_ddebug400, !153, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1258, i32 4}
!158 = !{ptr @dm9000_wol_interrupt._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dm9000_wol_interrupt._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1260, i32 4}
!162 = !{ptr @dm9000_wol_interrupt._entry.79, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dm9000_wol_interrupt._entry_ptr.81, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1262, i32 4}
!166 = !{ptr @dm9000_wol_interrupt._entry.82, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dm9000_wol_interrupt._entry_ptr.84, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1264, i32 4}
!170 = !{ptr @dm9000_wol_interrupt._entry.85, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @dm9000_wol_interrupt._entry_ptr.87, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 386, i32 3}
!174 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @dm9000_set_io.__UNIQUE_ID_ddebug386, !173, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 179, i32 2}
!178 = !{ptr @dm9000_reset.__UNIQUE_ID_ddebug383, !177, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 188, i32 3}
!181 = !{ptr @dm9000_reset._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @dm9000_reset._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.93, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 194, i32 3}
!185 = !{ptr @dm9000_reset._entry.92, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @dm9000_reset._entry_ptr.94, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @dm9000_netdev_ops, !188, !"dm9000_netdev_ops", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1369, i32 36}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1296, i32 3}
!191 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @dm9000_open.__UNIQUE_ID_ddebug401, !190, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!193 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1302, i32 3}
!195 = !{ptr @dm9000_open._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @dm9000_open._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 905, i32 2}
!199 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @dm9000_init_dm9000.__UNIQUE_ID_ddebug389, !198, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 846, i32 2}
!203 = !{ptr @dm9000_hash_table_unlocked.__UNIQUE_ID_ddebug388, !202, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1197, i32 2}
!206 = !{ptr @dm9000_interrupt.__UNIQUE_ID_ddebug398, !205, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1213, i32 3}
!209 = !{ptr @dm9000_interrupt.__UNIQUE_ID_ddebug399, !208, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1106, i32 4}
!212 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @dm9000_rx._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @dm9000_rx._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1123, i32 4}
!217 = !{ptr @dm9000_rx.__UNIQUE_ID_ddebug392, !216, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1130, i32 5}
!220 = !{ptr @dm9000_rx.__UNIQUE_ID_ddebug393, !219, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1134, i32 4}
!223 = !{ptr @dm9000_rx.__UNIQUE_ID_ddebug394, !222, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1144, i32 6}
!226 = !{ptr @dm9000_rx.__UNIQUE_ID_ddebug395, !225, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1149, i32 6}
!229 = !{ptr @dm9000_rx.__UNIQUE_ID_ddebug396, !228, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1154, i32 6}
!232 = !{ptr @dm9000_rx.__UNIQUE_ID_ddebug397, !231, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1068, i32 4}
!235 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @dm9000_tx_done.__UNIQUE_ID_ddebug391, !234, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1354, i32 3}
!239 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @dm9000_stop.__UNIQUE_ID_ddebug402, !238, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1021, i32 2}
!243 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @dm9000_start_xmit.__UNIQUE_ID_ddebug390, !242, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!245 = !{ptr @dm9000_ethtool_ops, !246, !"dm9000_ethtool_ops", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 733, i32 33}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 457, i32 4}
!249 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @dm9000_wait_eeprom.__UNIQUE_ID_ddebug387, !248, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 315, i32 2}
!253 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @dm9000_phy_read.__UNIQUE_ID_ddebug384, !252, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 328, i32 2}
!257 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @dm9000_phy_write.__UNIQUE_ID_ddebug385, !256, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1783, i32 2}
!261 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @dm9000_drv_remove.__UNIQUE_ID_ddebug409, !260, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!263 = !{ptr @dm9000_of_matches, !264, !"dm9000_of_matches", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1788, i32 34}
!265 = !{ptr @dm9000_drv_pm_ops, !266, !"dm9000_drv_pm_ops", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/davicom/dm9000.c", i32 1766, i32 32}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{!"auto-init"}
!277 = !{i64 2148993735, i64 2148993740, i64 2148993753, i64 2148993797, i64 2148993831, i64 2148993852}
!278 = !{i64 2157160589}
!279 = !{i64 6749337}
!280 = !{i64 6749732}
!281 = !{i64 2157160856}
!282 = !{i64 2157161064}
!283 = !{i64 2157161321}
!284 = !{i64 2157171246}
!285 = !{i64 2157171488}
!286 = !{i64 2157172110}
!287 = !{i64 2157172338}
!288 = !{i64 2157177858}
!289 = !{i64 2157178110}
!290 = !{i64 2157178732}
!291 = !{i64 2157178950}
!292 = !{i64 2157168476}
!293 = !{i64 6749114}
!294 = !{i64 2157168906}
!295 = !{i64 6749952}
!296 = !{i64 2157169336}
!297 = !{i64 2157207136}
!298 = !{i64 2157204018}
!299 = !{i64 2157204231}
!300 = !{i64 2157229179}
!301 = !{i64 2157231875}
!302 = !{i64 2157209883}
!303 = !{i64 2157211723}
