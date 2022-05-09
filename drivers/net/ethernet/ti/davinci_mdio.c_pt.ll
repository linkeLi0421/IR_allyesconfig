; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/davinci_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/davinci_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.davinci_mdio_of_param = type { i32 }
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
%struct.davinci_mdio_data = type { %struct.mdio_platform_data, ptr, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.mdio_platform_data = type { i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.davinci_mdio_regs = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, [20 x i32], [0 x %struct.anon.74] }
%struct.anon.74 = type { i32, i32 }

@__initcall__kmod_davinci_mdio__282_527_davinci_mdio_init6 = internal global ptr @davinci_mdio_init, section ".initcall6.init", align 4
@davinci_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_mdio_probe, ptr @davinci_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_mdio_of_mtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mdio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_mdio_exit = internal global ptr @davinci_mdio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file283 = internal constant [55 x i8] c"davinci_mdio.file=drivers/net/ethernet/ti/davinci_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [25 x i8] c"davinci_mdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description285 = internal constant [45 x i8] c"davinci_mdio.description=DaVinci MDIO driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"davinci_mdio\00", [19 x i8] zeroinitializer }, align 32
@davinci_mdio_of_mtable = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci_mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cpsw-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_cpsw_mdio_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@davinci_mdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mdio_suspend, ptr @davinci_mdio_resume, ptr @davinci_mdio_suspend, ptr @davinci_mdio_resume, ptr @davinci_mdio_suspend, ptr @davinci_mdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mdio_runtime_suspend, ptr @davinci_mdio_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@davinci_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to alloc mii bus\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"davinci_mdio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/ti/davinci_mdio.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_mdio_probe._entry_ptr = internal global ptr @davinci_mdio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@davinci_mdio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get device clock\0A\00", [36 x i8] zeroinitializer }, align 32
@davinci_mdio_probe._entry_ptr.11 = internal global ptr @davinci_mdio_probe._entry.9, section ".printk_index", align 4
@davinci_mdio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy[%d]: device %s, driver %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@davinci_mdio_probe._entry_ptr.15 = internal global ptr @davinci_mdio_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus_freq\00", [23 x i8] zeroinitializer }, align 32
@davinci_mdio_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing bus_freq property in the DT.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"davinci_mdio_probe_dt\00", [42 x i8] zeroinitializer }, align 32
@davinci_mdio_probe_dt._entry_ptr = internal global ptr @davinci_mdio_probe_dt._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_for_user_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 199, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"resetting idled controller\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wait_for_user_access\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wait_for_user_access._entry_ptr = internal global ptr @wait_for_user_access._entry, section ".printk_index", align 4
@wait_for_user_access._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timed out waiting for user access\0A\00", [61 x i8] zeroinitializer }, align 32
@wait_for_user_access._entry_ptr.25 = internal global ptr @wait_for_user_access._entry.23, section ".printk_index", align 4
@davinci_mdio_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 151, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"davinci mdio revision %d.%d, bus freq %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"davinci_mdio_reset\00", [45 x i8] zeroinitializer }, align 32
@davinci_mdio_reset._entry_ptr = internal global ptr @davinci_mdio_reset._entry, section ".printk_index", align 4
@davinci_mdio_reset._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 160, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"detected phy mask %x\0A\00", [42 x i8] zeroinitializer }, align 32
@davinci_mdio_reset._entry_ptr.30 = internal global ptr @davinci_mdio_reset._entry.28, section ".printk_index", align 4
@davinci_mdio_reset._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 164, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no live phy, scanning all\0A\00", [37 x i8] zeroinitializer }, align 32
@davinci_mdio_reset._entry_ptr.33 = internal global ptr @davinci_mdio_reset._entry.31, section ".printk_index", align 4
@of_cpsw_mdio_data = internal constant { %struct.davinci_mdio_of_param, [28 x i8] } { %struct.davinci_mdio_of_param { i32 100 }, [28 x i8] zeroinitializer }, align 32
@wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timed out waiting for idle\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait_for_idle\00", [18 x i8] zeroinitializer }, align 32
@wait_for_idle._entry_ptr = internal global ptr @wait_for_idle._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"davinci_mdio_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 513, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 515, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"davinci_mdio_of_mtable\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 332, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"davinci_mdio_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 507, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 356, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 366, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 375, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 386, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 388, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 424, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 318, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 319, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 199, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 208, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 148, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 160, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 164, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"of_cpsw_mdio_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 328, i32 43 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [42 x i8] c"../drivers/net/ethernet/ti/davinci_mdio.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 221, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_davinci_mdio_exit, ptr @__initcall__kmod_davinci_mdio__282_527_davinci_mdio_init6, ptr @davinci_mdio_exit, ptr @davinci_mdio_probe._entry, ptr @davinci_mdio_probe._entry.12, ptr @davinci_mdio_probe._entry.9, ptr @davinci_mdio_probe._entry_ptr, ptr @davinci_mdio_probe._entry_ptr.11, ptr @davinci_mdio_probe._entry_ptr.15, ptr @davinci_mdio_probe_dt._entry, ptr @davinci_mdio_probe_dt._entry_ptr, ptr @davinci_mdio_reset._entry, ptr @davinci_mdio_reset._entry.28, ptr @davinci_mdio_reset._entry.31, ptr @davinci_mdio_reset._entry_ptr, ptr @davinci_mdio_reset._entry_ptr.30, ptr @davinci_mdio_reset._entry_ptr.33, ptr @wait_for_idle._entry, ptr @wait_for_idle._entry_ptr, ptr @wait_for_user_access._entry, ptr @wait_for_user_access._entry.23, ptr @wait_for_user_access._entry_ptr, ptr @wait_for_user_access._entry_ptr.25, ptr @davinci_mdio_driver, ptr @.str, ptr @davinci_mdio_of_mtable, ptr @davinci_mdio_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @of_cpsw_mdio_data, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_of_mtable to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_user_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_user_access._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_reset._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mdio_reset._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cpsw_mdio_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_mdio_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mdio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_mdio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup96_crit_edge, label %if.end

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end:                                           ; preds = %entry
  %call.i169 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev, i32 noundef 0) #9
  %bus = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i169, ptr %bus, align 4
  %tobool6.not = icmp eq ptr %call.i169, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup96

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #9
  %5 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %prop.i, align 4, !annotation !89
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool1.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool1.not.i, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end.i
  %6 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prop.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #9
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.6, ptr noundef %12)
  %call19 = call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end15.if.end32_crit_edge, label %if.then21

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call19, align 4
  br label %if.end32

