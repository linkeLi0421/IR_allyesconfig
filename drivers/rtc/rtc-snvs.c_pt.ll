; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-snvs.c_pt.bc'
source_filename = "../drivers/rtc/rtc-snvs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snvs_rtc_data = type { ptr, ptr, i32, i32, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_snvs__227_430_snvs_rtc_driver_init6 = internal global ptr @snvs_rtc_driver_init, section ".initcall6.init", align 4
@snvs_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snvs_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snvs_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snvs_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snvs_rtc_driver_exit = internal global ptr @snvs_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [46 x i8] c"rtc_snvs.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [47 x i8] c"rtc_snvs.description=Freescale SNVS RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [35 x i8] c"rtc_snvs.file=drivers/rtc/rtc-snvs\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"rtc_snvs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snvs_rtc\00", [23 x i8] zeroinitializer }, align 32
@snvs_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec-v4.0-mon-rtc-lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snvs_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snvs_rtc_suspend_noirq, ptr @snvs_rtc_resume_noirq, ptr @snvs_rtc_suspend_noirq, ptr @snvs_rtc_resume_noirq, ptr @snvs_rtc_suspend_noirq, ptr @snvs_rtc_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regmap\00", [25 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"snvs rtc: you use old dts file, please update it\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snvs_rtc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/rtc/rtc-snvs.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry_ptr = internal global ptr @snvs_rtc_probe._entry, section ".printk_index", align 4
@snvs_rtc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@snvs_rtc_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtc_snvs:328:(&snvs_rtc_config)->lock\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 335, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't find snvs syscon\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry_ptr.12 = internal global ptr @snvs_rtc_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snvs-rtc\00", [23 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 350, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not prepare or enable the snvs clock\0A\00", [52 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry_ptr.16 = internal global ptr @snvs_rtc_probe._entry.14, section ".printk_index", align 4
@snvs_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable rtc %d\0A\00", [39 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry_ptr.19 = internal global ptr @snvs_rtc_probe._entry.17, section ".printk_index", align 4
@snvs_rtc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 377, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable irq wake\0A\00", [37 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry_ptr.22 = internal global ptr @snvs_rtc_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc alarm\00", [22 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@snvs_rtc_probe._entry_ptr.26 = internal global ptr @snvs_rtc_probe._entry.24, section ".printk_index", align 4
@snvs_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @snvs_rtc_read_time, ptr @snvs_rtc_set_time, ptr @snvs_rtc_read_alarm, ptr @snvs_rtc_set_alarm, ptr null, ptr @snvs_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rtc_write_sync_lp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 116, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Timeout waiting for LPSRT Counter to change\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtc_write_sync_lp\00", [46 x i8] zeroinitializer }, align 32
@rtc_write_sync_lp._entry_ptr = internal global ptr @rtc_write_sync_lp._entry, section ".printk_index", align 4
@rtc_read_lp_counter_lsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 89, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout trying to get valid LPSRT Counter read\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtc_read_lp_counter_lsb\00", [40 x i8] zeroinitializer }, align 32
@rtc_read_lp_counter_lsb._entry_ptr = internal global ptr @rtc_read_lp_counter_lsb._entry, section ".printk_index", align 4
@rtc_read_lp_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.31, ptr @.str.4, i32 71, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtc_read_lp_counter\00", [44 x i8] zeroinitializer }, align 32
@rtc_read_lp_counter._entry_ptr = internal global ptr @rtc_read_lp_counter._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"snvs_rtc_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 422, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 424, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"snvs_dt_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 416, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"snvs_rtc_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 412, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 319, i32 68 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 322, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"snvs_rtc_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 294, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 328, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 331, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 335, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 343, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 349, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 370, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 377, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 380, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 382, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"snvs_rtc_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 258, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 116, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 89, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [26 x i8] c"../drivers/rtc/rtc-snvs.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 71, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_snvs_rtc_driver_exit, ptr @__initcall__kmod_rtc_snvs__227_430_snvs_rtc_driver_init6, ptr @rtc_read_lp_counter._entry, ptr @rtc_read_lp_counter._entry_ptr, ptr @rtc_read_lp_counter_lsb._entry, ptr @rtc_read_lp_counter_lsb._entry_ptr, ptr @rtc_write_sync_lp._entry, ptr @rtc_write_sync_lp._entry_ptr, ptr @snvs_rtc_driver_exit, ptr @snvs_rtc_probe._entry, ptr @snvs_rtc_probe._entry.14, ptr @snvs_rtc_probe._entry.17, ptr @snvs_rtc_probe._entry.20, ptr @snvs_rtc_probe._entry.24, ptr @snvs_rtc_probe._entry.9, ptr @snvs_rtc_probe._entry_ptr, ptr @snvs_rtc_probe._entry_ptr.12, ptr @snvs_rtc_probe._entry_ptr.16, ptr @snvs_rtc_probe._entry_ptr.19, ptr @snvs_rtc_probe._entry_ptr.22, ptr @snvs_rtc_probe._entry_ptr.26, ptr @snvs_rtc_driver, ptr @.str, ptr @snvs_dt_ids, ptr @snvs_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @snvs_rtc_probe._key, ptr @snvs_rtc_config, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @snvs_rtc_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snvs_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_write_sync_lp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_read_lp_counter_lsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_read_lp_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snvs_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snvs_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @snvs_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %lpcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.snvs_rtc_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i169 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end, label %if.else

do.end:                                           ; preds = %if.end8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i170 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call15, ptr noundef nonnull @snvs_rtc_config, ptr noundef nonnull @snvs_rtc_probe._key, ptr noundef nonnull @.str.7) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %regmap, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %offset = getelementptr inbounds %struct.snvs_rtc_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 52, ptr %offset, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef %offset, i32 noundef 1, i32 noundef 0) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %regmap, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end19
  %11 = phi ptr [ %.pr, %if.else ], [ %call21, %if.end19 ]
  %cmp.i171 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.snvs_rtc_data, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call36, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call42 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call42, ptr %clk, align 4
  %cmp.i172 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %clk, align 4
  br label %if.end57

