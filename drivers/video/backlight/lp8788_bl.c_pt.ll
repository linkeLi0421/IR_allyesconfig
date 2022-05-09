; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/lp8788_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/lp8788_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lp8788_bl = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_backlight_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_lp8788_bl__303_321_lp8788_bl_driver_init6 = internal global ptr @lp8788_bl_driver_init, section ".initcall6.init", align 4
@lp8788_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_backlight_probe, ptr @lp8788_backlight_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_bl_driver_exit = internal global ptr @lp8788_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [64 x i8] c"lp8788_bl.description=Texas Instruments LP8788 Backlight Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [26 x i8] c"lp8788_bl.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [49 x i8] c"lp8788_bl.file=drivers/video/backlight/lp8788_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [22 x i8] c"lp8788_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [42 x i8] c"lp8788_bl.alias=platform:lp8788-backlight\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8788-backlight\00", [47 x i8] zeroinitializer }, align 32
@lp8788_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"backlight config err: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lp8788_backlight_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/lp8788_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_backlight_probe._entry_ptr = internal global ptr @lp8788_backlight_probe._entry, section ".printk_index", align 4
@lp8788_backlight_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"register backlight err: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lp8788_backlight_probe._entry_ptr.8 = internal global ptr @lp8788_backlight_probe._entry.6, section ".printk_index", align 4
@lp8788_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lp8788_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lp8788_backlight_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register sysfs err: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@lp8788_backlight_probe._entry_ptr.11 = internal global ptr @lp8788_backlight_probe._entry.9, section ".printk_index", align 4
@default_bl_config.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@default_bl_config.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@default_bl_config.2 = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@default_bl_config.3 = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@default_bl_config.4 = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@default_bl_config.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lp8788_backlight_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid mode: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lp8788_backlight_configure\00", [37 x i8] zeroinitializer }, align 32
@lp8788_backlight_configure._entry_ptr = internal global ptr @lp8788_backlight_configure._entry, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcd-backlight\00", [18 x i8] zeroinitializer }, align 32
@lp8788_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @lp8788_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@lp8788_pwm_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can not get PWM device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp8788_pwm_ctrl\00", [16 x i8] zeroinitializer }, align 32
@lp8788_pwm_ctrl._entry_ptr = internal global ptr @lp8788_pwm_ctrl._entry, section ".printk_index", align 4
@lp8788_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_bl_ctl_mode, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_bl_ctl_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp8788_get_bl_ctl_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bl_ctl_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PWM based\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Register based\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid mode\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"lp8788_bl_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 314, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 318, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 275, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 281, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"lp8788_attr_group\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 253, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 287, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"default_bl_config.0\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"default_bl_config.1\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"default_bl_config.2\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"default_bl_config.3\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"default_bl_config.4\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"default_bl_config.5\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 112, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 208, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"lp8788_bl_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 181, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 139, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"lp8788_attributes\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 248, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"dev_attr_bl_ctl_mode\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 246, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 237, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 239, i32 13 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 241, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [39 x i8] c"../drivers/video/backlight/lp8788_bl.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 243, i32 35 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_lp8788_bl_driver_exit, ptr @__initcall__kmod_lp8788_bl__303_321_lp8788_bl_driver_init6, ptr @lp8788_backlight_configure._entry, ptr @lp8788_backlight_configure._entry_ptr, ptr @lp8788_backlight_probe._entry, ptr @lp8788_backlight_probe._entry.6, ptr @lp8788_backlight_probe._entry.9, ptr @lp8788_backlight_probe._entry_ptr, ptr @lp8788_backlight_probe._entry_ptr.11, ptr @lp8788_backlight_probe._entry_ptr.8, ptr @lp8788_bl_driver_exit, ptr @lp8788_pwm_ctrl._entry, ptr @lp8788_pwm_ctrl._entry_ptr, ptr @lp8788_bl_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lp8788_attr_group, ptr @.str.10, ptr @default_bl_config.0, ptr @default_bl_config.1, ptr @default_bl_config.2, ptr @default_bl_config.3, ptr @default_bl_config.4, ptr @default_bl_config.5, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @lp8788_bl_ops, ptr @.str.15, ptr @.str.16, ptr @lp8788_attributes, ptr @dev_attr_bl_ctl_mode, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_backlight_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_backlight_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bl_config.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bl_config.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bl_config.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bl_config.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bl_config.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_bl_config.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_backlight_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_pwm_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bl_ctl_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_bl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp8788_bl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_bl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp8788_bl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %call.i, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bl_pdata = getelementptr inbounds %struct.lp8788_platform_data, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %bl_pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bl_pdata, align 4
  %pdata7 = getelementptr inbounds %struct.lp8788_bl, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pdata7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pdata7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pdata1.i = getelementptr inbounds %struct.lp8788_bl, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end8.if.end.i_crit_edge, label %if.then.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %bl_mode.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bl_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bl_mode.i, align 4
  store i32 %16, ptr @default_bl_config.0, align 4
  %dim_mode.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %dim_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dim_mode.i, align 4
  store i32 %18, ptr @default_bl_config.1, align 4
  %full_scale.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %full_scale.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %full_scale.i, align 4
  store i32 %20, ptr @default_bl_config.2, align 4
  %rise_time.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %14, i32 0, i32 5
  %21 = ptrtoint ptr %rise_time.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rise_time.i, align 4
  store i32 %22, ptr @default_bl_config.3, align 4
  %fall_time.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %14, i32 0, i32 6
  %23 = ptrtoint ptr %fall_time.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fall_time.i, align 4
  store i32 %24, ptr @default_bl_config.4, align 4
  %pwm_pol.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %14, i32 0, i32 7
  %25 = ptrtoint ptr %pwm_pol.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pwm_pol.i, align 4
  store i32 %26, ptr @default_bl_config.5, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  %27 = load i32, ptr @default_bl_config.3, align 4
  %shl.i = shl i32 %27, 4
  %28 = load i32, ptr @default_bl_config.4, align 4
  %or.i = or i32 %shl.i, %28
  %conv.i = trunc i32 %or.i to i8
  %call.i55 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext -104, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool10.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end12.i:                                       ; preds = %if.end.i
  %29 = load i32, ptr @default_bl_config.2, align 4
  %shl14.i = shl i32 %29, 2
  %30 = load i32, ptr @default_bl_config.1, align 4
  %shl16.i = shl i32 %30, 1
  %or17.i = or i32 %shl16.i, %shl14.i
  %31 = load i32, ptr @default_bl_config.0, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end12.i.sw.bb23.i_crit_edge
    i32 2, label %if.end12.i.sw.bb23.i_crit_edge70
  ]

