; ModuleID = '/llk/IR_all_yes/drivers/pps/clients/pps-gpio.c_pt.bc'
source_filename = "../drivers/pps/clients/pps-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pps_gpio_device_data = type { i32, ptr, %struct.pps_source_info, ptr, ptr, %struct.timer_list, i8, i8, i32, i32 }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_pps_gpio__187_250_pps_gpio_driver_init6 = internal global ptr @pps_gpio_driver_init, section ".initcall6.init", align 4
@pps_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pps_gpio_probe, ptr @pps_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pps_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pps_gpio_driver_exit = internal global ptr @pps_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [48 x i8] c"pps_gpio.author=Ricardo Martins <rasm@fe.up.pt>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [54 x i8] c"pps_gpio.author=James Nuss <jamesnuss@nanometrics.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [48 x i8] c"pps_gpio.description=Use GPIO pin as PPS source\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [43 x i8] c"pps_gpio.file=drivers/pps/clients/pps-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [21 x i8] c"pps_gpio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version193 = internal constant [23 x i8] c"pps_gpio.version=1.2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pps_gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.2.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pps-gpio\00", [23 x i8] zeroinitializer }, align 32
@pps_gpio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pps-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pps_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to map GPIO to IRQ: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pps_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pps/clients/pps-gpio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pps_gpio_probe._entry_ptr = internal global ptr @pps_gpio_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@pps_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&data->echo_timer)\00", [44 x i8] zeroinitializer }, align 32
@pps_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register IRQ %d as PPS source\0A\00", [55 x i8] zeroinitializer }, align 32
@pps_gpio_probe._entry_ptr.13 = internal global ptr @pps_gpio_probe._entry.11, section ".printk_index", align 4
@pps_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 213, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to acquire IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pps_gpio_probe._entry_ptr.16 = internal global ptr @pps_gpio_probe._entry.14, section ".printk_index", align 4
@pps_gpio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 218, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Registered IRQ %d as PPS source\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pps_gpio_probe._entry_ptr.20 = internal global ptr @pps_gpio_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request PPS GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"assert-falling-edge\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"echo\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request ECHO GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"echo-active-ms\00", [17 x i8] zeroinitializer }, align 32
@pps_gpio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get echo-active-ms from FW\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pps_gpio_setup\00", [17 x i8] zeroinitializer }, align 32
@pps_gpio_setup._entry_ptr = internal global ptr @pps_gpio_setup._entry, section ".printk_index", align 4
@pps_gpio_setup._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 132, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"echo-active-ms: %u - bad value from FW\0A\00", [56 x i8] zeroinitializer }, align 32
@pps_gpio_setup._entry_ptr.30 = internal global ptr @pps_gpio_setup._entry.28, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pps_gpio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 231, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"removed IRQ %d as PPS source\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pps_gpio_remove\00", [16 x i8] zeroinitializer }, align 32
@pps_gpio_remove._entry_ptr = internal global ptr @pps_gpio_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"pps_gpio_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 241, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 255, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 245, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"pps_gpio_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 235, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 177, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 189, i32 50 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 194, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 203, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 213, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 217, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 111, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 114, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 116, i32 48 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 119, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 124, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 126, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 132, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [34 x i8] c"../drivers/pps/clients/pps-gpio.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 231, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_version193, ptr @__exitcall_pps_gpio_driver_exit, ptr @__initcall__kmod_pps_gpio__187_250_pps_gpio_driver_init6, ptr @__modver_attr, ptr @pps_gpio_driver_exit, ptr @pps_gpio_probe._entry, ptr @pps_gpio_probe._entry.11, ptr @pps_gpio_probe._entry.14, ptr @pps_gpio_probe._entry.17, ptr @pps_gpio_probe._entry_ptr, ptr @pps_gpio_probe._entry_ptr.13, ptr @pps_gpio_probe._entry_ptr.16, ptr @pps_gpio_probe._entry_ptr.20, ptr @pps_gpio_remove._entry, ptr @pps_gpio_remove._entry_ptr, ptr @pps_gpio_setup._entry, ptr @pps_gpio_setup._entry.28, ptr @pps_gpio_setup._entry_ptr, ptr @pps_gpio_setup._entry_ptr.30, ptr @pps_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pps_gpio_dt_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pps_gpio_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_setup._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_gpio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pps_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pps_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pps_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value.i, align 4, !annotation !83
  %call1.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef null, i32 noundef 1) #6
  %gpio_pin.i = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_pin.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i, ptr %gpio_pin.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.pps_gpio_setup.exit_crit_edge, label %if.end.i107

if.end.pps_gpio_setup.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pps_gpio_setup.exit

