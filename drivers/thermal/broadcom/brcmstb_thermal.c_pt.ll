; ModuleID = '/llk/IR_all_yes/drivers/thermal/broadcom/brcmstb_thermal.c_pt.bc'
source_filename = "../drivers/thermal/broadcom/brcmstb_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.brcmstb_thermal_params = type { i32, i32, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.brcmstb_thermal_priv = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_brcmstb_thermal__191_378_brcmstb_thermal_driver_init6 = internal global ptr @brcmstb_thermal_driver_init, section ".initcall6.init", align 4
@brcmstb_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcmstb_thermal_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_thermal_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcmstb_thermal_driver_exit = internal global ptr @brcmstb_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file192 = internal constant [62 x i8] c"brcmstb_thermal.file=drivers/thermal/broadcom/brcmstb_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [31 x i8] c"brcmstb_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [36 x i8] c"brcmstb_thermal.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [65 x i8] c"brcmstb_thermal.description=Broadcom STB AVS TMON thermal driver\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmstb_thermal\00", [16 x i8] zeroinitializer }, align 32
@brcmstb_thermal_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,avs-tmon-bcm7216\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_16nm_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,avs-tmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_28nm_params }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@brcmstb_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register sensor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcmstb_thermal_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/thermal/broadcom/brcmstb_thermal.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmstb_thermal_probe._entry_ptr = internal global ptr @brcmstb_thermal_probe._entry, section ".printk_index", align 4
@brcmstb_thermal_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmstb_thermal_probe._entry_ptr.8 = internal global ptr @brcmstb_thermal_probe._entry.6, section ".printk_index", align 4
@brcmstb_thermal_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 366, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"registered AVS TMON of-sensor driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcmstb_thermal_probe._entry_ptr.12 = internal global ptr @brcmstb_thermal_probe._entry.9, section ".printk_index", align 4
@brcmstb_tmon_irq_thread.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmstb_tmon_irq_thread\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"low/intr/high: %d/%d/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@avs_tmon_trip_enable.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"avs_tmon_trip_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%sable trip, type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@brcmstb_16nm_params = internal constant { %struct.brcmstb_thermal_params, [20 x i8] } { %struct.brcmstb_thermal_params { i32 457829, i32 557, ptr @brcmstb_16nm_of_ops }, [20 x i8] zeroinitializer }, align 32
@brcmstb_28nm_params = internal constant { %struct.brcmstb_thermal_params, [20 x i8] } { %struct.brcmstb_thermal_params { i32 410040, i32 487, ptr @brcmstb_28nm_of_ops }, [20 x i8] zeroinitializer }, align 32
@brcmstb_16nm_of_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @brcmstb_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@brcmstb_get_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reading not valid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmstb_get_temp\00", [47 x i8] zeroinitializer }, align 32
@brcmstb_get_temp._entry_ptr = internal global ptr @brcmstb_get_temp._entry, section ".printk_index", align 4
@brcmstb_28nm_of_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @brcmstb_get_temp, ptr null, ptr @brcmstb_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@brcmstb_set_trips.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcmstb_set_trips\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set trips %d <--> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@avs_tmon_set_trip_temp.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"avs_tmon_set_trip_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set temp %d to %d\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"brcmstb_thermal_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 371, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 374, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"brcmstb_thermal_id_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 312, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 348, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 361, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 366, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 244, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 183, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"brcmstb_16nm_params\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 295, i32 44 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"brcmstb_28nm_params\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 306, i32 44 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"brcmstb_16nm_of_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 291, i32 48 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 162, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"brcmstb_28nm_of_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 301, i32 48 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 267, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [46 x i8] c"../drivers/thermal/broadcom/brcmstb_thermal.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 212, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_brcmstb_thermal_driver_exit, ptr @__initcall__kmod_brcmstb_thermal__191_378_brcmstb_thermal_driver_init6, ptr @brcmstb_get_temp._entry, ptr @brcmstb_get_temp._entry_ptr, ptr @brcmstb_thermal_driver_exit, ptr @brcmstb_thermal_probe._entry, ptr @brcmstb_thermal_probe._entry.6, ptr @brcmstb_thermal_probe._entry.9, ptr @brcmstb_thermal_probe._entry_ptr, ptr @brcmstb_thermal_probe._entry_ptr.12, ptr @brcmstb_thermal_probe._entry_ptr.8, ptr @brcmstb_thermal_driver, ptr @.str, ptr @brcmstb_thermal_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @brcmstb_16nm_params, ptr @brcmstb_28nm_params, ptr @brcmstb_16nm_of_ops, ptr @.str.19, ptr @.str.20, ptr @brcmstb_28nm_of_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_thermal_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_thermal_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_thermal_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_16nm_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_28nm_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_16nm_of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_get_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_28nm_of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %temp_params = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %temp_params to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %temp_params, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call7) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %dev17 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev17, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %temp_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %temp_params, align 4
  %of_ops19 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %of_ops19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_ops19, align 4
  %call21 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef %8) #5
  %cmp.i78 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %9) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %thermal27 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %thermal27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %thermal27, align 4
  %call28 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp = icmp sgt i32 %call28, -1
  br i1 %cmp, label %if.then29, label %if.end26.do.end42_crit_edge