cleanup:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #9
  br label %cleanup96

if.else:                                          ; preds = %if.end8
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else.cond.end_crit_edge
  %storemerge = phi i32 [ %16, %cond.true ], [ 2200000, %if.else.cond.end_crit_edge ]
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %call.i, align 4
  %id27 = getelementptr inbounds %struct.mii_bus, ptr %call.i169, i32 0, i32 2
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %id30 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %20 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id30, align 4
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id27, i32 noundef 61, ptr noundef nonnull @.str.7, ptr noundef %19, i32 noundef %21)
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.then21, %if.end15.if.end32_crit_edge
  %autosuspend_delay_ms.2 = phi i32 [ -1, %cond.end ], [ -1, %if.end15.if.end32_crit_edge ], [ %14, %if.then21 ]
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i170 = icmp eq ptr %23, null
  br i1 %tobool.not.i170, label %if.end.i171, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i171:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i171, %if.end32.dev_name.exit_crit_edge
  %retval.0.i172 = phi ptr [ %25, %if.end.i171 ], [ %23, %if.end32.dev_name.exit_crit_edge ]
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %name35 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %name35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i172, ptr %name35, align 4
  %29 = load ptr, ptr %bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @davinci_mdio_read, ptr %read, align 4
  %31 = load ptr, ptr %bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @davinci_mdio_write, ptr %write, align 8
  %33 = load ptr, ptr %bus, align 4
  %reset = getelementptr inbounds %struct.mii_bus, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @davinci_mdio_reset, ptr %reset, align 4
  %35 = load ptr, ptr %bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %parent, align 4
  %37 = load ptr, ptr %bus, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %priv, align 8
  %call41 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %clk = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call41, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end47, label %if.end50