if.end.i107:                                      ; preds = %if.end
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.22) #6
  %assert_falling_edge.i = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 6
  %frombool.i = zext i1 %call.i.i to i8
  %3 = ptrtoint ptr %assert_falling_edge.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %assert_falling_edge.i, align 4
  %call8.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef 3) #6
  %echo_pin.i = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %echo_pin.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i, ptr %echo_pin.i, align 4
  %cmp.i48.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.i, label %if.end.i107.pps_gpio_setup.exit_crit_edge, label %if.end15.i

if.end.i107.pps_gpio_setup.exit_crit_edge:        ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %pps_gpio_setup.exit

if.end15.i:                                       ; preds = %if.end.i107
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end15.i.pps_gpio_setup.exit.thread_crit_edge, label %if.end18.i

if.end15.i.pps_gpio_setup.exit.thread_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pps_gpio_setup.exit.thread

if.end18.i:                                       ; preds = %if.end15.i
  %call.i49.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool20.not.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br label %pps_gpio_setup.exit.thread116

if.end22.i:                                       ; preds = %if.end18.i
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value.i, align 4
  %7 = add i32 %6, -1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %7)
  %8 = icmp ult i32 %7, -999
  br i1 %8, label %do.end27.i, label %if.end28.i

do.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %6) #9
  br label %pps_gpio_setup.exit.thread116

if.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %echo_active_ms.i = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %echo_active_ms.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %echo_active_ms.i, align 4
  br label %pps_gpio_setup.exit.thread

pps_gpio_setup.exit.thread:                       ; preds = %if.end28.i, %if.end15.i.pps_gpio_setup.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %if.end5

pps_gpio_setup.exit.thread116:                    ; preds = %do.end27.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %cleanup

pps_gpio_setup.exit:                              ; preds = %if.end.i107.pps_gpio_setup.exit_crit_edge, %if.end.pps_gpio_setup.exit_crit_edge
  %call1.i.sink = phi ptr [ %call1.i, %if.end.pps_gpio_setup.exit_crit_edge ], [ %call8.i, %if.end.i107.pps_gpio_setup.exit_crit_edge ]
  %.str.21.sink = phi ptr [ @.str.21, %if.end.pps_gpio_setup.exit_crit_edge ], [ @.str.24, %if.end.i107.pps_gpio_setup.exit_crit_edge ]
  %10 = ptrtoint ptr %call1.i.sink to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull %.str.21.sink) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool3.not = icmp eq i32 %call6.i, 0
  br i1 %tobool3.not, label %pps_gpio_setup.exit.if.end5_crit_edge, label %pps_gpio_setup.exit.cleanup_crit_edge

pps_gpio_setup.exit.cleanup_crit_edge:            ; preds = %pps_gpio_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pps_gpio_setup.exit.if.end5_crit_edge:            ; preds = %pps_gpio_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %pps_gpio_setup.exit.if.end5_crit_edge, %pps_gpio_setup.exit.thread
  %11 = ptrtoint ptr %gpio_pin.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_pin.i, align 4
  %call6 = call i32 @gpiod_to_irq(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call6, ptr %call.i, align 4
  %info = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 2
  %mode = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 2, i32 2
  %capture_clear = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %capture_clear to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %capture_clear, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  %spec.store.select = select i1 %tobool9.not, i32 4433, i32 4595
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select, ptr %mode, align 4
  %owner = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner, align 4
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %info, i32 noundef 31, ptr noundef nonnull @.str.9, ptr noundef %19, i32 noundef %21)
  %echo_pin = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %echo_pin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %echo_pin, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.end8.if.end25_crit_edge, label %if.then19

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %echo = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %echo to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pps_gpio_echo, ptr %echo, align 4
  %echo_active_ms = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %echo_active_ms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %echo_active_ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %26) #6
  %echo_timeout = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %echo_timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call2.i, ptr %echo_timeout, align 4
  %echo_timer = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 5
  call void @init_timer_key(ptr noundef %echo_timer, ptr noundef nonnull @pps_gpio_echo_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @pps_gpio_probe.__key) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end8.if.end25_crit_edge
  %28 = ptrtoint ptr %capture_clear to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %capture_clear, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27.not = icmp eq i8 %29, 0
  %spec.select = select i1 %tobool27.not, i32 17, i32 51
  %call32 = call ptr @pps_register_source(ptr noundef %info, i32 noundef %spec.select) #6
  %pps = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32, ptr %pps, align 4
  %cmp.i109 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 4
  br i1 %cmp.i109, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %32) #9
  %33 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pps, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end25
  %assert_falling_edge.i110 = getelementptr inbounds %struct.pps_gpio_device_data, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %assert_falling_edge.i110 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %assert_falling_edge.i110, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i111 = icmp eq i8 %37, 0
  %cond.i = select i1 %tobool.not.i111, i32 1, i32 2
  %38 = ptrtoint ptr %capture_clear to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %capture_clear, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not.i = icmp eq i8 %39, 0
  %and.i = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %cond3.i = select i1 %tobool2.not.i, i32 1, i32 2
  %or.i = select i1 %tobool1.not.i, i32 0, i32 %cond3.i
  %flags.0.i = or i32 %or.i, %cond.i
  %call.i112 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %32, ptr noundef nonnull @pps_gpio_irq_handler, ptr noundef null, i32 noundef %flags.0.i, ptr noundef %info, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool49.not = icmp eq i32 %call.i112, 0
  %40 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pps, align 4
  br i1 %tobool49.not, label %do.end59, label %if.then50

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @pps_unregister_source(ptr noundef %41) #6
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %43) #9
  br label %cleanup

