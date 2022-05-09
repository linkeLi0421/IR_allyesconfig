; ModuleID = '/llk/IR_all_yes/drivers/watchdog/mlx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/mlx_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxreg_core_platform_data = type { ptr, ptr, i32, i32, i32, [32 x i8], i32 }
%struct.mlxreg_wdt = type { %struct.watchdog_device, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }

@__initcall__kmod_mlx_wdt__170_335_mlxreg_wdt_driver_init6 = internal global ptr @mlxreg_wdt_driver_init, section ".initcall6.init", align 4
@mlxreg_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxreg_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxreg_wdt_driver_exit = internal global ptr @mlxreg_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [54 x i8] c"mlx_wdt.author=Michael Shych <michaelsh@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [45 x i8] c"mlx_wdt.description=Mellanox watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [38 x i8] c"mlx_wdt.file=drivers/watchdog/mlx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [20 x i8] c"mlx_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [31 x i8] c"mlx_wdt.alias=platform:mlx-wdt\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx-wdt\00", [24 x i8] zeroinitializer }, align 32
@mlxreg_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get platform data.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlxreg_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/watchdog/mlx_wdt.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxreg_wdt_probe._entry_ptr = internal global ptr @mlxreg_wdt_probe._entry, section ".printk_index", align 4
@mlxreg_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot register watchdog device (err=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@mlxreg_wdt_probe._entry_ptr.8 = internal global ptr @mlxreg_wdt_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"action\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeleft\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mlxreg_wdt_main_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33184, i32 0, [32 x i8] c"mlx-wdt-main\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@mlxreg_wdt_aux_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 34176, i32 0, [32 x i8] c"mlx-wdt-aux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@mlxreg_wdt_ops_type1 = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @mlxreg_wdt_start, ptr @mlxreg_wdt_stop, ptr @mlxreg_wdt_ping, ptr null, ptr @mlxreg_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mlxreg_wdt_ops_type2 = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @mlxreg_wdt_start, ptr @mlxreg_wdt_stop, ptr @mlxreg_wdt_ping, ptr null, ptr @mlxreg_wdt_set_timeout, ptr null, ptr @mlxreg_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mlxreg_wdt_check_card_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 75, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"watchdog previously reset the CPU\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxreg_wdt_check_card_reset\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlxreg_wdt_check_card_reset._entry_ptr = internal global ptr @mlxreg_wdt_check_card_reset._entry, section ".printk_index", align 4
@switch.table.mlxreg_wdt_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mlxreg_wdt_ops_type1, ptr @mlxreg_wdt_ops_type2, ptr @mlxreg_wdt_ops_type2], [20 x i8] zeroinitializer }, align 32
@switch.table.mlxreg_wdt_probe.17 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 255, i32 65535], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"mlxreg_wdt_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 328, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 331, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 288, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 324, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 230, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 232, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 234, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 236, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 238, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"mlxreg_wdt_main_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 210, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"mlxreg_wdt_aux_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 216, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"mlxreg_wdt_ops_type1\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 193, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"mlxreg_wdt_ops_type2\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 201, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [30 x i8] c"../drivers/watchdog/mlx_wdt.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 74, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"switch.table.mlxreg_wdt_probe\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [33 x i8] c"switch.table.mlxreg_wdt_probe.17\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mlxreg_wdt_driver_exit, ptr @__initcall__kmod_mlx_wdt__170_335_mlxreg_wdt_driver_init6, ptr @mlxreg_wdt_check_card_reset._entry, ptr @mlxreg_wdt_check_card_reset._entry_ptr, ptr @mlxreg_wdt_driver_exit, ptr @mlxreg_wdt_probe._entry, ptr @mlxreg_wdt_probe._entry.6, ptr @mlxreg_wdt_probe._entry_ptr, ptr @mlxreg_wdt_probe._entry_ptr.8, ptr @mlxreg_wdt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mlxreg_wdt_main_info, ptr @mlxreg_wdt_aux_info, ptr @mlxreg_wdt_ops_type1, ptr @mlxreg_wdt_ops_type2, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.mlxreg_wdt_probe, ptr @switch.table.mlxreg_wdt_probe.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_main_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_aux_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_ops_type1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_ops_type2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_wdt_check_card_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlxreg_wdt_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlxreg_wdt_probe.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxreg_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxreg_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %parent, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %regmap6 = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regmap6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %regmap6, align 4
  %call8 = tail call i32 @regmap_get_val_bytes(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %regmap_val_sz = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %regmap_val_sz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call8, ptr %regmap_val_sz, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %reset_idx.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %reset_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %reset_idx.i, align 4
  %counter.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp85.i = icmp sgt i32 %11, 0
  br i1 %cmp85.i, label %for.body.lr.ph.i, label %if.end10.for.end.i_crit_edge

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end10
  %action_idx.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 3
  %timeout_idx.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 4
  %tleft_idx.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 5
  %ping_idx.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %data.086.i = phi ptr [ %8, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i75 = tail call ptr @strnstr(ptr noundef %data.086.i, ptr noundef nonnull @.str.9, i32 noundef 32) #6
  %tobool.not.i = icmp eq ptr %call.i75, null
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.for.inc.sink.split.i_crit_edge

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %for.body.i
  %call4.i = tail call ptr @strnstr(ptr noundef %data.086.i, ptr noundef nonnull @.str.10, i32 noundef 32) #6
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.else7.i, label %if.else.i.for.inc.sink.split.i_crit_edge

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.else7.i:                                       ; preds = %if.else.i
  %call10.i = tail call ptr @strnstr(ptr noundef %data.086.i, ptr noundef nonnull @.str.11, i32 noundef 32) #6
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.else13.i, label %if.else7.i.for.inc.sink.split.i_crit_edge

if.else7.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.else13.i:                                      ; preds = %if.else7.i
  %call16.i = tail call ptr @strnstr(ptr noundef %data.086.i, ptr noundef nonnull @.str.12, i32 noundef 32) #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.else19.i, label %if.else13.i.for.inc.sink.split.i_crit_edge

if.else13.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.else19.i:                                      ; preds = %if.else13.i
  %call22.i = tail call ptr @strnstr(ptr noundef %data.086.i, ptr noundef nonnull @.str.13, i32 noundef 32) #6
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.else19.i.for.inc.i_crit_edge, label %if.else19.i.for.inc.sink.split.i_crit_edge

if.else19.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.else19.i.for.inc.i_crit_edge:                  ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.else19.i.for.inc.sink.split.i_crit_edge, %if.else13.i.for.inc.sink.split.i_crit_edge, %if.else7.i.for.inc.sink.split.i_crit_edge, %if.else.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %action_idx.sink.i = phi ptr [ %action_idx.i, %for.body.i.for.inc.sink.split.i_crit_edge ], [ %timeout_idx.i, %if.else.i.for.inc.sink.split.i_crit_edge ], [ %tleft_idx.i, %if.else7.i.for.inc.sink.split.i_crit_edge ], [ %ping_idx.i, %if.else13.i.for.inc.sink.split.i_crit_edge ], [ %reset_idx.i, %if.else19.i.for.inc.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %action_idx.sink.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.088.i, ptr %action_idx.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else19.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %data.086.i, i32 1
  %13 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %counter.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.for.end.i_crit_edge
  %pdata30.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %pdata30.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %pdata30.i, align 4
  %identity.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 5
  %call32.i = tail call ptr @strnstr(ptr noundef %identity.i, ptr noundef getelementptr inbounds (%struct.watchdog_info, ptr @mlxreg_wdt_main_info, i32 0, i32 2), i32 noundef 32) #6
  %tobool33.not.i = icmp eq ptr %call32.i, null
  %spec.select.i = select i1 %tobool33.not.i, ptr @mlxreg_wdt_aux_info, ptr @mlxreg_wdt_main_info
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select.i, ptr %16, align 4
  %version.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i, align 4
  %wdt_type.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %wdt_type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %wdt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %21 = icmp ult i32 %19, 3
  br i1 %21, label %switch.lookup, label %for.end.i.mlxreg_wdt_config.exit_crit_edge

for.end.i.mlxreg_wdt_config.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxreg_wdt_config.exit

switch.lookup:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.mlxreg_wdt_probe, i32 0, i32 %19
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep93 = getelementptr inbounds [3 x i32], ptr @switch.table.mlxreg_wdt_probe.17, i32 0, i32 %19
  %23 = ptrtoint ptr %switch.gep93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load94 = load i32, ptr %switch.gep93, align 4
  %ops49.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %ops49.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %switch.load, ptr %ops49.i, align 4
  %max_timeout51.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %max_timeout51.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load94, ptr %max_timeout51.i, align 4
  br label %mlxreg_wdt_config.exit

mlxreg_wdt_config.exit:                           ; preds = %switch.lookup, %for.end.i.mlxreg_wdt_config.exit_crit_edge
  %min_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %min_timeout.i, align 4
  %features = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %mlxreg_wdt_config.exit.if.end14_crit_edge, label %if.then12

mlxreg_wdt_config.exit.if.end14_crit_edge:        ; preds = %mlxreg_wdt_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %mlxreg_wdt_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %mlxreg_wdt_config.exit.if.end14_crit_edge
  %status.i76 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i76) #6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i76) #6
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %timeout_idx.i78 = getelementptr inbounds %struct.mlxreg_wdt, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %timeout_idx.i78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timeout_idx.i78, align 4
  %health_cntr.i = getelementptr %struct.mlxreg_core_data, ptr %31, i32 %33, i32 13
  %34 = ptrtoint ptr %health_cntr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %health_cntr.i, align 4
  %call.i79 = tail call i32 @mlxreg_wdt_set_timeout(ptr noundef %call.i, i32 noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool19.not = icmp eq i32 %call.i79, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.do.end39_crit_edge

if.end14.do.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end21:                                         ; preds = %if.end14
  %36 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features, align 4
  %and23 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end32_crit_edge, label %if.then25

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then25:                                        ; preds = %if.end21
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i, align 4
  %pdata.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %action_idx.i80 = getelementptr inbounds %struct.mlxreg_wdt, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %action_idx.i80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %action_idx.i80, align 4
  %regmap.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %39, i32 0, i32 2
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr %struct.mlxreg_core_data, ptr %43, i32 %45, i32 1
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg.i, align 4
  %mask.i = getelementptr %struct.mlxreg_core_data, ptr %43, i32 %45, i32 2
  %50 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %51, -1
  %bit.i = getelementptr %struct.mlxreg_core_data, ptr %43, i32 %45, i32 3
  %52 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %53
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %49, i32 noundef %neg.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not, label %if.end30, label %if.then25.do.end39_crit_edge

if.then25.do.end39_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end30:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i76) #6
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end21.if.end32_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %54 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %regval.i, align 4, !annotation !61
  %55 = ptrtoint ptr %reset_idx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reset_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %56)
  %cmp.i82 = icmp eq i32 %56, -22
  br i1 %cmp.i82, label %if.end32.register_error_crit_edge, label %if.end.i

if.end32.register_error_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_error

if.end.i:                                         ; preds = %if.end32
  %57 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %16, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %and.i = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i83 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i83, label %if.end.i.register_error_crit_edge, label %if.end2.i

if.end.i.register_error_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_error

if.end2.i:                                        ; preds = %if.end.i
  %61 = ptrtoint ptr %pdata30.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdata30.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap6, align 4
  %reg.i86 = getelementptr %struct.mlxreg_core_data, ptr %64, i32 %56, i32 1
  %67 = ptrtoint ptr %reg.i86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg.i86, align 4
  %call.i87 = call i32 @regmap_read(ptr noundef %66, i32 noundef %68, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool4.not.i = icmp eq i32 %call.i87, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end2.i.register_error_crit_edge

if.end2.i.register_error_crit_edge:               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_error

if.then5.i:                                       ; preds = %if.end2.i
  %69 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %regval.i, align 4
  %mask.i88 = getelementptr %struct.mlxreg_core_data, ptr %64, i32 %56, i32 2
  %71 = ptrtoint ptr %mask.i88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask.i88, align 4
  %neg.i89 = xor i32 %72, -1
  %and6.i = and i32 %70, %neg.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.register_error_crit_edge, label %if.then8.i

if.then5.i.register_error_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_error

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %bootstatus.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 6
  %73 = ptrtoint ptr %bootstatus.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 32, ptr %bootstatus.i, align 4
  %74 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.14) #9
  br label %register_error

register_error:                                   ; preds = %if.then8.i, %if.then5.i.register_error_crit_edge, %if.end2.i.register_error_crit_edge, %if.end.i.register_error_crit_edge, %if.end32.register_error_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  %call34 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %register_error.cleanup_crit_edge, label %register_error.do.end39_crit_edge

register_error.do.end39_crit_edge:                ; preds = %register_error
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

register_error.cleanup_crit_edge:                 ; preds = %register_error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %register_error.do.end39_crit_edge, %if.then25.do.end39_crit_edge, %if.end14.do.end39_crit_edge
  %rc.092 = phi i32 [ %call34, %register_error.do.end39_crit_edge ], [ %call.i.i, %if.then25.do.end39_crit_edge ], [ %call.i79, %if.end14.do.end39_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %rc.092) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %register_error.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %rc.092, %do.end39 ], [ 0, %register_error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %action_idx = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %action_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action_idx, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %mask = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %neg = xor i32 %13, -1
  %bit = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 3
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %15
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %neg, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %action_idx = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %action_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action_idx, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %mask = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %neg = xor i32 %13, -1
  %bit = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 3
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %15
  %neg1 = xor i32 %shl, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %neg, i32 noundef %neg1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ping_idx = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ping_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ping_idx, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %mask = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %neg = xor i32 %13, -1
  %bit = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 3
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %15
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %neg, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_set_timeout(ptr noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %timeout_idx = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %timeout_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval, align 4, !annotation !61
  %wdt_type = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %wdt_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wdt_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %timeout, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  %sub.i = add i32 %mul, -1
  %16 = call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #6, !range !62
  %add.i = sub nuw nsw i32 32, %16
  %cond28 = select i1 %cmp, i32 0, i32 %add.i
  %17 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval, align 4
  %mask = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 2
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %and = and i32 %20, %18
  %or = or i32 %and, %cond28
  store i32 %or, ptr %regval, align 4
  %shl = shl nuw i32 1, %cond28
  %div = udiv i32 %shl, 1000
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %call31 = call i32 @regmap_write(ptr noundef %22, i32 noundef %24, i32 noundef %or) #6
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap33 = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap33, align 4
  %reg34 = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %27 = ptrtoint ptr %reg34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg34, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %28, i32 noundef %timeout) #6
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %regmap_val_sz = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %regmap_val_sz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regmap_val_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp37 = icmp eq i32 %30, 1
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %sw.bb36
  %and40 = and i32 %timeout, 255
  %regmap41 = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %regmap41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap41, align 4
  %reg42 = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %33 = ptrtoint ptr %reg42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg42, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %34, i32 noundef %and40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %timeout56123 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %35 = ptrtoint ptr %timeout56123 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %timeout, ptr %timeout56123, align 4
  br label %cleanup

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %and46 = lshr i32 %timeout, 8
  %shr = and i32 %and46, 255
  %36 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr, ptr %regval, align 4
  %37 = ptrtoint ptr %regmap41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap41, align 4
  %39 = ptrtoint ptr %reg42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg42, align 4
  %add49 = add i32 %40, 1
  %call50 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %add49, i32 noundef %shr) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %regmap52 = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %regmap52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap52, align 4
  %reg53 = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %43 = ptrtoint ptr %reg53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg53, align 4
  %call54 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %44, i32 noundef %timeout) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then45, %sw.bb32, %if.end
  %set_time.0 = phi i32 [ %timeout, %if.then45 ], [ %timeout, %if.else ], [ %timeout, %sw.bb32 ], [ %div, %if.end ]
  %rc.0 = phi i32 [ %call50, %if.then45 ], [ %call54, %if.else ], [ %call35, %sw.bb32 ], [ %call31, %if.end ]
  %timeout56 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %45 = ptrtoint ptr %timeout56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %set_time.0, ptr %timeout56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool57.not = icmp eq i32 %rc.0, 0
  br i1 %tobool57.not, label %if.then58, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then58:                                        ; preds = %sw.epilog
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then58.cleanup_crit_edge, label %if.then60

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then60:                                        ; preds = %if.then58
  %48 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i, align 4
  %pdata.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdata.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %action_idx.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %action_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %action_idx.i, align 4
  %regmap.i = getelementptr inbounds %struct.mlxreg_wdt, ptr %49, i32 0, i32 2
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr %struct.mlxreg_core_data, ptr %53, i32 %55, i32 1
  %58 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg.i, align 4
  %mask.i = getelementptr %struct.mlxreg_core_data, ptr %53, i32 %55, i32 2
  %60 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %61, -1
  %bit.i = getelementptr %struct.mlxreg_core_data, ptr %53, i32 %55, i32 3
  %62 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %63
  %neg1.i = xor i32 %shl.i, -1
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %59, i32 noundef %neg.i, i32 noundef %neg1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool62.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool62.not, label %if.then63, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i, align 4
  %pdata.i112 = getelementptr inbounds %struct.mlxreg_wdt, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pdata.i112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata.i112, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %action_idx.i113 = getelementptr inbounds %struct.mlxreg_wdt, ptr %65, i32 0, i32 3
  %70 = ptrtoint ptr %action_idx.i113 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %action_idx.i113, align 4
  %regmap.i114 = getelementptr inbounds %struct.mlxreg_wdt, ptr %65, i32 0, i32 2
  %72 = ptrtoint ptr %regmap.i114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i114, align 4
  %reg.i115 = getelementptr %struct.mlxreg_core_data, ptr %69, i32 %71, i32 1
  %74 = ptrtoint ptr %reg.i115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg.i115, align 4
  %mask.i116 = getelementptr %struct.mlxreg_core_data, ptr %69, i32 %71, i32 2
  %76 = ptrtoint ptr %mask.i116 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mask.i116, align 4
  %neg.i117 = xor i32 %77, -1
  %bit.i118 = getelementptr %struct.mlxreg_core_data, ptr %69, i32 %71, i32 3
  %78 = ptrtoint ptr %bit.i118 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bit.i118, align 4
  %shl.i119 = shl nuw i32 1, %79
  %call.i.i120 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %75, i32 noundef %neg.i117, i32 noundef %shl.i119, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.then60.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rc.0, %sw.epilog.cleanup_crit_edge ], [ %call.i.i, %if.then60.cleanup_crit_edge ], [ %call.i.i120, %if.then63 ], [ 0, %if.then58.cleanup_crit_edge ], [ %call43, %sw.epilog.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_wdt_get_timeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  %msb = alloca i32, align 4
  %lsb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tleft_idx = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tleft_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tleft_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb) #6
  %9 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %msb, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb) #6
  %10 = ptrtoint ptr %lsb to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %lsb, align 4, !annotation !61
  %wdt_type = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %wdt_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wdt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %regval) #6
  br label %if.end17