if.end26.do.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

if.then29:                                        ; preds = %if.end26
  %call31 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call28, ptr noundef null, ptr noundef nonnull @brcmstb_tmon_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.then29.do.end42_crit_edge

if.then29.do.end42_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call31) #8
  br label %cleanup

do.end42:                                         ; preds = %if.then29.do.end42_crit_edge, %if.end26.do.end42_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end36, %if.then23, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then12 ], [ %9, %if.then23 ], [ %call31, %do.end36 ], [ 0, %do.end42 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_tmon_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !75
  %and.i = lshr i32 %2, 1
  %shr.i = and i32 %and.i, 1023
  %temp_params.i.i = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %temp_params.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %temp_params.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %mult3.i.i = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %mult3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mult3.i.i, align 4
  %mul.i.i = mul i32 %8, %shr.i
  %sub.i.i = sub i32 %6, %mul.i.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr.i22 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #5, !srcloc !75
  %and.i23 = lshr i32 %11, 17
  %shr.i24 = and i32 %and.i23, 1023
  %12 = ptrtoint ptr %temp_params.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %temp_params.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %mult3.i.i26 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %mult3.i.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mult3.i.i26, align 4
  %mul.i.i28 = mul i32 %17, %shr.i24
  %sub.i.i29 = sub i32 %15, %mul.i.i28
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr.i30 = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #5, !srcloc !75
  %21 = ptrtoint ptr %temp_params.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %temp_params.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %mult3.i.i32 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %mult3.i.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mult3.i.i32, align 4
  %and.i.i33 = and i32 %20, 1023
  %mul.i.i34 = mul i32 %26, %and.i.i33
  %sub.i.i35 = sub i32 %24, %mul.i.i34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_tmon_irq_thread.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_tmon_irq_thread, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_tmon_irq_thread.__UNIQUE_ID_ddebug189, ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %sub.i.i, i32 noundef %sub.i.i35, i32 noundef %sub.i.i29) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i35, i32 %sub.i.i29)
  %cmp.not = icmp slt i32 %sub.i.i35, %sub.i.i29
  br i1 %cmp.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %do.end
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %add.ptr.i36 = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_tmon_irq_thread, %if.then.i)) #5
          to label %avs_tmon_trip_enable.exit [label %if.then.i], !srcloc !76

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, ptr noundef %33, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef 1) #5
  br label %avs_tmon_trip_enable.exit

avs_tmon_trip_enable.exit:                        ; preds = %if.then.i, %if.then6
  %and.i37 = and i32 %31, -3
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %add.ptr11.i = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %and.i37) #5, !srcloc !77
  br label %if.end7