do.end47:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup96

if.end50:                                         ; preds = %dev_name.exit
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev51 = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %dev51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %dev51, align 4
  %call52 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end50.cleanup96_crit_edge, label %if.end55

if.end50.cleanup96_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end55:                                         ; preds = %if.end50
  %45 = ptrtoint ptr %call52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call52, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call52, i32 0, i32 1
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %46
  %add.i = add i32 %sub.i, %48
  %call57 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %46, i32 noundef %add.i) #9
  %regs = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call57, ptr %regs, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end55.cleanup96_crit_edge, label %if.end61

if.end55.cleanup96_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end61:                                         ; preds = %if.end55
  %50 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk, align 4
  %call.i173 = call i32 @clk_get_rate(ptr noundef %51) #9
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i, align 4
  %div1.i = udiv i32 %call.i173, %53
  %sub.i174 = add i32 %div1.i, -1
  %54 = call i32 @llvm.umin.i32(i32 %sub.i174, i32 65535) #9
  %clk_div.i = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 8
  %55 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %clk_div.i, align 4
  %56 = mul nuw nsw i32 %54, 1000
  %mul.i = add nuw nsw i32 %56, 1000
  %div2.i = udiv i32 %call.i173, %mul.i
  %div3.i = udiv i32 88000, %div2.i
  %mul4.i = shl nuw nsw i32 %div3.i, 2
  %call3.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i175 = icmp eq i32 %call3.i.i, 0
  %spec.select.i = select i1 %tobool.not.i175, i32 1, i32 %call3.i.i
  %access_time6.i = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %access_time6.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select.i, ptr %access_time6.i, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %autosuspend_delay_ms.2) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 8
  %tobool66.not = icmp eq ptr %59, null
  br i1 %tobool66.not, label %if.end61.if.end71_crit_edge, label %land.lhs.true

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end61
  %call.i176 = call ptr @of_get_next_child(ptr noundef nonnull %59, ptr noundef null) #9
  %cmp.not5.i = icmp eq ptr %call.i176, null
  br i1 %cmp.not5.i, label %land.lhs.true.if.end71_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i176, %land.lhs.true.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_child(ptr noundef nonnull %59, ptr noundef nonnull %child.06.i) #9
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool69.not = icmp eq i32 %inc.i, 0
  br i1 %tobool69.not, label %of_get_child_count.exit.if.end71_crit_edge, label %if.then70

of_get_child_count.exit.if.end71_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then70:                                        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  %skip_scan = getelementptr inbounds %struct.davinci_mdio_data, ptr %call.i, i32 0, i32 7
  %60 = ptrtoint ptr %skip_scan to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %skip_scan, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %of_get_child_count.exit.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %if.end61.if.end71_crit_edge
  %61 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus, align 4
  %63 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node, align 8
  %call74 = call i32 @of_mdiobus_register(ptr noundef %62, ptr noundef %64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end71.for.body_crit_edge, label %bail_out

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end71.for.body_crit_edge
  %addr.0190 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end71.for.body_crit_edge ]
  %65 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus, align 4
  %call79 = call ptr @mdiobus_get_phy(ptr noundef %66, i32 noundef %addr.0190) #9
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %for.body.for.inc_crit_edge, label %do.end84

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end84:                                         ; preds = %for.body
  %addr85 = getelementptr inbounds %struct.mdio_device, ptr %call79, i32 0, i32 6
  %67 = ptrtoint ptr %addr85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr85, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call79, i32 0, i32 3
  %69 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.end.i.i177, label %do.end84.phydev_name.exit_crit_edge

do.end84.phydev_name.exit_crit_edge:              ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %phydev_name.exit

if.end.i.i177:                                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call79, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i177, %do.end84.phydev_name.exit_crit_edge
  %retval.0.i.i178 = phi ptr [ %72, %if.end.i.i177 ], [ %70, %do.end84.phydev_name.exit_crit_edge ]
  %drv = getelementptr inbounds %struct.phy_device, ptr %call79, i32 0, i32 1
  %73 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %drv, align 8
  %tobool87.not = icmp eq ptr %74, null
  br i1 %tobool87.not, label %phydev_name.exit.cond.end92_crit_edge, label %cond.true88

