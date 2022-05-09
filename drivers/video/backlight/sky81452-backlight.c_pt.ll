; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/sky81452-backlight.c_pt.bc'
source_filename = "../drivers/video/backlight/sky81452-backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.sky81452_bl_platform_data = type { ptr, ptr, i32, i8, i8, i8, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_sky81452_backlight__301_349_sky81452_bl_driver_init6 = internal global ptr @sky81452_bl_driver_init, section ".initcall6.init", align 4
@sky81452_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sky81452_bl_probe, ptr @sky81452_bl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sky81452_bl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sky81452_bl_driver_exit = internal global ptr @sky81452_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [66 x i8] c"sky81452_backlight.description=Skyworks SKY81452 backlight driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [65 x i8] c"sky81452_backlight.author=Gyungoh Yoo <jack.yoo@skyworksinc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [67 x i8] c"sky81452_backlight.file=drivers/video/backlight/sky81452-backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [34 x i8] c"sky81452_backlight.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sky81452-backlight\00", [45 x i8] zeroinitializer }, align 32
@sky81452_bl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"skyworks,sky81452-backlight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sky81452_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize. err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sky81452_bl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/video/backlight/sky81452-backlight.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sky81452_bl_probe._entry_ptr = internal global ptr @sky81452_bl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcd-backlight\00", [18 x i8] zeroinitializer }, align 32
@sky81452_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @sky81452_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sky81452_bl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register. err=%ld\0A\00", [35 x i8] zeroinitializer }, align 32
@sky81452_bl_probe._entry_ptr.9 = internal global ptr @sky81452_bl_probe._entry.7, section ".printk_index", align 4
@sky81452_bl_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sky81452_bl_attribute, ptr null }, [44 x i8] zeroinitializer }, align 32
@sky81452_bl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create attribute. err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@sky81452_bl_probe._entry_ptr.12 = internal global ptr @sky81452_bl_probe._entry.10, section ".printk_index", align 4
@sky81452_bl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"backlight node not found.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sky81452_bl_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@sky81452_bl_parse_dt._entry_ptr = internal global ptr @sky81452_bl_parse_dt._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skyworks,ignore-pwm\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"skyworks,dpwm-mode\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"skyworks,phase-shift\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-sources\00", [20 x i8] zeroinitializer }, align 32
@sky81452_bl_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"led-sources node is invalid.\0A\00", [34 x i8] zeroinitializer }, align 32
@sky81452_bl_parse_dt._entry_ptr.22 = internal global ptr @sky81452_bl_parse_dt._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"skyworks,short-detection-threshold-volt\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"skyworks,current-limit-mA\00", [38 x i8] zeroinitializer }, align 32
@sky81452_bl_attribute = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_enable, ptr @dev_attr_open, ptr @dev_attr_short, ptr @dev_attr_fault, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @sky81452_bl_store_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_open = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sky81452_bl_show_open_short, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_short = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sky81452_bl_show_open_short, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fault = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sky81452_bl_show_fault, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fault\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"over-current \00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"over-temperature\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2300, i64 2750]
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"sky81452_bl_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 340, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 342, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"sky81452_bl_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 333, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 289, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 295, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"sky81452_bl_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 88, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 299, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"sky81452_bl_attr_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 177, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 307, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 192, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 202, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 203, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 204, i32 47 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 205, i32 49 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 208, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 219, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 230, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 235, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"sky81452_bl_attribute\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 169, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"dev_attr_enable\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"dev_attr_open\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"dev_attr_short\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"dev_attr_fault\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 164, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 165, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 128, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 135, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 166, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 167, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 155, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [48 x i8] c"../drivers/video/backlight/sky81452-backlight.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 158, i32 15 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_sky81452_bl_driver_exit, ptr @__initcall__kmod_sky81452_backlight__301_349_sky81452_bl_driver_init6, ptr @sky81452_bl_driver_exit, ptr @sky81452_bl_parse_dt._entry, ptr @sky81452_bl_parse_dt._entry.20, ptr @sky81452_bl_parse_dt._entry_ptr, ptr @sky81452_bl_parse_dt._entry_ptr.22, ptr @sky81452_bl_probe._entry, ptr @sky81452_bl_probe._entry.10, ptr @sky81452_bl_probe._entry.7, ptr @sky81452_bl_probe._entry_ptr, ptr @sky81452_bl_probe._entry_ptr.12, ptr @sky81452_bl_probe._entry_ptr.9, ptr @sky81452_bl_driver, ptr @.str, ptr @sky81452_bl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sky81452_bl_ops, ptr @.str.8, ptr @sky81452_bl_attr_group, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @sky81452_bl_attribute, ptr @dev_attr_enable, ptr @dev_attr_open, ptr @dev_attr_short, ptr @dev_attr_fault, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sky81452_bl_attribute to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_open to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_short to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fault to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sky81452_bl_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sky81452_bl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sky81452_bl_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %sources.i = alloca [6 x i32], align 4
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = call ptr @memset(ptr %props, i32 255, i32 28)
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_node_get(ptr noundef %7) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sources.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  %8 = call ptr @memset(ptr %sources.i, i32 255, i32 24)
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %sky81452_bl_parse_dt.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #9
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef nonnull %call.i) #9
  br label %sky81452_bl_parse_dt.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @of_property_read_string(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i.i) #9
  %call.i80.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.16, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i80.i, null
  %ignore_pwm.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 3
  %frombool.i = zext i1 %tobool.i.i to i8
  %9 = ptrtoint ptr %ignore_pwm.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %ignore_pwm.i, align 4
  %call.i81.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.17, ptr noundef null) #9
  %tobool.i82.i = icmp ne ptr %call.i81.i, null
  %dpwm_mode.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 4
  %frombool10.i = zext i1 %tobool.i82.i to i8
  %10 = ptrtoint ptr %dpwm_mode.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool10.i, ptr %dpwm_mode.i, align 1
  %call.i83.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %tobool.i84.i = icmp ne ptr %call.i83.i, null
  %phase_shift.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 5
  %frombool12.i = zext i1 %tobool.i84.i to i8
  %11 = ptrtoint ptr %phase_shift.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool12.i, ptr %phase_shift.i, align 2
  %call13.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef null, i32 noundef 7) #9
  %gpiod_enable.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %gpiod_enable.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13.i, ptr %gpiod_enable.i, align 4
  %call.i85.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %enable.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 63, ptr %enable.i, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %if.end6.i
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i85.i, i32 6) #9
  %call.i86.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %sources.i, i32 noundef %14, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %cmp20.i = icmp slt i32 %call.i86.i, 0
  br i1 %cmp20.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  call void @of_node_put(ptr noundef nonnull %call.i) #9
  br label %sky81452_bl_parse_dt.exit.thread