if.end12.i.sw.bb23.i_crit_edge70:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23.i

if.end12.i.sw.bb23.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23.i

sw.bb.i:                                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i = and i32 %or17.i, 254
  %or21.i = or i32 %conv20.i, 1
  br label %lp8788_backlight_configure.exit

sw.bb23.i:                                        ; preds = %if.end12.i.sw.bb23.i_crit_edge, %if.end12.i.sw.bb23.i_crit_edge70
  %33 = load i32, ptr @default_bl_config.5, align 4
  %shl25.i = shl i32 %33, 6
  %or26.i = or i32 %or17.i, %shl25.i
  %or28.i = or i32 %or26.i, 33
  br label %lp8788_backlight_configure.exit

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.12, i32 noundef %31) #9
  br label %do.end

lp8788_backlight_configure.exit:                  ; preds = %sw.bb23.i, %sw.bb.i
  %val.0.in.i = phi i32 [ %or28.i, %sw.bb23.i ], [ %or21.i, %sw.bb.i ]
  %val.0.i = trunc i32 %val.0.in.i to i8
  %mode.i = getelementptr inbounds %struct.lp8788_bl, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %31, ptr %mode.i, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call34.i = tail call i32 @lp8788_write_byte(ptr noundef %40, i8 noundef zeroext -106, i8 noundef zeroext %val.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool10.not = icmp eq i32 %call34.i, 0
  br i1 %tobool10.not, label %if.end13, label %lp8788_backlight_configure.exit.do.end_crit_edge

lp8788_backlight_configure.exit.do.end_crit_edge: ; preds = %lp8788_backlight_configure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lp8788_backlight_configure.exit.do.end_crit_edge, %do.end.i, %if.end.i.do.end_crit_edge
  %retval.0.i67 = phi i32 [ %call34.i, %lp8788_backlight_configure.exit.do.end_crit_edge ], [ %call.i55, %if.end.i.do.end_crit_edge ], [ -22, %do.end.i ]
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i67) #9
  br label %cleanup