phydev_name.exit.cond.end92_crit_edge:            ; preds = %phydev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end92

cond.true88:                                      ; preds = %phydev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name90 = getelementptr inbounds %struct.phy_driver, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %name90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name90, align 4
  br label %cond.end92

cond.end92:                                       ; preds = %cond.true88, %phydev_name.exit.cond.end92_crit_edge
  %cond = phi ptr [ %76, %cond.true88 ], [ @.str.16, %phydev_name.exit.cond.end92_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %68, ptr noundef %retval.0.i.i178, ptr noundef %cond) #12
  br label %for.inc

for.inc:                                          ; preds = %cond.end92, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %addr.0190, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup96_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup96_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

bail_out:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup96

cleanup96:                                        ; preds = %bail_out, %for.inc.cleanup96_crit_edge, %if.end55.cleanup96_crit_edge, %if.end50.cleanup96_crit_edge, %do.end47, %cleanup, %do.end, %entry.cleanup96_crit_edge
  %retval.1 = phi i32 [ %42, %do.end47 ], [ %call74, %bail_out ], [ -22, %cleanup ], [ -12, %do.end ], [ -12, %entry.cleanup96_crit_edge ], [ -22, %if.end50.cleanup96_crit_edge ], [ -12, %if.end55.cleanup96_crit_edge ], [ 0, %for.inc.cleanup96_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mdiobus_unregister(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %phy_reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = or i32 %phy_reg, %phy_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %3 = icmp ult i32 %2, 32
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !91
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then3.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl = shl nuw nsw i32 %phy_reg, 21
  %shl6 = shl nuw nsw i32 %phy_id, 16
  %or = or i32 %shl6, %shl
  %or7 = or i32 %or, -2147483648
  %9 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %regs = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end5
  %call8 = tail call fastcc i32 @wait_for_user_access(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -11
  br i1 %cmp9, label %while.cond.while.cond.backedge_crit_edge, label %if.end11

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge
  br label %while.cond

if.end11:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp12 = icmp slt i32 %call8, 0
  br i1 %cmp12, label %if.end11.while.end_crit_edge, label %do.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body:                                          ; preds = %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %user = getelementptr inbounds %struct.davinci_mdio_regs, ptr %11, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %user, i32 %9) #9, !srcloc !94
  %call15 = tail call fastcc i32 @wait_for_user_access(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call15)
  %cmp16 = icmp eq i32 %call15, -11
  br i1 %cmp16, label %do.body.while.cond.backedge_crit_edge, label %if.end18

do.body.while.cond.backedge_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end18:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp19 = icmp slt i32 %call15, 0
  br i1 %cmp19, label %if.end18.while.end_crit_edge, label %if.end21

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %user23 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %13, i32 0, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %user23) #9, !srcloc !95
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %and28 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and30 = and i32 %15, 65535
  %spec.select = select i1 %tobool29.not, i32 -5, i32 %and30
  br label %while.end

while.end:                                        ; preds = %if.end21, %if.end18.while.end_crit_edge, %if.end11.while.end_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end18.while.end_crit_edge ], [ %spec.select, %if.end21 ], [ %call8, %if.end11.while.end_crit_edge ]
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i53 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i54 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end11.i.i.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %phy_reg, i16 noundef zeroext %phy_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = or i32 %phy_reg, %phy_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %3 = icmp ult i32 %2, 32
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !91
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then3.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl = shl nuw nsw i32 %phy_reg, 21
  %shl6 = shl nuw nsw i32 %phy_id, 16
  %conv = zext i16 %phy_data to i32
  %or = or i32 %shl6, %shl
  %or7 = or i32 %or, %conv
  %or9 = or i32 %or7, -1073741824
  %9 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %regs = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end5
  %call10 = tail call fastcc i32 @wait_for_user_access(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -11
  br i1 %cmp11, label %while.cond.while.cond.backedge_crit_edge, label %if.end14

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge
  br label %while.cond

if.end14:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp15 = icmp slt i32 %call10, 0
  br i1 %cmp15, label %if.end14.while.end_crit_edge, label %do.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body:                                          ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %user = getelementptr inbounds %struct.davinci_mdio_regs, ptr %11, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %user, i32 %9) #9, !srcloc !94
  %call19 = tail call fastcc i32 @wait_for_user_access(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call19)
  %cmp20 = icmp eq i32 %call19, -11
  br i1 %cmp20, label %do.body.while.cond.backedge_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.while.cond.backedge_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.end:                                        ; preds = %do.body.while.end_crit_edge, %if.end14.while.end_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end14.while.end_crit_edge ], [ %call19, %do.body.while.end_crit_edge ]
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i42 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i42, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i43 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end11.i.i.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_reset(ptr nocapture noundef readonly %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !91
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_time = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %access_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %access_time, align 4
  %mul = shl i32 %8, 5
  tail call void @msleep(i32 noundef %mul) #9
  %regs = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !95
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %shr = lshr i32 %12, 8
  %and = and i32 %shr, 255
  %and5 = and i32 %12, 255
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %and, i32 noundef %and5, i32 noundef %16) #12
  %skip_scan = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %skip_scan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %skip_scan, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end7, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end7:                                          ; preds = %if.end
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %alive = getelementptr inbounds %struct.davinci_mdio_regs, ptr %20, i32 0, i32 2
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %alive) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br i1 %tobool14.not, label %do.end23, label %do.end18

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %24 = xor i32 %21, -1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.29, i32 noundef %25) #12
  br label %if.end25

