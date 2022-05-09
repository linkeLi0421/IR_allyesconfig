; ModuleID = '/llk/IR_all_yes/drivers/thermal/db8500_thermal.c_pt.bc'
source_filename = "../drivers/thermal/db8500_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.db8500_thermal_zone = type { ptr, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_db8500_thermal__189_258_db8500_thermal_driver_init6 = internal global ptr @db8500_thermal_driver_init, section ".initcall6.init", align 4
@db8500_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @db8500_thermal_probe, ptr null, ptr null, ptr @db8500_thermal_suspend, ptr @db8500_thermal_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @db8500_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_db8500_thermal_driver_exit = internal global ptr @db8500_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [65 x i8] c"db8500_thermal.author=Hongbo Zhang <hongbo.zhang@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [49 x i8] c"db8500_thermal.description=DB8500 thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [51 x i8] c"db8500_thermal.file=drivers/thermal/db8500_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [27 x i8] c"db8500_thermal.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"db8500-thermal\00", [17 x i8] zeroinitializer }, align 32
@db8500_thermal_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRQ_HOTMON_LOW\00", [17 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Get IRQ_HOTMON_LOW failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"db8500_thermal_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/thermal/db8500_thermal.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry_ptr = internal global ptr @db8500_thermal_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dbx500_temp_low\00", [16 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate temp low irq\0A\00", [63 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry_ptr.10 = internal global ptr @db8500_thermal_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ_HOTMON_HIGH\00", [16 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get IRQ_HOTMON_HIGH failed\0A\00", [36 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry_ptr.14 = internal global ptr @db8500_thermal_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dbx500_temp_high\00", [47 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate temp high irq\0A\00", [62 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry_ptr.18 = internal global ptr @db8500_thermal_probe._entry.16, section ".printk_index", align 4
@thdev_ops = internal global { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @db8500_thermal_get_temp, ptr @db8500_thermal_get_trend, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"register thermal zone sensor failed\0A\00", [59 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry_ptr.21 = internal global ptr @db8500_thermal_probe._entry.19, section ".printk_index", align 4
@db8500_thermal_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"thermal zone sensor registered\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@db8500_thermal_probe._entry_ptr.25 = internal global ptr @db8500_thermal_probe._entry.22, section ".printk_index", align 4
@db8500_thermal_points = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 15000, i32 20000, i32 25000, i32 30000, i32 35000, i32 40000, i32 45000, i32 50000, i32 55000, i32 60000, i32 65000, i32 70000, i32 75000, i32 80000, i32 85000, i32 90000, i32 95000, i32 100000], [56 x i8] zeroinitializer }, align 32
@prcmu_low_irq_handler.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"db8500_thermal\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prcmu_low_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PRCMU set max %ld, min %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@prcmu_high_irq_handler.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.4, ptr @.str.28, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prcmu_high_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"db8500_thermal_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 248, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 250, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"db8500_thermal_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 242, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 176, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 178, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 184, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 186, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 190, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 192, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 198, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 200, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"thdev_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 86, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 207, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 210, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"db8500_thermal_points\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 27, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 132, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [36 x i8] c"../drivers/thermal/db8500_thermal.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 155, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_db8500_thermal_driver_exit, ptr @__initcall__kmod_db8500_thermal__189_258_db8500_thermal_driver_init6, ptr @db8500_thermal_driver_exit, ptr @db8500_thermal_probe._entry, ptr @db8500_thermal_probe._entry.12, ptr @db8500_thermal_probe._entry.16, ptr @db8500_thermal_probe._entry.19, ptr @db8500_thermal_probe._entry.22, ptr @db8500_thermal_probe._entry.8, ptr @db8500_thermal_probe._entry_ptr, ptr @db8500_thermal_probe._entry_ptr.10, ptr @db8500_thermal_probe._entry_ptr.14, ptr @db8500_thermal_probe._entry_ptr.18, ptr @db8500_thermal_probe._entry_ptr.21, ptr @db8500_thermal_probe._entry_ptr.25, ptr @db8500_thermal_driver, ptr @.str, ptr @db8500_thermal_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @thdev_ops, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @db8500_thermal_points, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thdev_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db8500_thermal_points to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @db8500_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @db8500_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @db8500_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @db8500_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db8500_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call2, ptr noundef null, ptr noundef nonnull @prcmu_low_irq_handler, i32 noundef 24576, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef null, ptr noundef nonnull @prcmu_high_irq_handler, i32 noundef 24576, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call26 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @thdev_ops) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call26, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end32, label %do.end38

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

do.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  tail call fastcc void @db8500_thermal_update_config(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 15000)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end32, %do.end24, %do.end17, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call5, %do.end10 ], [ %call12, %do.end17 ], [ %call19, %do.end24 ], [ %3, %do.end32 ], [ 0, %do.end38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db8500_thermal_suspend(ptr nocapture noundef readnone %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db8500_thermal_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  %cur_index.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cur_index.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur_index.i, align 4
  %interpolated_temp.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %interpolated_temp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7500, ptr %interpolated_temp.i, align 4
  %trend1.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %trend1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %trend1.i, align 4
  %call.i12.i = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext 0, i8 noundef zeroext 15) #5
  %call.i13.i = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prcmu_low_irq_handler(i32 noundef %irq, ptr nocapture noundef %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_index = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 3
  %0 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.if.end5_crit_edge
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %1, -1
  %arrayidx = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %sub3 = add i32 %1, -2
  %arrayidx4 = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %sub3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %sub6.pre-phi = phi i32 [ %sub, %if.else ], [ 0, %entry.if.end5_crit_edge ]
  %next_low.0 = phi i32 [ %6, %if.else ], [ 0, %entry.if.end5_crit_edge ]
  %next_high.0 = phi i32 [ %4, %if.else ], [ 15000, %entry.if.end5_crit_edge ]
  %call.i.i = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  %7 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub6.pre-phi, ptr %cur_index, align 4
  %add.i = add i32 %next_high.0, %next_low.0
  %div11.i = lshr i32 %add.i, 1
  %interpolated_temp.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 2
  %8 = ptrtoint ptr %interpolated_temp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div11.i, ptr %interpolated_temp.i, align 4
  %trend1.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 1
  %9 = ptrtoint ptr %trend1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %trend1.i, align 4
  %div2.i = udiv i32 %next_low.0, 1000
  %conv.i = trunc i32 %div2.i to i8
  %div3.i = udiv i32 %next_high.0, 1000
  %conv4.i = trunc i32 %div3.i to i8
  %call.i12.i = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %conv.i, i8 noundef zeroext %conv4.i) #5
  %call.i13.i = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prcmu_low_irq_handler.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prcmu_low_irq_handler, %if.then9)) #5
          to label %do.end [label %if.then9], !srcloc !74

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_data, align 4
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prcmu_low_irq_handler.__UNIQUE_ID_ddebug187, ptr noundef %device, ptr noundef nonnull @.str.28, i32 noundef %next_high.0, i32 noundef %next_low.0) #5
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end5
  %12 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_data, align 4
  tail call void @thermal_zone_device_update(ptr noundef %13, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prcmu_high_irq_handler(i32 noundef %irq, ptr nocapture noundef %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_index = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 3
  %0 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ult i32 %1, 17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %1, 1
  %arrayidx = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %call.i.i = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  %6 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %cur_index, align 4
  %add.i = add i32 %5, %3
  %div11.i = lshr i32 %add.i, 1
  %interpolated_temp.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 2
  %7 = ptrtoint ptr %interpolated_temp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div11.i, ptr %interpolated_temp.i, align 4
  %trend1.i = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 1
  %8 = ptrtoint ptr %trend1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %trend1.i, align 4
  %div2.i = udiv i32 %5, 1000
  %conv.i = trunc i32 %div2.i to i8
  %div3.i = udiv i32 %3, 1000
  %conv4.i = trunc i32 %div3.i to i8
  %call.i12.i = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %conv.i, i8 noundef zeroext %conv4.i) #5
  %call.i13.i = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prcmu_high_irq_handler.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prcmu_high_irq_handler, %if.then5)) #5
          to label %if.end12 [label %if.then5], !srcloc !74

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_data, align 4
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %10, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prcmu_high_irq_handler.__UNIQUE_ID_ddebug188, ptr noundef %device, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %5) #5
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp7 = icmp eq i32 %1, 17
  br i1 %cmp7, label %if.then8, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %interpolated_temp = getelementptr inbounds %struct.db8500_thermal_zone, ptr %irq_data, i32 0, i32 2
  %11 = ptrtoint ptr %interpolated_temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100001, ptr %interpolated_temp, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else.if.end12_crit_edge, %if.then5, %if.then
  %12 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_data, align 4
  tail call void @thermal_zone_device_update(ptr noundef %13, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @db8500_thermal_update_config(ptr nocapture noundef writeonly %th, i32 noundef %idx, i32 noundef %trend, i32 noundef %next_low, i32 noundef %next_high) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  %cur_index = getelementptr inbounds %struct.db8500_thermal_zone, ptr %th, i32 0, i32 3
  %0 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %idx, ptr %cur_index, align 4
  %add = add i32 %next_high, %next_low
  %div11 = lshr i32 %add, 1
  %interpolated_temp = getelementptr inbounds %struct.db8500_thermal_zone, ptr %th, i32 0, i32 2
  %1 = ptrtoint ptr %interpolated_temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %div11, ptr %interpolated_temp, align 4
  %trend1 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %th, i32 0, i32 1
  %2 = ptrtoint ptr %trend1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %trend, ptr %trend1, align 4
  %div2 = udiv i32 %next_low, 1000
  %conv = trunc i32 %div2 to i8
  %div3 = udiv i32 %next_high, 1000
  %conv4 = trunc i32 %div3 to i8
  %call.i12 = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %conv, i8 noundef zeroext %conv4) #5
  %call.i13 = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @db8500_thermal_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interpolated_temp = getelementptr inbounds %struct.db8500_thermal_zone, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %interpolated_temp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interpolated_temp, align 4
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @db8500_thermal_get_trend(ptr nocapture noundef readonly %data, i32 noundef %trip, ptr nocapture noundef writeonly %trend) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trend1 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %trend1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trend1, align 4
  %2 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %trend, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_stop_temp_sense() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_db8500_thermal__189_258_db8500_thermal_driver_init6, !1, !"__initcall__kmod_db8500_thermal__189_258_db8500_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/db8500_thermal.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_db8500_thermal_driver_exit, !1, !"__exitcall_db8500_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author190, !4, !"__UNIQUE_ID_author190", i1 false, i1 false}