if.end26.i:                                       ; preds = %if.else.i
  %enable27.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 2
  %dec88.i = add nsw i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec88.i)
  %tobool28.not89.i = icmp eq i32 %dec88.i, 0
  br i1 %tobool28.not89.i, label %if.end26.i.if.end30.loopexit.i_crit_edge, label %if.end26.i.while.body.i_crit_edge

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  br label %while.body.i

if.end26.i.if.end30.loopexit.i_crit_edge:         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.loopexit.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end26.i.while.body.i_crit_edge
  %dec91.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec88.i, %if.end26.i.while.body.i_crit_edge ]
  %storemerge90.i = phi i32 [ %or.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end26.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x i32], ptr %sources.i, i32 0, i32 %dec91.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %16
  %or.i = or i32 %shl.i, %storemerge90.i
  %dec.i = add i32 %dec91.i, -1
  %tobool28.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool28.not.i, label %while.body.i.if.end30.loopexit.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.if.end30.loopexit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.loopexit.i

if.end30.loopexit.i:                              ; preds = %while.body.i.if.end30.loopexit.i_crit_edge, %if.end26.i.if.end30.loopexit.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %if.end26.i.if.end30.loopexit.i_crit_edge ], [ %or.i, %while.body.i.if.end30.loopexit.i_crit_edge ]
  %17 = ptrtoint ptr %enable27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge.lcssa.i, ptr %enable27.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.loopexit.i, %if.then15.i
  %short_detection_threshold.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.23, ptr noundef %short_detection_threshold.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp32.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp32.i, label %if.then33.i, label %if.end30.i.if.end35.i_crit_edge

if.end30.i.if.end35.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %short_detection_threshold.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %short_detection_threshold.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end35.i_crit_edge
  %boost_current_limit.i = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %call.i.i, i32 0, i32 7
  %call.i.i87.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.24, ptr noundef %boost_current_limit.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %cmp37.i = icmp slt i32 %call.i.i87.i, 0
  br i1 %cmp37.i, label %if.then38.i, label %if.end35.i.sky81452_bl_parse_dt.exit_crit_edge