if.end13:                                         ; preds = %lp8788_backlight_configure.exit
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #6
  %43 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %45 = call ptr @memset(ptr %props.i, i32 255, i32 28)
  %46 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata1.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %44, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 127, ptr %43, align 4
  %tobool.not.i57 = icmp eq ptr %47, null
  br i1 %tobool.not.i57, label %if.then6.critedge.i, label %if.then.i58

if.then.i58:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %initial_brightness.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %initial_brightness.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %initial_brightness.i, align 4
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 127) #6
  %53 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %props.i, align 4
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 4
  %tobool5.not.i = icmp eq ptr %55, null
  %spec.select.i = select i1 %tobool5.not.i, ptr @.str.14, ptr %55
  br label %if.end9.i

if.then6.critedge.i:                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %props.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.critedge.i, %if.then.i58
  %name.0.i = phi ptr [ @.str.14, %if.then6.critedge.i ], [ %spec.select.i, %if.then.i58 ]
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i59 = call ptr @backlight_device_register(ptr noundef nonnull %name.0.i, ptr noundef %60, ptr noundef nonnull %call.i, ptr noundef nonnull @lp8788_bl_ops, ptr noundef nonnull %props.i) #6
  %cmp.i.i = icmp ugt ptr %call.i59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lp8788_backlight_register.exit, label %lp8788_backlight_register.exit.thread

lp8788_backlight_register.exit.thread:            ; preds = %if.end9.i
  %bl_dev14.i = getelementptr inbounds %struct.lp8788_bl, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %bl_dev14.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i59, ptr %bl_dev14.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #6
  %call23 = call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @lp8788_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

lp8788_backlight_register.exit:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #6
  %62 = ptrtoint ptr %call.i59 to i32
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.7, i32 noundef %62) #9
  br label %cleanup

do.end28:                                         ; preds = %lp8788_backlight_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.10, i32 noundef %call23) #9
  %67 = ptrtoint ptr %bl_dev14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bl_dev14.i, align 4
  call void @backlight_device_unregister(ptr noundef %68) #6
  br label %cleanup

if.end30:                                         ; preds = %lp8788_backlight_register.exit.thread
  %69 = ptrtoint ptr %bl_dev14.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bl_dev14.i, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %70, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i, align 4
  %tobool.not.i61 = icmp eq ptr %72, null
  br i1 %tobool.not.i61, label %if.end30.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end30.backlight_update_status.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end30
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %74, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i63

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i63:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i62 = call i32 %74(ptr noundef %70) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i63, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end30.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end28, %lp8788_backlight_register.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %backlight_update_status.exit ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i67, %do.end ], [ %62, %lp8788_backlight_register.exit ], [ %call23, %do.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_backlight_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl_dev1 = getelementptr inbounds %struct.lp8788_bl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bl_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %8(ptr noundef %3) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @lp8788_attr_group) #6
  %9 = ptrtoint ptr %bl_dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bl_dev1, align 4
  tail call void @backlight_device_unregister(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_write_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_bl_update_status(ptr nocapture noundef %bl_dev) #2 align 64 {
entry:
  %state.i41.i = alloca %struct.pwm_state, align 8
  %state.i36.i = alloca %struct.pwm_state, align 8
  %state.i34.i = alloca %struct.pwm_state, align 8
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl_dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode1 = getelementptr inbounds %struct.lp8788_bl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1, align 4
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bl_dev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 1
  %7 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_brightness, align 4
  %pdata.i = getelementptr inbounds %struct.lp8788_bl, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then4.if.end15_crit_edge, label %if.end.i

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end.i:                                         ; preds = %if.then4
  %11 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bl_dev, align 8
  %period_ns.i = getelementptr inbounds %struct.lp8788_backlight_platform_data, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %period_ns.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_ns.i, align 4
  %mul.i = mul i32 %14, %12
  %div.i = udiv i32 %mul.i, %8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %pwm3.i = getelementptr inbounds %struct.lp8788_bl, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %pwm3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwm3.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @devm_pwm_get(ptr noundef %18, ptr noundef nonnull @.str) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15) #9
  br label %if.end15