do.end59:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.pps_device, ptr %41, i32 0, i32 12
  %44 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev61, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %47) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then50, %do.end38, %do.end, %pps_gpio_setup.exit.cleanup_crit_edge, %pps_gpio_setup.exit.thread116, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %35, %do.end38 ], [ -22, %if.then50 ], [ 0, %do.end59 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %pps_gpio_setup.exit.cleanup_crit_edge ], [ -22, %pps_gpio_setup.exit.thread116 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_gpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pps = getelementptr inbounds %struct.pps_gpio_device_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pps, align 4
  tail call void @pps_unregister_source(ptr noundef %3) #6
  %echo_timer = getelementptr inbounds %struct.pps_gpio_device_data, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @del_timer_sync(ptr noundef %echo_timer) #6
  %echo_pin = getelementptr inbounds %struct.pps_gpio_device_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %echo_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %echo_pin, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pps_gpio_echo(ptr nocapture noundef readonly %pps, i32 noundef %event, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mode = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %mode3 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode3, align 4
  %and4 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %echo_pin7 = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %echo_pin7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %echo_pin7, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %pps9 = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %pps9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pps9, align 4
  %mode11 = getelementptr inbounds %struct.pps_device, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode11, align 4
  %and12 = and i32 %10, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.epilog.if.end16_crit_edge, label %if.then14

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %echo_timeout = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 9
  %12 = ptrtoint ptr %echo_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %echo_timeout, align 4
  %add = add i32 %13, %11
  %echo_timer = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 5
  %expires = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %echo_timer) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.epilog.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pps_gpio_echo_timer_callback(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %echo_pin = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %echo_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %echo_pin, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pps_register_source(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_gpio_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %snap.i = alloca %struct.system_time_snapshot, align 8
  %ts = alloca %struct.pps_event_time, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #6
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %snap.i) #6
  %1 = call ptr @memset(ptr %snap.i, i32 255, i32 40)
  call void @ktime_get_snapshot(ptr noundef nonnull %snap.i) #6
  %real.i = getelementptr inbounds %struct.system_time_snapshot, ptr %snap.i, i32 0, i32 1
  %2 = ptrtoint ptr %real.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %real.i, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %3) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %snap.i) #6
  %gpio_pin = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_pin, align 4
  %call = call i32 @gpiod_get_value(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %assert_falling_edge4 = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %assert_falling_edge4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %assert_falling_edge4, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true3.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool5.not, label %land.lhs.true.if.end19.sink.split_crit_edge, label %if.else.thread

land.lhs.true.if.end19.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

land.lhs.true3.critedge:                          ; preds = %entry
  br i1 %tobool5.not, label %if.else, label %land.lhs.true3.critedge.if.end19.sink.split_crit_edge

land.lhs.true3.critedge.if.end19.sink.split_crit_edge: ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

if.else:                                          ; preds = %land.lhs.true3.critedge
  %capture_clear = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 7
  %8 = ptrtoint ptr %capture_clear to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %capture_clear, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.else.if.end19_crit_edge, label %land.lhs.true14.critedge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else.thread:                                   ; preds = %land.lhs.true
  %capture_clear32 = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %capture_clear32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %capture_clear32, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not33 = icmp eq i8 %11, 0
  br i1 %tobool6.not33, label %if.else.thread.if.end19_crit_edge, label %land.lhs.true9

if.else.thread.if.end19_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true9:                                   ; preds = %if.else.thread
  %12 = ptrtoint ptr %assert_falling_edge4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %assert_falling_edge4, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end19_crit_edge, label %land.lhs.true9.if.end19.sink.split_crit_edge

land.lhs.true9.if.end19.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

land.lhs.true9.if.end19_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true14.critedge:                         ; preds = %if.else
  %14 = ptrtoint ptr %assert_falling_edge4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %assert_falling_edge4, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %land.lhs.true14.critedge.if.end19.sink.split_crit_edge, label %land.lhs.true14.critedge.if.end19_crit_edge

land.lhs.true14.critedge.if.end19_crit_edge:      ; preds = %land.lhs.true14.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true14.critedge.if.end19.sink.split_crit_edge: ; preds = %land.lhs.true14.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %land.lhs.true14.critedge.if.end19.sink.split_crit_edge, %land.lhs.true9.if.end19.sink.split_crit_edge, %land.lhs.true3.critedge.if.end19.sink.split_crit_edge, %land.lhs.true.if.end19.sink.split_crit_edge
  %.sink34 = phi i32 [ 1, %land.lhs.true3.critedge.if.end19.sink.split_crit_edge ], [ 1, %land.lhs.true.if.end19.sink.split_crit_edge ], [ 2, %land.lhs.true14.critedge.if.end19.sink.split_crit_edge ], [ 2, %land.lhs.true9.if.end19.sink.split_crit_edge ]
  %pps18 = getelementptr inbounds %struct.pps_gpio_device_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %pps18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pps18, align 4
  call void @pps_event(ptr noundef %17, ptr noundef nonnull %ts, i32 noundef %.sink34, ptr noundef %data) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true14.critedge.if.end19_crit_edge, %land.lhs.true9.if.end19_crit_edge, %if.else.thread.if.end19_crit_edge, %if.else.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_unregister_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_event(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_snapshot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_pps_gpio__187_250_pps_gpio_driver_init6, !1, !"__initcall__kmod_pps_gpio__187_250_pps_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pps/clients/pps-gpio.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_pps_gpio_driver_exit, !1, !"__exitcall_pps_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/pps/clients/pps-gpio.c", i32 251, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/pps/clients/pps-gpio.c", i32 252, i32 1}
!7 = !{ptr @__UNIQUE_ID_description190, !8, !"__UNIQUE_ID_description190", i1 false, i1 false}
!8 = !{!"../drivers/pps/clients/pps-gpio.c", i32 253, i32 1}
!9 = !{ptr @__UNIQUE_ID_file191, !10, !"__UNIQUE_ID_file191", i1 false, i1 false}
!10 = !{!"../drivers/pps/clients/pps-gpio.c", i32 254, i32 1}
!11 = !{ptr @__UNIQUE_ID_license192, !10, !"__UNIQUE_ID_license192", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version193, !13, !"__UNIQUE_ID_version193", i1 false, i1 false}
!13 = !{!"../drivers/pps/clients/pps-gpio.c", i32 255, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pps/clients/pps-gpio.c", i32 245, i32 11}
!20 = !{ptr @pps_gpio_driver, !21, !"pps_gpio_driver", i1 false, i1 false}
!21 = !{!"../drivers/pps/clients/pps-gpio.c", i32 241, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pps/clients/pps-gpio.c", i32 177, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pps_gpio_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pps_gpio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pps/clients/pps-gpio.c", i32 189, i32 50}
!32 = !{ptr @pps_gpio_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/pps/clients/pps-gpio.c", i32 194, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pps/clients/pps-gpio.c", i32 203, i32 3}
!37 = !{ptr @pps_gpio_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pps_gpio_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pps/clients/pps-gpio.c", i32 213, i32 3}
!41 = !{ptr @pps_gpio_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pps_gpio_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pps/clients/pps-gpio.c", i32 217, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pps_gpio_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pps_gpio_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pps/clients/pps-gpio.c", i32 111, i32 10}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pps/clients/pps-gpio.c", i32 114, i32 34}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pps/clients/pps-gpio.c", i32 116, i32 48}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pps/clients/pps-gpio.c", i32 119, i32 10}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pps/clients/pps-gpio.c", i32 124, i32 38}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pps/clients/pps-gpio.c", i32 126, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pps_gpio_setup._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @pps_gpio_setup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pps/clients/pps-gpio.c", i32 132, i32 3}
!65 = !{ptr @pps_gpio_setup._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pps_gpio_setup._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pps/clients/pps-gpio.c", i32 231, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pps_gpio_remove._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pps_gpio_remove._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @pps_gpio_dt_ids, !73, !"pps_gpio_dt_ids", i1 false, i1 false}
!73 = !{!"../drivers/pps/clients/pps-gpio.c", i32 235, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
