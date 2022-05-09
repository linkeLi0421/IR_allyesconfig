; ModuleID = '/llk/IR_all_yes/drivers/thermal/hisi_thermal.c_pt.bc'
source_filename = "../drivers/thermal/hisi_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hisi_thermal_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.hisi_thermal_data = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hisi_thermal_sensor = type { ptr, ptr, ptr, i32, i32 }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_hisi_thermal__200_669_hisi_thermal_driver_init6 = internal global ptr @hisi_thermal_driver_init, section ".initcall6.init", align 4
@hisi_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_thermal_probe, ptr @hisi_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_hisi_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_thermal_driver_exit = internal global ptr @hisi_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author201 = internal constant [64 x i8] c"hisi_thermal.author=Xinwei Kong <kong.kongxinwei@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author202 = internal constant [49 x i8] c"hisi_thermal.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description203 = internal constant [50 x i8] c"hisi_thermal.description=HiSilicon thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file204 = internal constant [47 x i8] c"hisi_thermal.file=drivers/thermal/hisi_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [28 x i8] c"hisi_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hisi_thermal\00", [19 x i8] zeroinitializer }, align 32
@of_hisi_thermal_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_ops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hisi_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hisi_thermal_suspend, ptr @hisi_thermal_resume, ptr @hisi_thermal_suspend, ptr @hisi_thermal_resume, ptr @hisi_thermal_suspend, ptr @hisi_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hisi_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register thermal sensor: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hisi_thermal_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/thermal/hisi_thermal.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_thermal_probe._entry_ptr = internal global ptr @hisi_thermal_probe._entry, section ".printk_index", align 4
@hisi_thermal_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request alarm irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hisi_thermal_probe._entry_ptr.8 = internal global ptr @hisi_thermal_probe._entry.6, section ".printk_index", align 4
@hisi_thermal_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to setup the sensor: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@hisi_thermal_probe._entry_ptr.11 = internal global ptr @hisi_thermal_probe._entry.9, section ".printk_index", align 4
@hisi_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @hisi_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hisi_thermal_register_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register sensor id %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hisi_thermal_register_sensor\00", [35 x i8] zeroinitializer }, align 32
@hisi_thermal_register_sensor._entry_ptr = internal global ptr @hisi_thermal_register_sensor._entry, section ".printk_index", align 4
@hisi_thermal_get_temp.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hisi_thermal_get_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tzd=%p, id=%d, temp=%d, thres=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@hisi_thermal_alarm_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 475, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sensor <%d> THERMAL ALARM: %d > %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hisi_thermal_alarm_irq_thread\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@hisi_thermal_alarm_irq_thread._entry_ptr = internal global ptr @hisi_thermal_alarm_irq_thread._entry, section ".printk_index", align 4
@hisi_thermal_alarm_irq_thread._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 483, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sensor <%d> THERMAL ALARM stopped: %d < %d\0A\00", [52 x i8] zeroinitializer }, align 32
@hisi_thermal_alarm_irq_thread._entry_ptr.21 = internal global ptr @hisi_thermal_alarm_irq_thread._entry.19, section ".printk_index", align 4
@hi6220_ops = internal constant { %struct.hisi_thermal_ops, [44 x i8] } { %struct.hisi_thermal_ops { ptr @hi6220_thermal_get_temp, ptr @hi6220_thermal_enable_sensor, ptr @hi6220_thermal_disable_sensor, ptr @hi6220_thermal_irq_handler, ptr @hi6220_thermal_probe }, [44 x i8] zeroinitializer }, align 32
@hi3660_ops = internal constant { %struct.hisi_thermal_ops, [44 x i8] } { %struct.hisi_thermal_ops { ptr @hi3660_thermal_get_temp, ptr @hi3660_thermal_enable_sensor, ptr @hi3660_thermal_disable_sensor, ptr @hi3660_thermal_irq_handler, ptr @hi3660_thermal_probe }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_clk\00", [20 x i8] zeroinitializer }, align 32
@hi6220_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get thermal clk: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi6220_thermal_probe\00", [43 x i8] zeroinitializer }, align 32
@hi6220_thermal_probe._entry_ptr = internal global ptr @hi6220_thermal_probe._entry, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsensor_a73\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsensor_a53\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"hisi_thermal_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 659, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 661, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"of_hisi_thermal_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 534, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"hisi_thermal_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 656, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 587, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 601, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 607, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"hisi_of_thermal_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 458, i32 48 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 501, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 452, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 473, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 481, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"hi6220_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 518, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"hi3660_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 526, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 402, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 406, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 415, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 435, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [34 x i8] c"../drivers/thermal/hisi_thermal.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 439, i32 29 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_author202, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205, ptr @__exitcall_hisi_thermal_driver_exit, ptr @__initcall__kmod_hisi_thermal__200_669_hisi_thermal_driver_init6, ptr @hi6220_thermal_probe._entry, ptr @hi6220_thermal_probe._entry_ptr, ptr @hisi_thermal_alarm_irq_thread._entry, ptr @hisi_thermal_alarm_irq_thread._entry.19, ptr @hisi_thermal_alarm_irq_thread._entry_ptr, ptr @hisi_thermal_alarm_irq_thread._entry_ptr.21, ptr @hisi_thermal_driver_exit, ptr @hisi_thermal_probe._entry, ptr @hisi_thermal_probe._entry.6, ptr @hisi_thermal_probe._entry.9, ptr @hisi_thermal_probe._entry_ptr, ptr @hisi_thermal_probe._entry_ptr.11, ptr @hisi_thermal_probe._entry_ptr.8, ptr @hisi_thermal_register_sensor._entry, ptr @hisi_thermal_register_sensor._entry_ptr, ptr @hisi_thermal_driver, ptr @.str, ptr @of_hisi_thermal_match, ptr @hisi_thermal_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @hisi_of_thermal_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @hi6220_ops, ptr @hi3660_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hisi_thermal_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_register_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_alarm_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_thermal_alarm_irq_thread._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.hisi_thermal_data, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4) #5
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup41

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %probe = getelementptr inbounds %struct.hisi_thermal_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %probe, align 4
  %call13 = tail call i32 %8(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.end11.cleanup41_crit_edge

if.end11.cleanup41_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.cond.preheader:                               ; preds = %if.end11
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp104 = icmp sgt i32 %10, 0
  br i1 %cmp104, label %for.body.lr.ph, label %for.cond.preheader.cleanup41_crit_edge

for.cond.preheader.cleanup41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sensor17 = getelementptr inbounds %struct.hisi_thermal_data, ptr %call.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %sensor17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sensor17, align 4
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, ptr %12, i32 %i.0105
  %id.i = getelementptr %struct.hisi_thermal_sensor, ptr %12, i32 %i.0105, i32 3
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  %call.i87 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef %14, ptr noundef %arrayidx, ptr noundef nonnull @hisi_of_thermal_ops) #5
  %tzd.i = getelementptr %struct.hisi_thermal_sensor, ptr %12, i32 %i.0105, i32 1
  %15 = ptrtoint ptr %tzd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i87, ptr %tzd.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %hisi_thermal_register_sensor.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %call9.i = tail call ptr @of_thermal_get_trip_points(ptr noundef %call.i87) #5
  %16 = ptrtoint ptr %tzd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tzd.i, align 4
  %call1134.i = tail call i32 @of_thermal_get_ntrips(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1134.i)
  %cmp35.i = icmp sgt i32 %call1134.i, 0
  br i1 %cmp35.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end21_crit_edge

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.thermal_trip, ptr %call9.i, i32 %i.036.i, i32 3
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp12.i = icmp eq i32 %19, 1
  br i1 %cmp12.i, label %if.then13.i, label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %temperature.i = getelementptr %struct.thermal_trip, ptr %call9.i, i32 %i.036.i, i32 1
  %20 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temperature.i, align 4
  %thres_temp.i = getelementptr %struct.hisi_thermal_sensor, ptr %12, i32 %i.0105, i32 4
  %22 = ptrtoint ptr %thres_temp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %thres_temp.i, align 4
  br label %if.end21

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %23 = ptrtoint ptr %tzd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tzd.i, align 4
  %call11.i = tail call i32 @of_thermal_get_ntrips(ptr noundef %24) #5
  %cmp.i88 = icmp slt i32 %inc.i, %call11.i
  br i1 %cmp.i88, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end21_crit_edge

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

hisi_thermal_register_sensor.exit:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call.i87 to i32
  %26 = ptrtoint ptr %tzd.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %tzd.i, align 4
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %28, i32 noundef %25) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %25) #8
  br label %cleanup41