if.end8.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pwm3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %pwm3.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #6
  %args.i.i = getelementptr inbounds %struct.pwm_device, ptr %call.i, i32 0, i32 6
  %polarity.i.i = getelementptr inbounds %struct.pwm_device, ptr %call.i, i32 0, i32 6, i32 1
  %22 = getelementptr inbounds i8, ptr %state.i.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 16)
  %24 = ptrtoint ptr %polarity.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %polarity.i.i, align 8
  %polarity1.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %polarity1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %polarity1.i.i, align 8
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %args.i.i, align 8
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %state.i.i, align 8
  %call.i.i = call i32 @pwm_apply_state(ptr noundef %call.i, ptr noundef nonnull %state.i.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end8.i, %if.end.i.if.end10.i_crit_edge
  %30 = ptrtoint ptr %pwm3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pwm3.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i34.i) #6
  %tobool.not.i.i = icmp ne ptr %31, null
  %32 = or i32 %div.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i = icmp sgt i32 %32, -1
  %or.cond.i.i = and i1 %.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end3.i.i, label %if.end10.i.pwm_config.exit.i_crit_edge

if.end10.i.pwm_config.exit.i_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_config.exit.i

if.end3.i.i:                                      ; preds = %if.end10.i
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %31, i32 0, i32 7
  %33 = call ptr @memcpy(ptr %state.i34.i, ptr %state1.i.i.i, i32 24)
  %duty_cycle.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i34.i, i32 0, i32 1
  %34 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %duty_cycle.i.i, align 8
  %conv1.i.i = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv1.i.i)
  %cmp4.i.i = icmp eq i64 %35, %conv1.i.i
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end3.if.end10_crit_edge.i.i

if.end3.if.end10_crit_edge.i.i:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i.i = zext i32 %14 to i64
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %36 = ptrtoint ptr %state.i34.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %state.i34.i, align 8
  %conv62.i.i = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %conv62.i.i)
  %cmp7.i.i = icmp eq i64 %37, %conv62.i.i
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.pwm_config.exit.i_crit_edge, label %land.lhs.true.i.i.if.end10.i.i_crit_edge

land.lhs.true.i.i.if.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i.i

land.lhs.true.i.i.pwm_config.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_config.exit.i

if.end10.i.i:                                     ; preds = %land.lhs.true.i.i.if.end10.i.i_crit_edge, %if.end3.if.end10_crit_edge.i.i
  %conv133.pre-phi.i.i = phi i64 [ %.pre.i.i, %if.end3.if.end10_crit_edge.i.i ], [ %conv62.i.i, %land.lhs.true.i.i.if.end10.i.i_crit_edge ]
  %38 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv1.i.i, ptr %duty_cycle.i.i, align 8
  %39 = ptrtoint ptr %state.i34.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv133.pre-phi.i.i, ptr %state.i34.i, align 8
  %call.i35.i = call i32 @pwm_apply_state(ptr noundef nonnull %31, ptr noundef nonnull %state.i34.i) #6
  br label %pwm_config.exit.i

pwm_config.exit.i:                                ; preds = %if.end10.i.i, %land.lhs.true.i.i.pwm_config.exit.i_crit_edge, %if.end10.i.pwm_config.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i34.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %8)
  %tobool13.not.i = icmp ult i32 %mul.i, %8
  %40 = ptrtoint ptr %pwm3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pwm3.i, align 4
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %pwm_config.exit.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i36.i) #6
  %tobool.not.i37.i = icmp eq ptr %41, null
  br i1 %tobool.not.i37.i, label %if.then14.i.pwm_enable.exit.i_crit_edge, label %if.end.i.i

if.then14.i.pwm_enable.exit.i_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_enable.exit.i

if.end.i.i:                                       ; preds = %if.then14.i
  %state1.i.i38.i = getelementptr inbounds %struct.pwm_device, ptr %41, i32 0, i32 7
  %42 = call ptr @memcpy(ptr %state.i36.i, ptr %state1.i.i38.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i36.i, i32 0, i32 3
  %43 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled.i.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool1.not.i.i, label %if.end3.i40.i, label %if.end.i.i.pwm_enable.exit.i_crit_edge

if.end.i.i.pwm_enable.exit.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_enable.exit.i

if.end3.i40.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %enabled.i.i, align 4
  %call.i39.i = call i32 @pwm_apply_state(ptr noundef nonnull %41, ptr noundef nonnull %state.i36.i) #6
  br label %pwm_enable.exit.i

pwm_enable.exit.i:                                ; preds = %if.end3.i40.i, %if.end.i.i.pwm_enable.exit.i_crit_edge, %if.then14.i.pwm_enable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i36.i) #6
  br label %if.end15