if.end7:                                          ; preds = %avs_tmon_trip_enable.exit, %do.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i35, i32 %sub.i.i)
  %cmp8.not = icmp sgt i32 %sub.i.i35, %sub.i.i
  br i1 %cmp8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %add.ptr.i38 = getelementptr i8, ptr %37, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_tmon_irq_thread, %if.then.i40)) #5
          to label %avs_tmon_trip_enable.exit44 [label %if.then.i40], !srcloc !76

if.then.i40:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i39 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, ptr noundef %40, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef 0) #5
  br label %avs_tmon_trip_enable.exit44

avs_tmon_trip_enable.exit44:                      ; preds = %if.then.i40, %if.then9
  %and.i42 = and i32 %38, -2
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %add.ptr11.i43 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i43, i32 %and.i42) #5, !srcloc !77
  br label %if.end10

if.end10:                                         ; preds = %avs_tmon_trip_enable.exit44, %if.end7.if.end10_crit_edge
  %thermal = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 2
  %43 = ptrtoint ptr %thermal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %thermal, align 4
  tail call void @thermal_zone_device_update(ptr noundef %44, i32 noundef %sub.i.i35) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !75
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1 = lshr i32 %2, 1
  %shr = and i32 %and1, 1023
  %temp_params.i = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %temp_params.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %temp_params.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %mult3.i = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %mult3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mult3.i, align 4
  %mul.i = mul i32 %10, %shr
  %sub.i = sub i32 %8, %mul.i
  %11 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0)
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_set_trips(ptr noundef readonly %data, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_set_trips.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_set_trips.__UNIQUE_ID_ddebug190, ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %low, i32 noundef %high) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483646, i32 %low)
  %cmp = icmp slt i32 %low, -2147483646
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then.i)) #5
          to label %avs_tmon_trip_enable.exit [label %if.then.i], !srcloc !76

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef 0) #5
  br label %avs_tmon_trip_enable.exit

avs_tmon_trip_enable.exit:                        ; preds = %if.then.i, %if.then3
  %and.i = and i32 %4, -2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr11.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %and.i) #5, !srcloc !77
  br label %if.end4

if.else:                                          ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_set_trip_temp.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then.i20)) #5
          to label %do.end.i [label %if.then.i20], !srcloc !76

if.then.i20:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i19 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_set_trip_temp.__UNIQUE_ID_ddebug188, ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %low) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i20, %if.else
  %temp_params.i.i = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %temp_params.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %temp_params.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %mult3.i.i = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %mult3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mult3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -88161, i32 %low)
  %cmp.i.i = icmp slt i32 %low, -88161
  br i1 %cmp.i.i, label %do.end.i.avs_tmon_set_trip_temp.exit_crit_edge, label %if.end.i.i

do.end.i.avs_tmon_set_trip_temp.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %avs_tmon_set_trip_temp.exit

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %low)
  %cmp4.not.i.i = icmp sgt i32 %14, %low
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.end.i.i.avs_tmon_set_trip_temp.exit_crit_edge

if.end.i.i.avs_tmon_set_trip_temp.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %avs_tmon_set_trip_temp.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = xor i32 %low, -1
  %add.i.i = add i32 %14, %sub.i.i
  %sub8.i.i = add i32 %add.i.i, %16
  %div10.i.i = sdiv i32 %sub8.i.i, %16
  %phi.bo = shl i32 %div10.i.i, 1
  %phi.bo71 = and i32 %phi.bo, 2046
  br label %avs_tmon_set_trip_temp.exit