if.end35.i.sky81452_bl_parse_dt.exit_crit_edge:   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sky81452_bl_parse_dt.exit

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %boost_current_limit.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2750, ptr %boost_current_limit.i, align 4
  br label %sky81452_bl_parse_dt.exit

sky81452_bl_parse_dt.exit.thread:                 ; preds = %do.end24.i, %if.then4.i, %do.end.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -61 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.then4.i ], [ inttoptr (i32 -22 to ptr), %do.end24.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sources.i) #9
  br label %if.then

sky81452_bl_parse_dt.exit:                        ; preds = %if.then38.i, %if.end35.i.sky81452_bl_parse_dt.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sources.i) #9
  %cmp.i55 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %sky81452_bl_parse_dt.exit.if.then_crit_edge, label %if.end

sky81452_bl_parse_dt.exit.if.then_crit_edge:      ; preds = %sky81452_bl_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sky81452_bl_parse_dt.exit.if.then_crit_edge, %sky81452_bl_parse_dt.exit.thread
  %retval.0.i69 = phi ptr [ %retval.0.i.ph, %sky81452_bl_parse_dt.exit.thread ], [ %call.i.i, %sky81452_bl_parse_dt.exit.if.then_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i69 to i32
  br label %cleanup

if.end:                                           ; preds = %sky81452_bl_parse_dt.exit
  %21 = ptrtoint ptr %ignore_pwm.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ignore_pwm.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i57 = icmp eq i8 %22, 0
  %cond.i = select i1 %tobool.not.i57, i32 0, i32 32
  %23 = ptrtoint ptr %dpwm_mode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dpwm_mode.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i = icmp eq i8 %24, 0
  %cond2.i = select i1 %tobool1.not.i, i32 0, i32 16
  %or.i59 = or i32 %cond2.i, %cond.i
  %25 = ptrtoint ptr %phase_shift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phase_shift.i, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not.i61 = icmp eq i8 %26, 0
  %cond4.i = select i1 %tobool3.not.i61, i32 8, i32 0
  %or5.i = or i32 %or.i59, %cond4.i
  %27 = ptrtoint ptr %boost_current_limit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %boost_current_limit.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.end.do.end_crit_edge [
    i32 2300, label %if.then.i
    i32 2750, label %if.end.if.end10.i_crit_edge
  ]

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or6.i = or i32 %or5.i, 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %if.end.if.end10.i_crit_edge
  %value.0.i = phi i32 [ %or6.i, %if.then.i ], [ %or5.i, %if.end.if.end10.i_crit_edge ]
  %30 = ptrtoint ptr %short_detection_threshold.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %short_detection_threshold.i, align 4
  %32 = and i32 %31, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %.not.i = icmp eq i32 %32, 4
  br i1 %.not.i, label %sky81452_bl_init_device.exit, label %if.end10.i.do.end_crit_edge

if.end10.i.do.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sky81452_bl_init_device.exit:                     ; preds = %if.end10.i
  %sub.i = sub nuw nsw i32 7, %31
  %or17.i = or i32 %sub.i, %value.0.i
  %call.i64 = call i32 @regmap_write(ptr noundef %3, i32 noundef 2, i32 noundef %or17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp = icmp slt i32 %call.i64, 0
  br i1 %cmp, label %sky81452_bl_init_device.exit.do.end_crit_edge, label %if.end7

sky81452_bl_init_device.exit.do.end_crit_edge:    ; preds = %sky81452_bl_init_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %sky81452_bl_init_device.exit.do.end_crit_edge, %if.end10.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i6572 = phi i32 [ %call.i64, %sky81452_bl_init_device.exit.do.end_crit_edge ], [ -22, %if.end.do.end_crit_edge ], [ -22, %if.end10.i.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i6572) #12
  br label %cleanup

if.end7:                                          ; preds = %sky81452_bl_init_device.exit
  %33 = call ptr @memset(ptr %props, i32 0, i32 28)
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %4, align 4
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i.i, align 4
  %tobool.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool.not, ptr @.str.6, ptr %36
  %call10 = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef nonnull %spec.select, ptr noundef %dev1, ptr noundef %3, ptr noundef nonnull @sky81452_bl_ops, ptr noundef nonnull %props) #9
  %cmp.i66 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %call10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %37) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %dev19 = getelementptr inbounds %struct.backlight_device, ptr %call10, i32 0, i32 6
  %call20 = call i32 @sysfs_create_group(ptr noundef %dev19, ptr noundef nonnull @sky81452_bl_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call20) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end18.cleanup_crit_edge, %do.end15, %do.end, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %retval.0.i6572, %do.end ], [ %37, %do.end15 ], [ %call20, %do.end25 ], [ %call20, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 6
  tail call void @sysfs_remove_group(ptr noundef %dev2, ptr noundef nonnull @sky81452_bl_attr_group) #9
  %power = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power, align 8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %3, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #9
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %9(ptr noundef %3) #9
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #9
  %gpiod_enable = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %gpiod_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_enable, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %backlight_update_status.exit.if.end_crit_edge, label %if.then

backlight_update_status.exit.if.end_crit_edge:    ; preds = %backlight_update_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %backlight_update_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %backlight_update_status.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_update_status(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.cleanup.sink.split_crit_edge, label %if.then

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then:                                          ; preds = %entry
  %sub = add i32 %5, -1
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %enable = getelementptr inbounds %struct.sky81452_bl_platform_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %9, %if.end ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 63, i32 noundef %.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ %call.i18, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_store_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !95
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %call.i11 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef 63, i32 noundef %4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp3 = icmp slt i32 %call.i11, 0
  %call2.count = select i1 %cmp3, i32 %call.i11, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_show_open_short(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %value = alloca i32, align 4
  %tmp1 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp1) #9
  %3 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %tmp1, align 1, !annotation !95
  %4 = getelementptr inbounds [3 x i8], ptr %tmp1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !95
  %6 = getelementptr inbounds [3 x i8], ptr %tmp1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !95
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(5) @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %cond = select i1 %tobool.not, i32 5, i32 4
  %call4 = call i32 @regmap_read(ptr noundef %1, i32 noundef %cond, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %and = and i32 %11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buf, align 1
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %and8 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then6.if.end14_crit_edge, label %if.then10

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp1, ptr noundef nonnull @.str.27, i32 noundef 1)
  %call13 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %tmp1)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then6.if.end14_crit_edge
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %shr = lshr i32 %16, 1
  store i32 %shr, ptr %value, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not.1 = icmp eq i32 %17, 0
  br i1 %tobool9.not.1, label %if.end14.if.end14.1_crit_edge, label %if.then10.1

if.end14.if.end14.1_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.1

if.then10.1:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call11.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp1, ptr noundef nonnull @.str.27, i32 noundef 2)
  %call13.1 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %tmp1)
  br label %if.end14.1

