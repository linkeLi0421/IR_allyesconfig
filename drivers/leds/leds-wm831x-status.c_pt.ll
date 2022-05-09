; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-wm831x-status.c_pt.bc'
source_filename = "../drivers/leds/leds-wm831x-status.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.wm831x_status = type { %struct.led_classdev, ptr, %struct.mutex, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }

@__initcall__kmod_leds_wm831x_status__187_300_wm831x_status_driver_init6 = internal global ptr @wm831x_status_driver_init, section ".initcall6.init", align 4
@wm831x_status_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_status_probe, ptr @wm831x_status_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_status_driver_exit = internal global ptr @wm831x_status_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [75 x i8] c"leds_wm831x_status.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [56 x i8] c"leds_wm831x_status.description=WM831x status LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [56 x i8] c"leds_wm831x_status.file=drivers/leds/leds-wm831x-status\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [31 x i8] c"leds_wm831x_status.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [48 x i8] c"leds_wm831x_status.alias=platform:wm831x-status\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm831x-status\00", [18 x i8] zeroinitializer }, align 32
@wm831x_status_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No register resource\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm831x_status_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/leds-wm831x-status.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_status_probe._entry_ptr = internal global ptr @wm831x_status_probe._entry, section ".printk_index", align 4
@wm831x_status_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&drvdata->mutex\00", [16 x i8] zeroinitializer }, align 32
@wm831x_status_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&drvdata->value_lock\00", [43 x i8] zeroinitializer }, align 32
@wm831x_status_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @wm831x_status_group, ptr null], [24 x i8] zeroinitializer }, align 32
@wm831x_status_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register LED: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_status_probe._entry_ptr.11 = internal global ptr @wm831x_status_probe._entry.9, section ".printk_index", align 4
@wm831x_status_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wm831x_status_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wm831x_status_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_src, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_src = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @src_show, ptr @src_store }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@led_src_texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otp\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charger\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@switch.table.wm831x_status_blink_set = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 62, i64 63, i64 125, i64 250, i64 1000]
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"wm831x_status_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 292, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 294, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 220, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 243, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 244, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"wm831x_status_groups\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 274, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"wm831x_status_group\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 206, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"wm831x_status_attrs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 202, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"dev_attr_src\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 200, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"led_src_texts\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 151, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 172, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 152, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 153, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 154, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [37 x i8] c"../drivers/leds/leds-wm831x-status.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 155, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [37 x i8] c"switch.table.wm831x_status_blink_set\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_wm831x_status_driver_exit, ptr @__initcall__kmod_leds_wm831x_status__187_300_wm831x_status_driver_init6, ptr @wm831x_status_driver_exit, ptr @wm831x_status_probe._entry, ptr @wm831x_status_probe._entry.9, ptr @wm831x_status_probe._entry_ptr, ptr @wm831x_status_probe._entry_ptr.11, ptr @wm831x_status_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @wm831x_status_probe.__key, ptr @.str.6, ptr @wm831x_status_probe.__key.7, ptr @.str.8, ptr @wm831x_status_groups, ptr @.str.10, ptr @wm831x_status_group, ptr @wm831x_status_attrs, ptr @dev_attr_src, ptr @.str.12, ptr @.str.13, ptr @led_src_texts, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.wm831x_status_blink_set], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_status_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_src to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_src_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm831x_status_blink_set to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_status_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_status_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_status_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_status_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_status_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1, align 4
  %rem = and i32 %5, 1
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #5
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 568, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %wm831x8 = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %wm831x8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %wm831x8, align 4
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call2, align 4
  %reg = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg, align 4
  %dev9 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 8
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end7.if.else21_crit_edge, label %land.lhs.true

if.end7.if.else21_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else21

land.lhs.true:                                    ; preds = %if.end7
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %13, i32 0, i32 14, i32 %rem
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %land.lhs.true.if.else21_crit_edge, label %if.then18