avs_tmon_set_trip_temp.exit:                      ; preds = %if.end6.i.i, %if.end.i.i.avs_tmon_set_trip_temp.exit_crit_edge, %do.end.i.avs_tmon_set_trip_temp.exit_crit_edge
  %retval.0.i24.i = phi i32 [ 2046, %do.end.i.avs_tmon_set_trip_temp.exit_crit_edge ], [ 0, %if.end.i.i.avs_tmon_set_trip_temp.exit_crit_edge ], [ %phi.bo71, %if.end6.i.i ]
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #5, !srcloc !75
  %and6.i = and i32 %19, -2047
  %or.i23 = or i32 %and6.i, %retval.0.i24.i
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr9.i = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %or.i23) #5, !srcloc !77
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr.i24 = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then.i26)) #5
          to label %avs_tmon_trip_enable.exit31 [label %if.then.i26], !srcloc !76

if.then.i26:                                      ; preds = %avs_tmon_set_trip_temp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i25 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0) #5
  br label %avs_tmon_trip_enable.exit31

avs_tmon_trip_enable.exit31:                      ; preds = %if.then.i26, %avs_tmon_set_trip_temp.exit
  %or.i27 = or i32 %24, 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %add.ptr11.i29 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i29, i32 %or.i27) #5, !srcloc !77
  br label %if.end4

if.end4:                                          ; preds = %avs_tmon_trip_enable.exit31, %avs_tmon_trip_enable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %high)
  %cmp5 = icmp eq i32 %high, 2147483647
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %add.ptr.i32 = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then.i34)) #5
          to label %avs_tmon_trip_enable.exit39 [label %if.then.i34], !srcloc !76

if.then.i34:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i33 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, ptr noundef %33, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef 1) #5
  br label %avs_tmon_trip_enable.exit39

avs_tmon_trip_enable.exit39:                      ; preds = %if.then.i34, %if.then6
  %and.i36 = and i32 %31, -3
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %add.ptr11.i37 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i37, i32 %and.i36) #5, !srcloc !77
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_set_trip_temp.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then.i41)) #5
          to label %do.end.i45 [label %if.then.i41], !srcloc !76

if.then.i41:                                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i40 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_set_trip_temp.__UNIQUE_ID_ddebug188, ptr noundef %37, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %high) #5
  br label %do.end.i45

do.end.i45:                                       ; preds = %if.then.i41, %if.else7
  %temp_params.i.i42 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %temp_params.i.i42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %temp_params.i.i42, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %mult3.i.i43 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %mult3.i.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mult3.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -88161, i32 %high)
  %cmp.i.i44 = icmp slt i32 %high, -88161
  br i1 %cmp.i.i44, label %do.end.i45.avs_tmon_set_trip_temp.exit61_crit_edge, label %if.end.i.i47

do.end.i45.avs_tmon_set_trip_temp.exit61_crit_edge: ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %avs_tmon_set_trip_temp.exit61

if.end.i.i47:                                     ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %high)
  %cmp4.not.i.i46 = icmp sgt i32 %41, %high
  br i1 %cmp4.not.i.i46, label %if.end6.i.i53, label %if.end.i.i47.avs_tmon_set_trip_temp.exit61_crit_edge

if.end.i.i47.avs_tmon_set_trip_temp.exit61_crit_edge: ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %avs_tmon_set_trip_temp.exit61

if.end6.i.i53:                                    ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  %sub9.i.i48 = sub i32 %41, %high
  %div10.i.i52 = sdiv i32 %sub9.i.i48, %43
  %phi.bo72 = shl i32 %div10.i.i52, 17
  %phi.bo73 = and i32 %phi.bo72, 134086656
  br label %avs_tmon_set_trip_temp.exit61

avs_tmon_set_trip_temp.exit61:                    ; preds = %if.end6.i.i53, %if.end.i.i47.avs_tmon_set_trip_temp.exit61_crit_edge, %do.end.i45.avs_tmon_set_trip_temp.exit61_crit_edge
  %retval.0.i24.i54 = phi i32 [ 134086656, %do.end.i45.avs_tmon_set_trip_temp.exit61_crit_edge ], [ 0, %if.end.i.i47.avs_tmon_set_trip_temp.exit61_crit_edge ], [ %phi.bo73, %if.end6.i.i53 ]
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %add.ptr.i57 = getelementptr i8, ptr %45, i32 24
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #5, !srcloc !75
  %and6.i58 = and i32 %46, -134086657
  %or.i59 = or i32 %and6.i58, %retval.0.i24.i54
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %add.ptr9.i60 = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i60, i32 %or.i59) #5, !srcloc !77
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %add.ptr.i62 = getelementptr i8, ptr %50, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_set_trips, %if.then.i64)) #5
          to label %avs_tmon_trip_enable.exit69 [label %if.then.i64], !srcloc !76