do.end23:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.32) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %do.end18
  %phy_mask.0 = phi i32 [ %25, %do.end18 ], [ 0, %do.end23 ]
  %bus26 = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %bus26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus26, align 4
  %phy_mask27 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %phy_mask27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %phy_mask.0, ptr %phy_mask27, align 8
  br label %done

done:                                             ; preds = %if.end25, %if.end.done_crit_edge
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call.i51 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i51, ptr %last_busy.i, align 8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call.i52 = tail call i32 @__pm_runtime_suspend(ptr noundef %33, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_user_access(ptr nocapture noundef readonly %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1 = getelementptr inbounds %struct.davinci_mdio_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -10, %2
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub41 = add i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41)
  %cmp42 = icmp slt i32 %sub41, 0
  br i1 %cmp42, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %user = getelementptr inbounds %struct.davinci_mdio_regs, ptr %1, i32 0, i32 12
  %control = getelementptr inbounds %struct.davinci_mdio_regs, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.then12.while.body_crit_edge, %while.body.lr.ph
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %user) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %.mask39 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask39)
  %cmp4 = icmp eq i32 %.mask39, 0
  br i1 %cmp4, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %.mask40 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask40)
  %cmp11 = icmp eq i32 %.mask40, 0
  br i1 %cmp11, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %6
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then12.while.body_crit_edge, label %if.then12.while.end_crit_edge

if.then12.while.end_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then12.while.body_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.davinci_mdio_data, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %clk_div.i = getelementptr inbounds %struct.davinci_mdio_data, ptr %data, i32 0, i32 8
  %9 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_div.i, align 4
  %or.i = or i32 %10, 1073741824
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %12 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1, align 4
  %control.i = getelementptr inbounds %struct.davinci_mdio_regs, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control.i, i32 %11) #9, !srcloc !94
  br label %cleanup

while.end:                                        ; preds = %if.then12.while.end_crit_edge, %entry.while.end_crit_edge
  %user16 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %1, i32 0, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %user16) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  %.mask = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp23 = icmp eq i32 %.mask, 0
  br i1 %cmp23, label %while.end.cleanup_crit_edge, label %do.end28

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.davinci_mdio_data, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %while.end.cleanup_crit_edge, %do.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ -110, %do.end28 ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %lnot = xor i1 %cmp.i, true
  %active_in_suspend = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 5
  %frombool = zext i1 %lnot to i8
  %4 = ptrtoint ptr %active_in_suspend to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %active_in_suspend, align 4
  br i1 %cmp.i, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %active_in_suspend = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %active_in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_in_suspend, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %control = getelementptr inbounds %struct.davinci_mdio_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %5 = and i32 %4, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %control4 = getelementptr inbounds %struct.davinci_mdio_regs, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control4, i32 %5) #9, !srcloc !94
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000000
  %control.i = getelementptr inbounds %struct.davinci_mdio_regs, ptr %9, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control.i) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %.mask.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.wait_for_idle.exit_crit_edge