if.end21:                                         ; preds = %for.inc.i.if.end21_crit_edge, %if.then13.i, %if.end.i.if.end21_crit_edge
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup41_crit_edge, label %if.end25

if.end21.cleanup41_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end25:                                         ; preds = %if.end21
  %irq_name = getelementptr %struct.hisi_thermal_sensor, ptr %12, i32 %i.0105, i32 2
  %29 = ptrtoint ptr %irq_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_name, align 4
  %call26 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call22, ptr noundef null, ptr noundef nonnull @hisi_thermal_alarm_irq_thread, i32 noundef 8192, ptr noundef %30, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call26) #8
  br label %cleanup41

if.end32:                                         ; preds = %if.end25
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %enable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %enable_sensor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable_sensor, align 4
  %call34 = tail call i32 %34(ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call34) #8
  br label %cleanup41

for.inc:                                          ; preds = %if.end32
  %35 = ptrtoint ptr %tzd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tzd.i, align 4
  %call.i89 = tail call i32 @thermal_zone_device_enable(ptr noundef %36) #5
  %inc = add nuw nsw i32 %i.0105, 1
  %37 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_sensors, align 4
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup41_crit_edge

for.inc.cleanup41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup41:                                        ; preds = %for.inc.cleanup41_crit_edge, %do.end39, %do.end31, %if.end21.cleanup41_crit_edge, %hisi_thermal_register_sensor.exit, %for.cond.preheader.cleanup41_crit_edge, %if.end11.cleanup41_crit_edge, %if.then8, %entry.cleanup41_crit_edge
  %retval.2 = phi i32 [ %4, %if.then8 ], [ -12, %entry.cleanup41_crit_edge ], [ %call13, %if.end11.cleanup41_crit_edge ], [ %call34, %do.end39 ], [ %call26, %do.end31 ], [ %25, %hisi_thermal_register_sensor.exit ], [ 0, %for.cond.preheader.cleanup41_crit_edge ], [ 0, %for.inc.cleanup41_crit_edge ], [ %call22, %if.end21.cleanup41_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sensor1 = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor1, align 4
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, ptr %5, i32 %i.09
  %tzd1.i = getelementptr %struct.hisi_thermal_sensor, ptr %5, i32 %i.09, i32 1
  %6 = ptrtoint ptr %tzd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzd1.i, align 4
  %call2.i = tail call i32 @thermal_zone_device_disable(ptr noundef %7) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %disable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %disable_sensor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_sensor, align 4
  %call2 = tail call i32 %11(ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.09, 1
  %12 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_sensors, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_alarm_irq_thread(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq_handler = getelementptr inbounds %struct.hisi_thermal_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_handler, align 4
  %call = tail call i32 %5(ptr noundef %dev) #5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 %11(ptr noundef %dev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hisi_thermal_get_temp.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hisi_thermal_alarm_irq_thread, %if.then.i)) #5
          to label %hisi_thermal_get_temp.exit [label %if.then.i], !srcloc !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.hisi_thermal_data, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %tzd.i = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %tzd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tzd.i, align 4
  %id.i = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %thres_temp.i = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %thres_temp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %thres_temp.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hisi_thermal_get_temp.__UNIQUE_ID_ddebug199, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef %15, i32 noundef %17, i32 noundef %call.i, i32 noundef %19) #5
  br label %hisi_thermal_get_temp.exit

hisi_thermal_get_temp.exit:                       ; preds = %if.then.i, %entry
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %thres_temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %thres_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %21)
  %cmp.not = icmp ult i32 %call.i, %21
  %pdev8 = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev8, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %id10 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id10, align 4
  br i1 %cmp.not, label %do.end7, label %do.end

do.end:                                           ; preds = %hisi_thermal_get_temp.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev9, ptr noundef nonnull @.str.16, i32 noundef %25, i32 noundef %call.i, i32 noundef %21) #8
  %tzd = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %dev, i32 0, i32 1
  %26 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tzd, align 4
  tail call void @thermal_zone_device_update(ptr noundef %27, i32 noundef 0) #5
  br label %if.end