if.else47:                                        ; preds = %if.end40
  %call.i173 = tail call i32 @clk_prepare(ptr noundef %call42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool.not.i = icmp eq i32 %call.i173, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else47.do.end54_crit_edge

if.else47.do.end54_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

if.end.i:                                         ; preds = %if.else47
  %call1.i = tail call i32 @clk_enable(ptr noundef %call42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end57_crit_edge, label %if.then3.i

if.end.i.if.end57_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call42) #5
  br label %do.end54

do.end54:                                         ; preds = %if.then3.i, %if.else47.do.end54_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i173, %if.else47.do.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end57:                                         ; preds = %if.end.i.if.end57_crit_edge, %if.then45
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call.i174 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @snvs_rtc_action, ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i175, label %if.end63, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %offset65 = getelementptr inbounds %struct.snvs_rtc_data, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %offset65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset65, align 4
  %add = add i32 %21, 48
  %call66 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add, i32 noundef 1098080614) #5
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %24 = ptrtoint ptr %offset65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset65, align 4
  %add69 = add i32 %25, 24
  %call70 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %add69, i32 noundef -1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpcr.i) #5
  %26 = ptrtoint ptr %lpcr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %lpcr.i, align 4, !annotation !85
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %offset65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset65, align 4
  %add.i = add i32 %30, 4
  %call.i.i177 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %if.end63
  %dec23.i = phi i32 [ 999, %if.end63 ], [ %dec.i, %if.end13.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %33 = ptrtoint ptr %offset65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset65, align 4
  %add4.i = add i32 %34, 4
  %call5.i = call i32 @regmap_read(ptr noundef %32, i32 noundef %add4.i, ptr noundef nonnull %lpcr.i) #5
  %35 = ptrtoint ptr %lpcr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lpcr.i, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end13.i, label %if.end78

if.end13.i:                                       ; preds = %while.body.i
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.end76, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end76:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpcr.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef -110) #8
  br label %cleanup

if.end78:                                         ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpcr.i) #5
  %call80 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  %call83 = call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end78.if.end90_crit_edge, label %do.end88

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %if.end90