if.else.i:                                        ; preds = %pwm_config.exit.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i41.i) #6
  %tobool.not.i42.i = icmp eq ptr %41, null
  br i1 %tobool.not.i42.i, label %if.else.i.pwm_disable.exit.i_crit_edge, label %if.end.i46.i

if.else.i.pwm_disable.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_disable.exit.i

if.end.i46.i:                                     ; preds = %if.else.i
  %state1.i.i43.i = getelementptr inbounds %struct.pwm_device, ptr %41, i32 0, i32 7
  %46 = call ptr @memcpy(ptr %state.i41.i, ptr %state1.i.i43.i, i32 24)
  %enabled.i44.i = getelementptr inbounds %struct.pwm_state, ptr %state.i41.i, i32 0, i32 3
  %47 = ptrtoint ptr %enabled.i44.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled.i44.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not.i45.i = icmp eq i8 %48, 0
  br i1 %tobool1.not.i45.i, label %if.end.i46.i.pwm_disable.exit.i_crit_edge, label %if.end3.i48.i

if.end.i46.i.pwm_disable.exit.i_crit_edge:        ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_disable.exit.i

if.end3.i48.i:                                    ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %enabled.i44.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %enabled.i44.i, align 4
  %call.i47.i = call i32 @pwm_apply_state(ptr noundef nonnull %41, ptr noundef nonnull %state.i41.i) #6
  br label %pwm_disable.exit.i

pwm_disable.exit.i:                               ; preds = %if.end3.i48.i, %if.end.i46.i.pwm_disable.exit.i_crit_edge, %if.else.i.pwm_disable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i41.i) #6
  br label %if.end15

if.else:                                          ; preds = %if.end
  %50 = and i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.then9, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bl_dev, align 8
  %conv = trunc i32 %53 to i8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call13 = tail call i32 @lp8788_write_byte(ptr noundef %55, i8 noundef zeroext -105, i8 noundef zeroext %conv) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.else.if.end15_crit_edge, %pwm_disable.exit.i, %pwm_enable.exit.i, %do.end.i, %if.then4.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_get_bl_ctl_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode1 = getelementptr inbounds %struct.lp8788_bl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %4 = and i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %.str.19..str.20 = select i1 %5, ptr @.str.19, ptr @.str.20
  %strmode.0 = select i1 %cmp.i, ptr @.str.18, ptr %.str.19..str.20
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %strmode.0) #6
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_lp8788_bl__303_321_lp8788_bl_driver_init6, !1, !"__initcall__kmod_lp8788_bl__303_321_lp8788_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 321, i32 1}
!2 = !{ptr @__exitcall_lp8788_bl_driver_exit, !1, !"__exitcall_lp8788_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 323, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 324, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 325, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias308, !11, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 326, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 318, i32 11}
!14 = !{ptr @lp8788_bl_driver, !15, !"lp8788_bl_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 314, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 275, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lp8788_backlight_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lp8788_backlight_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 281, i32 3}
!26 = !{ptr @lp8788_backlight_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lp8788_backlight_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 287, i32 3}
!30 = !{ptr @lp8788_backlight_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lp8788_backlight_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 112, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lp8788_backlight_configure._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lp8788_backlight_configure._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"default_bl_config", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 51, i32 32}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 208, i32 10}
!41 = !{ptr @lp8788_bl_ops, !42, !"lp8788_bl_ops", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 181, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 139, i32 4}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @lp8788_pwm_ctrl._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @lp8788_pwm_ctrl._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @lp8788_attr_group, !49, !"lp8788_attr_group", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 253, i32 37}
!50 = !{ptr @lp8788_attributes, !51, !"lp8788_attributes", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 248, i32 26}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 246, i32 8}
!54 = !{ptr @dev_attr_bl_ctl_mode, !53, !"dev_attr_bl_ctl_mode", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 237, i32 13}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 239, i32 13}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 241, i32 13}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/backlight/lp8788_bl.c", i32 243, i32 35}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