do.end7:                                          ; preds = %hisi_thermal_get_temp.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev9, ptr noundef nonnull @.str.20, i32 noundef %25, i32 noundef %call.i, i32 noundef %21) #8
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_get_temp(ptr noundef %__data, ptr nocapture noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %__data) #5
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %temp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hisi_thermal_get_temp.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hisi_thermal_get_temp, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %tzd = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %__data, i32 0, i32 1
  %9 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tzd, align 4
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %__data, i32 0, i32 3
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp, align 4
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %__data, i32 0, i32 4
  %15 = ptrtoint ptr %thres_temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %thres_temp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hisi_thermal_get_temp.__UNIQUE_ID_ddebug199, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_get_temp(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !84
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %mul.i.i = mul i32 %5, 785
  %add.i.i = add i32 %mul.i.i, -60000
  ret i32 %add.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_enable_sensor(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %clk = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !87
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %add.ptr.i27 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #5, !srcloc !87
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %add.ptr.i28 = getelementptr i8, ptr %9, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %13 = and i32 %12, -15728641
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %shl.i = shl i32 %11, 12
  %or.i = or i32 %14, %shl.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %15) #5, !srcloc !87
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %add.ptr.i29 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %19 = and i32 %18, -805306369
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %19) #5, !srcloc !87
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 83886080) #5, !srcloc !87
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 4
  %24 = ptrtoint ptr %thres_temp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %thres_temp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %sub1.i.i = add i32 %25, 60784
  %div.i.i = sdiv i32 %sub1.i.i, 785
  %or.i30 = or i32 %div.i.i, -256
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #5
  %add.ptr.i31 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %26) #5, !srcloc !87
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %add.ptr.i32 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 -872415232) #5, !srcloc !87
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %add.ptr.i33 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 16777216) #5, !srcloc !87
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %add.ptr.i34 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 16777216) #5, !srcloc !87
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %add.ptr.i35 = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #5, !srcloc !87
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i36 = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 16777216) #5, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_disable_sensor(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !87
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #5, !srcloc !87
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #5, !srcloc !87
  %clk = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_irq_handler(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !87
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_probe(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.22) #5
  %clk = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %3) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 20, i32 noundef 3520) #5
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %sensor, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %id, align 4
  %irq_name = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %irq_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.25, ptr %irq_name, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %call.i, align 4
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nr_sensors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %3, %do.end ], [ -517, %if.then.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_get_temp(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul.i = shl i32 %5, 6
  %add.i = or i32 %mul.i, 28
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !84
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %mul.i.i = mul i32 %7, 205
  %add.i.i = add i32 %mul.i.i, -63780
  ret i32 %add.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_enable_sensor(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %mul.i = shl i32 %5, 6
  %add.i = or i32 %mul.i, 44
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !87
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %mul.i20 = shl i32 %9, 6
  %add1.i = or i32 %mul.i20, 40
  %add.ptr.i21 = getelementptr i8, ptr %7, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 335544320) #5, !srcloc !87
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 4
  %10 = ptrtoint ptr %thres_temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %thres_temp, align 4
  %sub1.i = add i32 %11, 63984
  %div.i = sdiv i32 %sub1.i, 205
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %div.i) #5
  %mul.i22 = shl i32 %15, 6
  %add.i23 = or i32 %mul.i22, 32
  %add.ptr.i24 = getelementptr i8, ptr %13, i32 %add.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %16) #5, !srcloc !87
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %mul.i25 = shl i32 %20, 6
  %add.i26 = or i32 %mul.i25, 48
  %add.ptr.i27 = getelementptr i8, ptr %18, i32 %add.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 16777216) #5, !srcloc !87
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %mul.i28 = shl i32 %24, 6
  %add.i29 = or i32 %mul.i28, 44
  %add.ptr.i30 = getelementptr i8, ptr %22, i32 %add.i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 16777216) #5, !srcloc !87
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_disable_sensor(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %mul.i = shl i32 %5, 6
  %add.i = or i32 %mul.i, 44
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !87
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_irq_handler(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regs = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %mul.i = shl i32 %5, 6
  %add.i = or i32 %mul.i, 48
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !87
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_probe(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nr_sensors, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 20, i32 noundef 3520) #5
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %sensor, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %id, align 4
  %irq_name = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %irq_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.26, ptr %irq_name, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %call.i, align 4
  %id13 = getelementptr %struct.hisi_thermal_sensor, ptr %call.i, i32 1, i32 3
  %7 = ptrtoint ptr %id13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %id13, align 4
  %irq_name16 = getelementptr %struct.hisi_thermal_sensor, ptr %call.i, i32 1, i32 2
  %8 = ptrtoint ptr %irq_name16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.27, ptr %irq_name16, align 4
  %arrayidx18 = getelementptr %struct.hisi_thermal_sensor, ptr %call.i, i32 1
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %arrayidx18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %disable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %disable_sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_sensor, align 4
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor, align 4
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, ptr %9, i32 %i.07
  %call1 = tail call i32 %7(ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.07, 1
  %10 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_sensors, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_thermal_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ret.09 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %enable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enable_sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_sensor, align 4
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor, align 4
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, ptr %9, i32 %i.08
  %call1 = tail call i32 %7(ptr noundef %arrayidx) #5
  %or = or i32 %call1, %ret.09
  %inc = add nuw nsw i32 %i.08, 1
  %10 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_sensors, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_hisi_thermal__200_669_hisi_thermal_driver_init6, !1, !"__initcall__kmod_hisi_thermal__200_669_hisi_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/hisi_thermal.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_hisi_thermal_driver_exit, !1, !"__exitcall_hisi_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author201, !4, !"__UNIQUE_ID_author201", i1 false, i1 false}
!4 = !{!"../drivers/thermal/hisi_thermal.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_author202, !6, !"__UNIQUE_ID_author202", i1 false, i1 false}
!6 = !{!"../drivers/thermal/hisi_thermal.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_description203, !8, !"__UNIQUE_ID_description203", i1 false, i1 false}
!8 = !{!"../drivers/thermal/hisi_thermal.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_file204, !10, !"__UNIQUE_ID_file204", i1 false, i1 false}
!10 = !{!"../drivers/thermal/hisi_thermal.c", i32 674, i32 1}
!11 = !{ptr @__UNIQUE_ID_license205, !10, !"__UNIQUE_ID_license205", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/hisi_thermal.c", i32 661, i32 12}
!14 = !{ptr @hisi_thermal_driver, !15, !"hisi_thermal_driver", i1 false, i1 false}
!15 = !{!"../drivers/thermal/hisi_thermal.c", i32 659, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/hisi_thermal.c", i32 587, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hisi_thermal_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hisi_thermal_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/hisi_thermal.c", i32 601, i32 4}
!26 = !{ptr @hisi_thermal_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hisi_thermal_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thermal/hisi_thermal.c", i32 607, i32 4}
!30 = !{ptr @hisi_thermal_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hisi_thermal_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/hisi_thermal.c", i32 501, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hisi_thermal_register_sensor._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hisi_thermal_register_sensor._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @hisi_of_thermal_ops, !38, !"hisi_of_thermal_ops", i1 false, i1 false}
!38 = !{!"../drivers/thermal/hisi_thermal.c", i32 458, i32 48}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/hisi_thermal.c", i32 452, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hisi_thermal_get_temp.__UNIQUE_ID_ddebug199, !40, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/hisi_thermal.c", i32 473, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hisi_thermal_alarm_irq_thread._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @hisi_thermal_alarm_irq_thread._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/hisi_thermal.c", i32 481, i32 3}
!51 = !{ptr @hisi_thermal_alarm_irq_thread._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hisi_thermal_alarm_irq_thread._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @of_hisi_thermal_match, !54, !"of_hisi_thermal_match", i1 false, i1 false}
!54 = !{!"../drivers/thermal/hisi_thermal.c", i32 534, i32 34}
!55 = !{ptr @hi6220_ops, !56, !"hi6220_ops", i1 false, i1 false}
!56 = !{!"../drivers/thermal/hisi_thermal.c", i32 518, i32 38}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thermal/hisi_thermal.c", i32 402, i32 32}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/thermal/hisi_thermal.c", i32 406, i32 4}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hi6220_thermal_probe._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @hi6220_thermal_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thermal/hisi_thermal.c", i32 415, i32 29}
!66 = !{ptr @hi3660_ops, !67, !"hi3660_ops", i1 false, i1 false}
!67 = !{!"../drivers/thermal/hisi_thermal.c", i32 526, i32 38}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thermal/hisi_thermal.c", i32 435, i32 29}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thermal/hisi_thermal.c", i32 439, i32 29}
!72 = !{ptr @hisi_thermal_pm_ops, !73, !"hisi_thermal_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/thermal/hisi_thermal.c", i32 656, i32 8}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148773890, i64 2148773895, i64 2148773908, i64 2148773952, i64 2148773986, i64 2148774007}
!84 = !{i64 5216366}
!85 = !{i64 2153339430}
!86 = !{i64 2153338042}
!87 = !{i64 5215948}
!88 = !{i64 2153338607}
!89 = !{i64 2153344172}
!90 = !{i64 2153345133}
!91 = !{i64 2153346325}
!92 = !{i64 2153347278}
!93 = !{i64 2153334815}
!94 = !{i64 2153336678}
!95 = !{i64 2153337394}
!96 = !{i64 2153335508}
!97 = !{i64 2153336073}
!98 = !{i64 2153343026}
!99 = !{i64 2153341417}
!100 = !{i64 2153339994}
!101 = !{i64 2153342064}
!102 = !{i64 2153340770}