if.end90:                                         ; preds = %do.end88, %if.end78.if.end90_crit_edge
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call.i179 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull @snvs_rtc_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.23, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool95.not = icmp eq i32 %call.i179, 0
  br i1 %tobool95.not, label %if.end102, label %do.end99

do.end99:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %42, i32 noundef %call.i179) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @snvs_rtc_ops, ptr %ops, align 8
  %46 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %46, i32 0, i32 23
  %47 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 4294967295, ptr %range_max, align 8
  %48 = load ptr, ptr %call.i, align 4
  %call106 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %48) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end99, %do.end76, %devm_add_action_or_reset.exit, %do.end54, %if.end35.cleanup_crit_edge, %do.end33, %if.then17, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %5, %if.then17 ], [ -19, %do.end33 ], [ -110, %do.end76 ], [ %call.i179, %do.end99 ], [ %call106, %if.end102 ], [ %retval.0.i.ph, %do.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ %call.i174, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snvs_rtc_action(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #5
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %lpsr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpsr) #5
  %2 = ptrtoint ptr %lpsr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lpsr, align 4, !annotation !85
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %4) #5
  %regmap = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %add = add i32 %8, 24
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %lpsr) #5
  %9 = ptrtoint ptr %lpsr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lpsr, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i, align 4
  %call1.i = call i32 @clk_enable(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.snvs_rtc_alarm_irq_enable.exit_crit_edge

if.then.snvs_rtc_alarm_irq_enable.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %snvs_rtc_alarm_irq_enable.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %offset.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %18, 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add.i, i32 noundef 10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call4.i = call fastcc i32 @rtc_write_sync_lp(ptr noundef %12) #5
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %20) #5
  br label %snvs_rtc_alarm_irq_enable.exit

snvs_rtc_alarm_irq_enable.exit:                   ; preds = %if.end.i, %if.then.snvs_rtc_alarm_irq_enable.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  call void @rtc_update_irq(ptr noundef %22, i32 noundef 1, i32 noundef 160) #5
  br label %if.end

if.end:                                           ; preds = %snvs_rtc_alarm_irq_enable.exit, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add6 = add i32 %26, 24
  %27 = ptrtoint ptr %lpsr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lpsr, align 4
  %call7 = call i32 @regmap_write(ptr noundef %24, i32 noundef %add6, i32 noundef %28) #5
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %30) #5
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpsr) #5
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool2.not, i32 0, i32 10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 10, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call4 = tail call fastcc i32 @rtc_write_sync_lp(ptr noundef %1)
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtc_write_sync_lp(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %count1.i22 = alloca i32, align 4
  %count1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count1.i) #5
  %0 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count1.i, align 4, !annotation !85
  %regmap.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %offset.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %4, 32
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %count1.i) #5
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 100, %entry ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count1.i, align 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add3.i = add i32 %10, 32
  %call4.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add3.i, ptr noundef nonnull %count1.i) #5
  %11 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp.not.i = icmp eq i32 %12, %6
  br i1 %cmp.not.i, label %rtc_read_lp_counter_lsb.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %rtc_read_lp_counter_lsb.exit.thread, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

rtc_read_lp_counter_lsb.exit.thread:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1.i) #5
  br label %cleanup

rtc_read_lp_counter_lsb.exit:                     ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1.i) #5
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %rtc_read_lp_counter_lsb.exit
  %timeout.0 = phi i32 [ 1000, %rtc_read_lp_counter_lsb.exit ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count1.i22) #5
  %15 = ptrtoint ptr %count1.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %count1.i22, align 4, !annotation !85
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.i25 = add i32 %19, 32
  %call.i26 = call i32 @regmap_read(ptr noundef %17, i32 noundef %add.i25, ptr noundef nonnull %count1.i22) #5
  br label %do.body.i31

do.body.i31:                                      ; preds = %land.rhs.i34.do.body.i31_crit_edge, %do.body
  %timeout.0.i27 = phi i32 [ 100, %do.body ], [ %dec.i32, %land.rhs.i34.do.body.i31_crit_edge ]
  %20 = ptrtoint ptr %count1.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count1.i22, align 4
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %add3.i28 = add i32 %25, 32
  %call4.i29 = call i32 @regmap_read(ptr noundef %23, i32 noundef %add3.i28, ptr noundef nonnull %count1.i22) #5
  %26 = ptrtoint ptr %count1.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count1.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp.not.i30 = icmp eq i32 %27, %21
  br i1 %cmp.not.i30, label %if.end4, label %land.rhs.i34