land.lhs.true.if.else21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %pdata.sroa.0.0.copyload = load i32, ptr %15, align 4
  %pdata.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 4
  %17 = ptrtoint ptr %pdata.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %pdata.sroa.7.0.copyload = load ptr, ptr %pdata.sroa.7.0..sroa_idx, align 4
  %pdata.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 8
  %18 = ptrtoint ptr %pdata.sroa.10.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %pdata.sroa.10.0.copyload = load ptr, ptr %pdata.sroa.10.0..sroa_idx, align 4
  br label %do.body25

if.else21:                                        ; preds = %land.lhs.true.if.else21_crit_edge, %if.end7.if.else21_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.else21.do.body25_crit_edge

if.else21.do.body25_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body25

if.end.i:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %do.body25

do.body25:                                        ; preds = %if.end.i, %if.else21.do.body25_crit_edge, %if.then18
  %pdata.sroa.0.0 = phi i32 [ %pdata.sroa.0.0.copyload, %if.then18 ], [ 0, %if.else21.do.body25_crit_edge ], [ 0, %if.end.i ]
  %pdata.sroa.7.0 = phi ptr [ %pdata.sroa.7.0.copyload, %if.then18 ], [ %20, %if.else21.do.body25_crit_edge ], [ %22, %if.end.i ]
  %pdata.sroa.10.0 = phi ptr [ %pdata.sroa.10.0.copyload, %if.then18 ], [ null, %if.else21.do.body25_crit_edge ], [ null, %if.end.i ]
  %mutex = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @wm831x_status_probe.__key) #5
  %value_lock = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %value_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @wm831x_status_probe.__key.7, i16 noundef signext 3) #5
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %conv = trunc i32 %24 to i16
  %call33 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext %conv) #5
  %reg_val = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call33, ptr %reg_val, align 4
  %and = and i32 %call33, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 255
  %26 = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdata.sroa.0.0)
  %cmp40 = icmp eq i32 %pdata.sroa.0.0, 0
  br i1 %cmp40, label %if.then42, label %if.else47

if.then42:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_val, align 4
  %and45 = lshr i32 %29, 14
  %30 = and i32 %and45, 3
  br label %if.end50

if.else47:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %pdata.sroa.0.0, -1
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then42
  %sub.sink = phi i32 [ %30, %if.then42 ], [ %sub, %if.else47 ]
  %31 = getelementptr inbounds %struct.wm831x_status, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.sink, ptr %31, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdata.sroa.7.0, ptr %call.i, align 4
  %default_trigger54 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 14
  %34 = ptrtoint ptr %default_trigger54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdata.sroa.10.0, ptr %default_trigger54, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @wm831x_status_brightness_set, ptr %brightness_set_blocking, align 4
  %blink_set = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @wm831x_status_blink_set, ptr %blink_set, align 4
  %groups = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 12
  %37 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @wm831x_status_groups, ptr %groups, align 4
  %38 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev9, align 4
  %call.i116 = tail call i32 @led_classdev_register_ext(ptr noundef %39, ptr noundef nonnull %call.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp61 = icmp slt i32 %call.i116, 0
  br i1 %cmp61, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i116) #8
  br label %cleanup