if.end14.1:                                       ; preds = %if.then10.1, %if.end14.if.end14.1_crit_edge
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %shr.1 = lshr i32 %19, 1
  store i32 %shr.1, ptr %value, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not.2 = icmp eq i32 %20, 0
  br i1 %tobool9.not.2, label %if.end14.1.if.end14.2_crit_edge, label %if.then10.2

if.end14.1.if.end14.2_crit_edge:                  ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.2

if.then10.2:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  %call11.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp1, ptr noundef nonnull @.str.27, i32 noundef 3)
  %call13.2 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %tmp1)
  br label %if.end14.2

if.end14.2:                                       ; preds = %if.then10.2, %if.end14.1.if.end14.2_crit_edge
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value, align 4
  %shr.2 = lshr i32 %22, 1
  store i32 %shr.2, ptr %value, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not.3 = icmp eq i32 %23, 0
  br i1 %tobool9.not.3, label %if.end14.2.if.end14.3_crit_edge, label %if.then10.3

if.end14.2.if.end14.3_crit_edge:                  ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.3

if.then10.3:                                      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  %call11.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp1, ptr noundef nonnull @.str.27, i32 noundef 4)
  %call13.3 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %tmp1)
  br label %if.end14.3

if.end14.3:                                       ; preds = %if.then10.3, %if.end14.2.if.end14.3_crit_edge
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %shr.3 = lshr i32 %25, 1
  store i32 %shr.3, ptr %value, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not.4 = icmp eq i32 %26, 0
  br i1 %tobool9.not.4, label %if.end14.3.if.end14.4_crit_edge, label %if.then10.4