if.then.i64:                                      ; preds = %avs_tmon_set_trip_temp.exit61
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i63 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %data, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, ptr noundef %53, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1) #5
  br label %avs_tmon_trip_enable.exit69

avs_tmon_trip_enable.exit69:                      ; preds = %if.then.i64, %avs_tmon_set_trip_temp.exit61
  %or.i65 = or i32 %51, 2
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %add.ptr11.i67 = getelementptr i8, ptr %55, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i67, i32 %or.i65) #5, !srcloc !77
  br label %if.end8

if.end8:                                          ; preds = %avs_tmon_trip_enable.exit69, %avs_tmon_trip_enable.exit39
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_brcmstb_thermal__191_378_brcmstb_thermal_driver_init6, !1, !"__initcall__kmod_brcmstb_thermal__191_378_brcmstb_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 378, i32 1}
!2 = !{ptr @__exitcall_brcmstb_thermal_driver_exit, !1, !"__exitcall_brcmstb_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file192, !4, !"__UNIQUE_ID_file192", i1 false, i1 false}
!4 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 380, i32 1}
!5 = !{ptr @__UNIQUE_ID_license193, !4, !"__UNIQUE_ID_license193", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author194, !7, !"__UNIQUE_ID_author194", i1 false, i1 false}
!7 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 381, i32 1}
!8 = !{ptr @__UNIQUE_ID_description195, !9, !"__UNIQUE_ID_description195", i1 false, i1 false}
!9 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 382, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 374, i32 11}
!12 = !{ptr @brcmstb_thermal_driver, !13, !"brcmstb_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 371, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 348, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @brcmstb_thermal_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @brcmstb_thermal_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 361, i32 4}
!24 = !{ptr @brcmstb_thermal_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @brcmstb_thermal_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 366, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @brcmstb_thermal_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @brcmstb_thermal_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 244, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @brcmstb_tmon_irq_thread.__UNIQUE_ID_ddebug189, !32, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!35 = distinct !{null, !36, !"avs_tmon_trips", i1 false, i1 false}
!36 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 78, i32 29}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 183, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @avs_tmon_trip_enable.__UNIQUE_ID_ddebug187, !38, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!41 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @brcmstb_thermal_id_table, !44, !"brcmstb_thermal_id_table", i1 false, i1 false}
!44 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 312, i32 34}
!45 = !{ptr @brcmstb_16nm_params, !46, !"brcmstb_16nm_params", i1 false, i1 false}
!46 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 295, i32 44}
!47 = !{ptr @brcmstb_16nm_of_ops, !48, !"brcmstb_16nm_of_ops", i1 false, i1 false}
!48 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 291, i32 48}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 162, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @brcmstb_get_temp._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @brcmstb_get_temp._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @brcmstb_28nm_params, !55, !"brcmstb_28nm_params", i1 false, i1 false}
!55 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 306, i32 44}
!56 = !{ptr @brcmstb_28nm_of_ops, !57, !"brcmstb_28nm_of_ops", i1 false, i1 false}
!57 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 301, i32 48}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 267, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @brcmstb_set_trips.__UNIQUE_ID_ddebug190, !59, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/broadcom/brcmstb_thermal.c", i32 212, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @avs_tmon_set_trip_temp.__UNIQUE_ID_ddebug188, !63, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 4779520}
!76 = !{i64 2148780914, i64 2148780919, i64 2148780932, i64 2148780976, i64 2148781010, i64 2148781031}
!77 = !{i64 4779102}