if.end68:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end66, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i116, %do.end66 ], [ 0, %if.end68 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_status_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @led_classdev_unregister(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_status_brightness_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %value_lock = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %value_lock) #5
  %brightness = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 10
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp6 = icmp eq i32 %value, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %blink = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 6
  %1 = ptrtoint ptr %blink to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %blink, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %value_lock, i32 noundef %call3) #5
  tail call fastcc void @wm831x_status_set(ptr noundef %led_cdev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_status_blink_set(ptr noundef %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.do.body2_crit_edge

land.lhs.true.do.body2_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 250, ptr %delay_on, align 4
  %5 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 250, ptr %delay_off, align 4
  br label %do.body2

do.body2:                                         ; preds = %if.then, %land.lhs.true.do.body2_crit_edge, %entry.do.body2_crit_edge
  %value_lock = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %value_lock) #5
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_on, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body2.if.end31_crit_edge [
    i32 1000, label %do.body2.if.then16_crit_edge
    i32 250, label %sw.bb8
    i32 125, label %sw.bb10
    i32 62, label %do.body2.sw.bb12_crit_edge
    i32 63, label %do.body2.sw.bb12_crit_edge60
  ]

do.body2.sw.bb12_crit_edge60:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

do.body2.sw.bb12_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

do.body2.if.then16_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

do.body2.if.end31_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

sw.bb8:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

sw.bb10:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

sw.bb12:                                          ; preds = %do.body2.sw.bb12_crit_edge, %do.body2.sw.bb12_crit_edge60
  br label %if.then16

if.then16:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %do.body2.if.then16_crit_edge
  %.sink = phi i32 [ 3, %sw.bb12 ], [ 2, %sw.bb10 ], [ 1, %sw.bb8 ], [ 0, %do.body2.if.then16_crit_edge ]
  %blink_time13 = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 7
  %9 = ptrtoint ptr %blink_time13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %blink_time13, align 4
  %10 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay_off, align 4
  %12 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_on, align 4
  %div = udiv i32 %11, %13
  %switch.tableidx = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.hole_check, label %if.then16.if.end31_crit_edge

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

switch.hole_check:                                ; preds = %if.then16
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -115, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end31_crit_edge, label %switch.lookup

switch.hole_check.if.end31_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wm831x_status_blink_set, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %blink_cyc23 = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 8
  %17 = ptrtoint ptr %blink_cyc23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.load, ptr %blink_cyc23, align 4
  br label %if.end31

if.end31:                                         ; preds = %switch.lookup, %switch.hole_check.if.end31_crit_edge, %if.then16.if.end31_crit_edge, %do.body2.if.end31_crit_edge
  %.sink59 = phi i32 [ 1, %switch.lookup ], [ 0, %if.then16.if.end31_crit_edge ], [ 0, %do.body2.if.end31_crit_edge ], [ 0, %switch.hole_check.if.end31_crit_edge ]
  %ret.156 = phi i32 [ 0, %switch.lookup ], [ -22, %if.then16.if.end31_crit_edge ], [ -22, %do.body2.if.end31_crit_edge ], [ -22, %switch.hole_check.if.end31_crit_edge ]
  %blink30 = getelementptr inbounds %struct.wm831x_status, ptr %led_cdev, i32 0, i32 6
  %18 = ptrtoint ptr %blink30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink59, ptr %blink30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %value_lock, i32 noundef %call5) #5
  tail call fastcc void @wm831x_status_set(ptr noundef %led_cdev)
  ret i32 %ret.156
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm831x_status_set(ptr noundef %led) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %reg_val = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_val, align 4
  %and = and i32 %1, -49936
  store i32 %and, ptr %reg_val, align 4
  %value_lock = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %value_lock) #5
  %src = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 9
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %shl = shl i32 %3, 14
  %4 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_val, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %reg_val, align 4
  %blink = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 6
  %6 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or7 = or i32 %or, 512
  %blink_time = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 7
  %8 = ptrtoint ptr %blink_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blink_time, align 4
  %shl8 = shl i32 %9, 2
  %or10 = or i32 %shl8, %or7
  %blink_cyc = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 8
  %10 = ptrtoint ptr %blink_cyc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blink_cyc, align 4
  %or12 = or i32 %or10, %11
  br label %if.end18.sink.split