!4 = !{!"../drivers/thermal/db8500_thermal.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_description191, !6, !"__UNIQUE_ID_description191", i1 false, i1 false}
!6 = !{!"../drivers/thermal/db8500_thermal.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/thermal/db8500_thermal.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/db8500_thermal.c", i32 250, i32 11}
!12 = !{ptr @db8500_thermal_driver, !13, !"db8500_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/db8500_thermal.c", i32 248, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/db8500_thermal.c", i32 176, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/db8500_thermal.c", i32 178, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @db8500_thermal_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @db8500_thermal_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/db8500_thermal.c", i32 184, i32 3}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/db8500_thermal.c", i32 186, i32 3}
!28 = !{ptr @db8500_thermal_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @db8500_thermal_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/db8500_thermal.c", i32 190, i32 43}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/db8500_thermal.c", i32 192, i32 3}
!34 = !{ptr @db8500_thermal_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @db8500_thermal_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thermal/db8500_thermal.c", i32 198, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/db8500_thermal.c", i32 200, i32 3}
!40 = !{ptr @db8500_thermal_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @db8500_thermal_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thermal/db8500_thermal.c", i32 207, i32 3}
!44 = !{ptr @db8500_thermal_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @db8500_thermal_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/thermal/db8500_thermal.c", i32 210, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @db8500_thermal_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @db8500_thermal_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thermal/db8500_thermal.c", i32 132, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @prcmu_low_irq_handler.__UNIQUE_ID_ddebug187, !52, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/db8500_thermal.c", i32 155, i32 3}
!58 = !{ptr @prcmu_high_irq_handler.__UNIQUE_ID_ddebug188, !57, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!59 = !{ptr @thdev_ops, !60, !"thdev_ops", i1 false, i1 false}
!60 = !{!"../drivers/thermal/db8500_thermal.c", i32 86, i32 42}
!61 = !{ptr @db8500_thermal_points, !62, !"db8500_thermal_points", i1 false, i1 false}
!62 = !{!"../drivers/thermal/db8500_thermal.c", i32 27, i32 28}
!63 = !{ptr @db8500_thermal_match, !64, !"db8500_thermal_match", i1 false, i1 false}
!64 = !{!"../drivers/thermal/db8500_thermal.c", i32 242, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148864562, i64 2148864567, i64 2148864580, i64 2148864624, i64 2148864658, i64 2148864679}