land.rhs.i34:                                     ; preds = %do.body.i31
  %dec.i32 = add nsw i32 %timeout.0.i27, -1
  %tobool.not.i33 = icmp eq i32 %dec.i32, 0
  br i1 %tobool.not.i33, label %rtc_read_lp_counter_lsb.exit38, label %land.rhs.i34.do.body.i31_crit_edge

land.rhs.i34.do.body.i31_crit_edge:               ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i31

rtc_read_lp_counter_lsb.exit38:                   ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1.i22) #5
  br label %cleanup

if.end4:                                          ; preds = %do.body.i31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1.i22) #5
  %sub = sub i32 %21, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp = icmp ult i32 %sub, 3
  br i1 %cmp, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %if.end4
  %dec = add nsw i32 %timeout.0, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %land.rhs.do.end10_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool6.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool6.not, label %do.end.do.end10_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end10:                                         ; preds = %do.end.do.end10_crit_edge, %land.rhs.do.end10_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end.cleanup_crit_edge, %rtc_read_lp_counter_lsb.exit38, %rtc_read_lp_counter_lsb.exit.thread
  %retval.0 = phi i32 [ -110, %do.end10 ], [ -110, %rtc_read_lp_counter_lsb.exit38 ], [ 0, %do.end.cleanup_crit_edge ], [ -110, %rtc_read_lp_counter_lsb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %msb.i11.i = alloca i32, align 4
  %lsb.i12.i = alloca i32, align 4
  %msb.i.i = alloca i32, align 4
  %lsb.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb.i.i) #5
  %4 = ptrtoint ptr %msb.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %msb.i.i, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb.i.i) #5
  %5 = ptrtoint ptr %lsb.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lsb.i.i, align 4, !annotation !85
  %regmap.i.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i.i, align 4
  %add.i.i = add i32 %9, 28
  %call.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add.i.i, ptr noundef nonnull %msb.i.i) #5
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  %add3.i.i = add i32 %13, 32
  %call4.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %add3.i.i, ptr noundef nonnull %lsb.i.i) #5
  %14 = ptrtoint ptr %msb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msb.i.i, align 4
  %conv.i.i = zext i32 %15 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %16 = ptrtoint ptr %lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lsb.i.i, align 4
  %conv5.i.i = zext i32 %17 to i64
  %or.i.i = or i64 %shl.i.i, %conv5.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb.i.i) #5
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end
  %read1.0.i = phi i64 [ %or.i.i, %if.end ], [ %or.i22.i, %land.rhs.i.do.body.i_crit_edge ]
  %timeout.0.i = phi i32 [ 100, %if.end ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb.i11.i) #5
  %18 = ptrtoint ptr %msb.i11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %msb.i11.i, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb.i12.i) #5
  %19 = ptrtoint ptr %lsb.i12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %lsb.i12.i, align 4, !annotation !85
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %22 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i.i, align 4
  %add.i15.i = add i32 %23, 28
  %call.i16.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %add.i15.i, ptr noundef nonnull %msb.i11.i) #5
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %26 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i.i, align 4
  %add3.i17.i = add i32 %27, 32
  %call4.i18.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %add3.i17.i, ptr noundef nonnull %lsb.i12.i) #5
  %28 = ptrtoint ptr %msb.i11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msb.i11.i, align 4
  %conv.i19.i = zext i32 %29 to i64
  %shl.i20.i = shl nuw i64 %conv.i19.i, 32
  %30 = ptrtoint ptr %lsb.i12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lsb.i12.i, align 4
  %conv5.i21.i = zext i32 %31 to i64
  %or.i22.i = or i64 %shl.i20.i, %conv5.i21.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb.i12.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb.i11.i) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i22.i, i64 %read1.0.i)
  %cmp.not.i = icmp eq i64 %or.i22.i, %read1.0.i
  br i1 %cmp.not.i, label %rtc_read_lp_counter.exit.loopexit, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end5.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end5.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.29) #8
  %extract = lshr i64 %or.i22.i, 15
  %extract.t = trunc i64 %extract to i32
  br label %rtc_read_lp_counter.exit