if.else:                                          ; preds = %entry
  %brightness = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 10
  %12 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not = icmp eq i32 %13, 0
  br i1 %cmp13.not, label %if.else.if.end18_crit_edge, label %if.then15

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %or17 = or i32 %or, 256
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then15, %if.then
  %or17.sink = phi i32 [ %or17, %if.then15 ], [ %or12, %if.then ]
  %14 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or17.sink, ptr %reg_val, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %value_lock, i32 noundef %call2) #5
  %wm831x = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 1
  %15 = ptrtoint ptr %wm831x to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wm831x, align 4
  %reg = getelementptr inbounds %struct.wm831x_status, ptr %led, i32 0, i32 4
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %conv20 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_val, align 4
  %conv22 = trunc i32 %20 to i16
  %call23 = tail call i32 @wm831x_reg_write(ptr noundef %16, i16 noundef zeroext %conv20, i16 noundef zeroext %conv22) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.wm831x_status, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %src = getelementptr inbounds %struct.wm831x_status, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  %.str.13..str.14 = select i1 %cmp1, ptr @.str.13, ptr @.str.14
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.13..str.14, ptr noundef nonnull @.str.16)
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 1
  %.str.13.sink29 = select i1 %cmp1.1, ptr @.str.13, ptr @.str.14
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 %call3
  %call3.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.1, ptr noundef nonnull %.str.13.sink29, ptr noundef nonnull @.str.17)
  %ret.1.1 = add i32 %call3.1, %call3
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.2 = icmp eq i32 %7, 2
  %.str.13.sink30 = select i1 %cmp1.2, ptr @.str.13, ptr @.str.14
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 %ret.1.1
  %call3.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.2, ptr noundef nonnull %.str.13.sink30, ptr noundef nonnull @.str.18)
  %ret.1.2 = add i32 %call3.2, %ret.1.1
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp1.3 = icmp eq i32 %9, 3
  %.str.13.sink31 = select i1 %cmp1.3, ptr @.str.13, ptr @.str.14
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 %ret.1.2
  %call3.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.3, ptr noundef nonnull %.str.13.sink31, ptr noundef nonnull @.str.19)
  %ret.1.3 = add i32 %call3.3, %ret.1.2
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %ret.1.3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 2560, ptr %arrayidx9, align 1
  %add11 = add i32 %ret.1.3, 1
  ret i32 %add11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @led_src_texts, i32 noundef 4, ptr noundef %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mutex = getelementptr inbounds %struct.wm831x_status, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %src = getelementptr inbounds %struct.wm831x_status, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %src, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  tail call fastcc void @wm831x_status_set(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %size
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_leds_wm831x_status__187_300_wm831x_status_driver_init6, !1, !"__initcall__kmod_leds_wm831x_status__187_300_wm831x_status_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-wm831x-status.c", i32 300, i32 1}
!2 = !{ptr @__exitcall_wm831x_status_driver_exit, !1, !"__exitcall_wm831x_status_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-wm831x-status.c", i32 302, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-wm831x-status.c", i32 303, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-wm831x-status.c", i32 304, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-wm831x-status.c", i32 305, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-wm831x-status.c", i32 294, i32 14}
!14 = !{ptr @wm831x_status_driver, !15, !"wm831x_status_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-wm831x-status.c", i32 292, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-wm831x-status.c", i32 220, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wm831x_status_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @wm831x_status_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @wm831x_status_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-wm831x-status.c", i32 243, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @wm831x_status_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-wm831x-status.c", i32 244, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-wm831x-status.c", i32 274, i32 3}
!32 = !{ptr @wm831x_status_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wm831x_status_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @wm831x_status_groups, !35, !"wm831x_status_groups", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-wm831x-status.c", i32 206, i32 1}
!36 = !{ptr @wm831x_status_group, !35, !"wm831x_status_group", i1 false, i1 false}
!37 = !{ptr @wm831x_status_attrs, !38, !"wm831x_status_attrs", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-wm831x-status.c", i32 202, i32 26}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-wm831x-status.c", i32 200, i32 8}
!41 = !{ptr @dev_attr_src, !40, !"dev_attr_src", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-wm831x-status.c", i32 170, i32 30}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-wm831x-status.c", i32 172, i32 30}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-wm831x-status.c", i32 176, i32 28}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-wm831x-status.c", i32 152, i32 2}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-wm831x-status.c", i32 153, i32 2}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-wm831x-status.c", i32 154, i32 2}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-wm831x-status.c", i32 155, i32 2}
!56 = !{ptr @led_src_texts, !57, !"led_src_texts", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-wm831x-status.c", i32 151, i32 27}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