for.cond.i.wait_for_idle.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_idle.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call14.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control.i) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %.mask3.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i)
  %tobool30.not.inv.not.i = icmp eq i32 %.mask3.i, 0
  br i1 %tobool30.not.inv.not.i, label %do.end35.i, label %for.end.i.wait_for_idle.exit_crit_edge

for.end.i.wait_for_idle.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_idle.exit

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.34) #12
  br label %wait_for_idle.exit

wait_for_idle.exit:                               ; preds = %do.end35.i, %for.end.i.wait_for_idle.exit_crit_edge, %for.cond.i.wait_for_idle.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mdio_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %clk_div.i = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_div.i, align 4
  %or.i = or i32 %3, 1073741824
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %regs.i = getelementptr inbounds %struct.davinci_mdio_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %control.i = getelementptr inbounds %struct.davinci_mdio_regs, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control.i, i32 %4) #9, !srcloc !94
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_davinci_mdio__282_527_davinci_mdio_init6, !1, !"__initcall__kmod_davinci_mdio__282_527_davinci_mdio_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 527, i32 1}
!2 = !{ptr @__exitcall_davinci_mdio_exit, !3, !"__exitcall_davinci_mdio_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 533, i32 1}
!4 = !{ptr @__UNIQUE_ID_file283, !5, !"__UNIQUE_ID_file283", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 535, i32 1}
!6 = !{ptr @__UNIQUE_ID_license284, !5, !"__UNIQUE_ID_license284", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description285, !8, !"__UNIQUE_ID_description285", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 536, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 515, i32 12}
!11 = !{ptr @davinci_mdio_driver, !12, !"davinci_mdio_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 513, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 356, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @davinci_mdio_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @davinci_mdio_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 366, i32 44}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 375, i32 44}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 386, i32 32}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 388, i32 3}
!29 = !{ptr @davinci_mdio_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @davinci_mdio_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 424, i32 4}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @davinci_mdio_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @davinci_mdio_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 318, i32 33}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 319, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @davinci_mdio_probe_dt._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @davinci_mdio_probe_dt._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"default_pdata", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 76, i32 40}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 199, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wait_for_user_access._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @wait_for_user_access._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 208, i32 2}
!54 = !{ptr @wait_for_user_access._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wait_for_user_access._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 148, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @davinci_mdio_reset._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @davinci_mdio_reset._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 160, i32 3}
!63 = !{ptr @davinci_mdio_reset._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @davinci_mdio_reset._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 164, i32 3}
!67 = !{ptr @davinci_mdio_reset._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @davinci_mdio_reset._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @davinci_mdio_of_mtable, !70, !"davinci_mdio_of_mtable", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 332, i32 34}
!71 = !{ptr @of_cpsw_mdio_data, !72, !"of_cpsw_mdio_data", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 328, i32 43}
!73 = !{ptr @davinci_mdio_pm_ops, !74, !"davinci_mdio_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 507, i32 32}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/ti/davinci_mdio.c", i32 221, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wait_for_idle._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wait_for_idle._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{i64 2148350238}
!91 = !{i64 835858, i64 835883, i64 835905, i64 835921, i64 835933, i64 835953, i64 835977, i64 835993, i64 836005}
!92 = !{i64 2148350426}
!93 = !{i64 2155540482}
!94 = !{i64 6716981}
!95 = !{i64 6717399}
!96 = !{i64 2155541196}
!97 = !{i64 2155541708}
!98 = !{i64 2155524903}
!99 = !{i8 0, i8 2}
!100 = !{i64 2155527281}
!101 = !{i64 2155531548}
!102 = !{i64 2155532106}
!103 = !{i64 2155524101}
!104 = !{i64 2155534341}
!105 = !{i64 2155550466}
!106 = !{i64 2155550768}
!107 = !{i64 2155538036}
!108 = !{i64 2155538510}