if.end14.3.if.end14.4_crit_edge:                  ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.4

if.then10.4:                                      ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #11
  %call11.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp1, ptr noundef nonnull @.str.27, i32 noundef 5)
  %call13.4 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %tmp1)
  br label %if.end14.4

if.end14.4:                                       ; preds = %if.then10.4, %if.end14.3.if.end14.4_crit_edge
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  %shr.4 = lshr i32 %28, 1
  store i32 %shr.4, ptr %value, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not.5 = icmp eq i32 %29, 0
  br i1 %tobool9.not.5, label %if.end14.4.if.end14.5_crit_edge, label %if.then10.5

if.end14.4.if.end14.5_crit_edge:                  ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.5

if.then10.5:                                      ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #11
  %call11.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp1, ptr noundef nonnull @.str.27, i32 noundef 6)
  %call13.5 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %tmp1)
  br label %if.end14.5

if.end14.5:                                       ; preds = %if.then10.5, %if.end14.4.if.end14.5_crit_edge
  %strlen = call i32 @strlen(ptr %buf) #13
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %30 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 2560, ptr %endptr, align 1
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = call ptr @memcpy(ptr %buf, ptr @.str.29, i32 6)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end14.5
  %call18 = call i32 @strlen(ptr noundef %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sky81452_bl_show_fault(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 4
  %call1 = call i32 @regmap_read(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf, align 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %strlen21 = call i32 @strlen(ptr %buf) #13
  %endptr22 = getelementptr i8, ptr %buf, i32 %strlen21
  %6 = call ptr @memcpy(ptr %endptr22, ptr @.str.32, i32 14)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and5 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %strlen19 = call i32 @strlen(ptr %buf) #13
  %endptr20 = getelementptr i8, ptr %buf, i32 %strlen19
  %7 = call ptr @memcpy(ptr %endptr20, ptr @.str.33, i32 17)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %strlen = call i32 @strlen(ptr %buf) #13
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %8 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %endptr, align 1
  %call11 = call i32 @strlen(ptr noundef %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !69, !71, !73, !75, !76, !78, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_sky81452_backlight__301_349_sky81452_bl_driver_init6, !1, !"__initcall__kmod_sky81452_backlight__301_349_sky81452_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 349, i32 1}
!2 = !{ptr @__exitcall_sky81452_bl_driver_exit, !1, !"__exitcall_sky81452_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 351, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 352, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 353, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 342, i32 11}
!12 = !{ptr @sky81452_bl_driver, !13, !"sky81452_bl_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 340, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 289, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sky81452_bl_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sky81452_bl_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 295, i32 37}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 299, i32 3}
!26 = !{ptr @sky81452_bl_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sky81452_bl_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 307, i32 3}
!30 = !{ptr @sky81452_bl_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sky81452_bl_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 192, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sky81452_bl_parse_dt._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @sky81452_bl_parse_dt._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 202, i32 30}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 203, i32 48}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 204, i32 47}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 205, i32 49}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 208, i32 40}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 219, i32 4}
!49 = !{ptr @sky81452_bl_parse_dt._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sky81452_bl_parse_dt._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 230, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 235, i32 33}
!55 = !{ptr @sky81452_bl_ops, !56, !"sky81452_bl_ops", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 88, i32 35}
!57 = !{ptr @sky81452_bl_attr_group, !58, !"sky81452_bl_attr_group", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 177, i32 37}
!59 = !{ptr @sky81452_bl_attribute, !60, !"sky81452_bl_attribute", i1 false, i1 false}
!60 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 169, i32 26}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 164, i32 8}
!63 = !{ptr @dev_attr_enable, !62, !"dev_attr_enable", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 165, i32 8}
!66 = !{ptr @dev_attr_open, !65, !"dev_attr_open", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 128, i32 18}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 133, i32 15}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 135, i32 15}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 166, i32 8}
!75 = !{ptr @dev_attr_short, !74, !"dev_attr_short", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 167, i32 8}
!78 = !{ptr @dev_attr_fault, !77, !"dev_attr_fault", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 155, i32 15}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 158, i32 15}
!83 = !{ptr @sky81452_bl_of_match, !84, !"sky81452_bl_of_match", i1 false, i1 false}
!84 = !{!"../drivers/video/backlight/sky81452-backlight.c", i32 333, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"auto-init"}