rtc_read_lp_counter.exit.loopexit:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract19 = lshr i64 %read1.0.i, 15
  %extract.t20 = trunc i64 %extract19 to i32
  br label %rtc_read_lp_counter.exit

rtc_read_lp_counter.exit:                         ; preds = %rtc_read_lp_counter.exit.loopexit, %do.end5.i
  %read1.0.i.sink.off15 = phi i32 [ %extract.t, %do.end5.i ], [ %extract.t20, %rtc_read_lp_counter.exit.loopexit ]
  %conv = zext i32 %read1.0.i.sink.off15 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #5
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %rtc_read_lp_counter.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtc_read_lp_counter.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %lpcr.i28 = alloca i32, align 4
  %lpcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %conv = trunc i64 %call1 to i32
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpcr.i) #5
  %4 = ptrtoint ptr %lpcr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %lpcr.i, align 4, !annotation !85
  %regmap.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %offset.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %8, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %if.end
  %dec23.i = phi i32 [ 999, %if.end ], [ %dec.i, %if.end13.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %add4.i = add i32 %12, 4
  %call5.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add4.i, ptr noundef nonnull %lpcr.i) #5
  %13 = ptrtoint ptr %lpcr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lpcr.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6, label %if.end13.i

if.end13.i:                                       ; preds = %while.body.i
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %snvs_rtc_enable.exit, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

snvs_rtc_enable.exit:                             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpcr.i) #5
  br label %cleanup

if.end6:                                          ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpcr.i) #5
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add = add i32 %18, 32
  %shl = shl i32 %conv, 15
  %call7 = call i32 @regmap_write(ptr noundef %16, i32 noundef %add, i32 noundef %shl) #5
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add10 = add i32 %22, 28
  %shr = lshr i32 %conv, 17
  %call11 = call i32 @regmap_write(ptr noundef %20, i32 noundef %add10, i32 noundef %shr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpcr.i28) #5
  %23 = ptrtoint ptr %lpcr.i28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %lpcr.i28, align 4, !annotation !85
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %add.i31 = add i32 %27, 4
  %call.i.i32 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add.i31, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %while.body.i38

while.body.i38:                                   ; preds = %if.end13.i41.while.body.i38_crit_edge, %if.end6
  %dec23.i33 = phi i32 [ 999, %if.end6 ], [ %dec.i39, %if.end13.i41.while.body.i38_crit_edge ]
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset.i, align 4
  %add4.i34 = add i32 %31, 4
  %call5.i35 = call i32 @regmap_read(ptr noundef %29, i32 noundef %add4.i34, ptr noundef nonnull %lpcr.i28) #5
  %32 = ptrtoint ptr %lpcr.i28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lpcr.i28, align 4
  %and.i36 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool7.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool7.not.i37, label %if.end13.i41, label %while.body.i38.snvs_rtc_enable.exit43_crit_edge

while.body.i38.snvs_rtc_enable.exit43_crit_edge:  ; preds = %while.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %snvs_rtc_enable.exit43

if.end13.i41:                                     ; preds = %while.body.i38
  %dec.i39 = add nsw i32 %dec23.i33, -1
  %tobool1.not.i40 = icmp eq i32 %dec.i39, 0
  br i1 %tobool1.not.i40, label %if.end13.i41.snvs_rtc_enable.exit43_crit_edge, label %if.end13.i41.while.body.i38_crit_edge

if.end13.i41.while.body.i38_crit_edge:            ; preds = %if.end13.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i38

if.end13.i41.snvs_rtc_enable.exit43_crit_edge:    ; preds = %if.end13.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %snvs_rtc_enable.exit43