if.else:                                          ; preds = %entry
  %regmap_val_sz = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %regmap_val_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regmap_val_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp2 = icmp eq i32 %18, 1
  %regmap4 = getelementptr inbounds %struct.mlxreg_wdt, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap4, align 4
  %reg5 = getelementptr %struct.mlxreg_core_data, ptr %5, i32 %7, i32 1
  %21 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg5, align 4
  br i1 %cmp2, label %if.then3, label %if.else12

if.then3:                                         ; preds = %if.else
  %call6 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %lsb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.then3.cond.end_crit_edge

if.then3.cond.end_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap4, align 4
  %25 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg5, align 4
  %add = add i32 %26, 1
  %call10 = call i32 @regmap_read(ptr noundef %24, i32 noundef %add, ptr noundef nonnull %msb) #6
  %27 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msb, align 4
  %and = shl i32 %28, 8
  %shl = and i32 %and, 65280
  %29 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lsb, align 4
  %and11 = and i32 %30, 255
  %or = or i32 %shl, %and11
  %31 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %regval, align 4
  br label %if.end17

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %regval) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.then7, %if.then
  %rc.0 = phi i32 [ %call1, %if.then ], [ %call10, %if.then7 ], [ %call15, %if.else12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp18 = icmp eq i32 %rc.0, 0
  br i1 %cmp18, label %cond.true, label %if.end17.cond.end_crit_edge

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regval, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end17.cond.end_crit_edge, %if.then3.cond.end_crit_edge
  %cond = phi i32 [ %33, %cond.true ], [ 0, %if.end17.cond.end_crit_edge ], [ 0, %if.then3.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_mlx_wdt__170_335_mlxreg_wdt_driver_init6, !1, !"__initcall__kmod_mlx_wdt__170_335_mlxreg_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/mlx_wdt.c", i32 335, i32 1}
!2 = !{ptr @__exitcall_mlxreg_wdt_driver_exit, !1, !"__exitcall_mlxreg_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/mlx_wdt.c", i32 337, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/mlx_wdt.c", i32 338, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/mlx_wdt.c", i32 339, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/mlx_wdt.c", i32 340, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/mlx_wdt.c", i32 331, i32 12}
!14 = !{ptr @mlxreg_wdt_driver, !15, !"mlxreg_wdt_driver", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/mlx_wdt.c", i32 328, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/mlx_wdt.c", i32 288, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlxreg_wdt_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlxreg_wdt_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/mlx_wdt.c", i32 324, i32 3}
!26 = !{ptr @mlxreg_wdt_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlxreg_wdt_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/mlx_wdt.c", i32 230, i32 28}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/mlx_wdt.c", i32 232, i32 33}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/mlx_wdt.c", i32 234, i32 33}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/mlx_wdt.c", i32 236, i32 33}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/mlx_wdt.c", i32 238, i32 33}
!38 = !{ptr @mlxreg_wdt_main_info, !39, !"mlxreg_wdt_main_info", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/mlx_wdt.c", i32 210, i32 35}
!40 = !{ptr @mlxreg_wdt_aux_info, !41, !"mlxreg_wdt_aux_info", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/mlx_wdt.c", i32 216, i32 35}
!42 = !{ptr @mlxreg_wdt_ops_type1, !43, !"mlxreg_wdt_ops_type1", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/mlx_wdt.c", i32 193, i32 34}
!44 = !{ptr @mlxreg_wdt_ops_type2, !45, !"mlxreg_wdt_ops_type2", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/mlx_wdt.c", i32 201, i32 34}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/mlx_wdt.c", i32 74, i32 4}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlxreg_wdt_check_card_reset._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlxreg_wdt_check_card_reset._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i32 0, i32 30}