snvs_rtc_enable.exit43:                           ; preds = %if.end13.i41.snvs_rtc_enable.exit43_crit_edge, %while.body.i38.snvs_rtc_enable.exit43_crit_edge
  %..i42 = phi i32 [ 0, %while.body.i38.snvs_rtc_enable.exit43_crit_edge ], [ -110, %if.end13.i41.snvs_rtc_enable.exit43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpcr.i28) #5
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %snvs_rtc_enable.exit43, %snvs_rtc_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i42, %snvs_rtc_enable.exit43 ], [ %call2, %entry.cleanup_crit_edge ], [ -110, %snvs_rtc_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %lptar = alloca i32, align 4
  %lpsr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lptar) #5
  %2 = ptrtoint ptr %lptar to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lptar, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lpsr) #5
  %3 = ptrtoint ptr %lpsr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lpsr, align 4, !annotation !85
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add = add i32 %9, 36
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef %add, ptr noundef nonnull %lptar) #5
  %10 = ptrtoint ptr %lptar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lptar, align 4
  %conv = zext i32 %11 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add5 = add i32 %15, 24
  %call6 = call i32 @regmap_read(ptr noundef %13, i32 noundef %add5, ptr noundef nonnull %lpsr) #5
  %16 = ptrtoint ptr %lpsr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpsr, align 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %pending, align 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lpsr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lptar) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time1 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time1) #5
  %conv = trunc i64 %call2 to i32
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call5 = tail call fastcc i32 @rtc_write_sync_lp(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add11 = add i32 %11, 36
  %call12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add11, i32 noundef %conv) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add15 = add i32 %15, 24
  %call16 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add15, i32 noundef 1) #5
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  %18 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %alrm, align 4
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %offset.i = getelementptr inbounds %struct.snvs_rtc_data, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add.i, i32 noundef 10, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call4.i = tail call fastcc i32 @rtc_write_sync_lp(ptr noundef %21) #5
  %28 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %29) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call4.i, %if.end.i ], [ %call1.i, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snvs_rtc_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.snvs_rtc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @clk_enable(ptr noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_rtc_snvs__227_430_snvs_rtc_driver_init6, !1, !"__initcall__kmod_rtc_snvs__227_430_snvs_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-snvs.c", i32 430, i32 1}
!2 = !{ptr @__exitcall_snvs_rtc_driver_exit, !1, !"__exitcall_snvs_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-snvs.c", i32 432, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-snvs.c", i32 433, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-snvs.c", i32 434, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-snvs.c", i32 424, i32 11}
!12 = !{ptr @snvs_rtc_driver, !13, !"snvs_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-snvs.c", i32 422, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-snvs.c", i32 319, i32 68}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-snvs.c", i32 322, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @snvs_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @snvs_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @snvs_rtc_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-snvs.c", i32 328, i32 18}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-snvs.c", i32 331, i32 43}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-snvs.c", i32 335, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @snvs_rtc_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @snvs_rtc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-snvs.c", i32 343, i32 39}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-snvs.c", i32 349, i32 4}
!38 = !{ptr @snvs_rtc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @snvs_rtc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-snvs.c", i32 370, i32 3}
!42 = !{ptr @snvs_rtc_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @snvs_rtc_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-snvs.c", i32 377, i32 3}
!46 = !{ptr @snvs_rtc_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @snvs_rtc_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-snvs.c", i32 380, i32 24}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-snvs.c", i32 382, i32 3}
!52 = !{ptr @snvs_rtc_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @snvs_rtc_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @snvs_rtc_config, !55, !"snvs_rtc_config", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-snvs.c", i32 294, i32 35}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-snvs.c", i32 116, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rtc_write_sync_lp._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rtc_write_sync_lp._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-snvs.c", i32 89, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rtc_read_lp_counter_lsb._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rtc_read_lp_counter_lsb._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @snvs_rtc_ops, !67, !"snvs_rtc_ops", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-snvs.c", i32 258, i32 35}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-snvs.c", i32 71, i32 3}
!70 = !{ptr @rtc_read_lp_counter._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtc_read_lp_counter._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @snvs_dt_ids, !73, !"snvs_dt_ids", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-snvs.c", i32 416, i32 34}
!74 = !{ptr @snvs_rtc_pm_ops, !75, !"snvs_rtc_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-snvs.c", i32 412, i32 32}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
