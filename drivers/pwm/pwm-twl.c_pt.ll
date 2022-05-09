; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-twl.c_pt.bc'
source_filename = "../drivers/pwm/pwm-twl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.twl_pwm_chip = type { %struct.pwm_chip, %struct.mutex, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_twl__223_381_twl_pwm_driver_init6 = internal global ptr @twl_pwm_driver_init, section ".initcall6.init", align 4
@twl_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl_pwm_driver_exit = internal global ptr @twl_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [54 x i8] c"pwm_twl.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [55 x i8] c"pwm_twl.description=PWM driver for TWL4030 and TWL6030\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [31 x i8] c"pwm_twl.alias=platform:twl-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [33 x i8] c"pwm_twl.file=drivers/pwm/pwm-twl\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [20 x i8] c"pwm_twl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl-pwm\00", [24 x i8] zeroinitializer }, align 32
@twl_pwm_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@twl4030_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @twl4030_pwm_request, ptr @twl4030_pwm_free, ptr null, ptr @twl4030_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@twl6030_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @twl6030_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@twl_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&twl->mutex\00", [20 x i8] zeroinitializer }, align 32
@twl4030_pwm_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to read PMBR1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_pwm_request\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pwm/pwm-twl.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_pwm_request._entry_ptr = internal global ptr @twl4030_pwm_request._entry, section ".printk_index", align 4
@twl4030_pwm_request._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed to request PWM\0A\00", [37 x i8] zeroinitializer }, align 32
@twl4030_pwm_request._entry_ptr.9 = internal global ptr @twl4030_pwm_request._entry.7, section ".printk_index", align 4
@twl4030_pwm_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.10, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl4030_pwm_free\00", [47 x i8] zeroinitializer }, align 32
@twl4030_pwm_free._entry_ptr = internal global ptr @twl4030_pwm_free._entry, section ".printk_index", align 4
@twl4030_pwm_free._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Failed to free PWM\0A\00", [40 x i8] zeroinitializer }, align 32
@twl4030_pwm_free._entry_ptr.13 = internal global ptr @twl4030_pwm_free._entry.11, section ".printk_index", align 4
@twl4030_pwm_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to read GPBR1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_pwm_disable\00", [44 x i8] zeroinitializer }, align 32
@twl4030_pwm_disable._entry_ptr = internal global ptr @twl4030_pwm_disable._entry, section ".printk_index", align 4
@twl4030_pwm_disable._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed to disable PWM\0A\00", [37 x i8] zeroinitializer }, align 32
@twl4030_pwm_disable._entry_ptr.18 = internal global ptr @twl4030_pwm_disable._entry.16, section ".printk_index", align 4
@twl4030_pwm_disable._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 147, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@twl4030_pwm_disable._entry_ptr.20 = internal global ptr @twl4030_pwm_disable._entry.19, section ".printk_index", align 4
@twl_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to configure PWM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twl_pwm_config\00", [17 x i8] zeroinitializer }, align 32
@twl_pwm_config._entry_ptr = internal global ptr @twl_pwm_config._entry, section ".printk_index", align 4
@twl4030_pwm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.23, ptr @.str.4, i32 103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl4030_pwm_enable\00", [45 x i8] zeroinitializer }, align 32
@twl4030_pwm_enable._entry_ptr = internal global ptr @twl4030_pwm_enable._entry, section ".printk_index", align 4
@twl4030_pwm_enable._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 111, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to enable PWM\0A\00", [38 x i8] zeroinitializer }, align 32
@twl4030_pwm_enable._entry_ptr.26 = internal global ptr @twl4030_pwm_enable._entry.24, section ".printk_index", align 4
@twl4030_pwm_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@twl4030_pwm_enable._entry_ptr.28 = internal global ptr @twl4030_pwm_enable._entry.27, section ".printk_index", align 4
@twl6030_pwm_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str.4, i32 257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl6030_pwm_disable\00", [44 x i8] zeroinitializer }, align 32
@twl6030_pwm_disable._entry_ptr = internal global ptr @twl6030_pwm_disable._entry, section ".printk_index", align 4
@twl6030_pwm_disable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@twl6030_pwm_disable._entry_ptr.31 = internal global ptr @twl6030_pwm_disable._entry.30, section ".printk_index", align 4
@twl6030_pwm_disable._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str.4, i32 273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@twl6030_pwm_disable._entry_ptr.33 = internal global ptr @twl6030_pwm_disable._entry.32, section ".printk_index", align 4
@twl6030_pwm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.34, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl6030_pwm_enable\00", [45 x i8] zeroinitializer }, align 32
@twl6030_pwm_enable._entry_ptr = internal global ptr @twl6030_pwm_enable._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"twl_pwm_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 374, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 376, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"twl_pwm_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 366, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"twl4030_pwm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 332, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"twl6030_pwm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 339, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 360, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 170, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 184, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 205, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 215, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 133, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 141, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 147, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 89, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 103, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 111, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 117, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 257, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 265, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 273, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [25 x i8] c"../drivers/pwm/pwm-twl.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 234, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_twl_pwm_driver_exit, ptr @__initcall__kmod_pwm_twl__223_381_twl_pwm_driver_init6, ptr @twl4030_pwm_disable._entry, ptr @twl4030_pwm_disable._entry.16, ptr @twl4030_pwm_disable._entry.19, ptr @twl4030_pwm_disable._entry_ptr, ptr @twl4030_pwm_disable._entry_ptr.18, ptr @twl4030_pwm_disable._entry_ptr.20, ptr @twl4030_pwm_enable._entry, ptr @twl4030_pwm_enable._entry.24, ptr @twl4030_pwm_enable._entry.27, ptr @twl4030_pwm_enable._entry_ptr, ptr @twl4030_pwm_enable._entry_ptr.26, ptr @twl4030_pwm_enable._entry_ptr.28, ptr @twl4030_pwm_free._entry, ptr @twl4030_pwm_free._entry.11, ptr @twl4030_pwm_free._entry_ptr, ptr @twl4030_pwm_free._entry_ptr.13, ptr @twl4030_pwm_request._entry, ptr @twl4030_pwm_request._entry.7, ptr @twl4030_pwm_request._entry_ptr, ptr @twl4030_pwm_request._entry_ptr.9, ptr @twl6030_pwm_disable._entry, ptr @twl6030_pwm_disable._entry.30, ptr @twl6030_pwm_disable._entry.32, ptr @twl6030_pwm_disable._entry_ptr, ptr @twl6030_pwm_disable._entry_ptr.31, ptr @twl6030_pwm_disable._entry_ptr.33, ptr @twl6030_pwm_enable._entry, ptr @twl6030_pwm_enable._entry_ptr, ptr @twl_pwm_config._entry, ptr @twl_pwm_config._entry_ptr, ptr @twl_pwm_driver_exit, ptr @twl_pwm_driver, ptr @.str, ptr @twl_pwm_of_match, ptr @twl4030_pwm_ops, ptr @twl6030_pwm_ops, ptr @twl_pwm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.29, ptr @.str.34], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwm_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_request._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_free._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_disable._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_disable._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_enable._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwm_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwm_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwm_disable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwm_disable._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i22 = tail call i32 @twl_rev() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16432, i32 %call.i22)
  %cmp.i.not = icmp eq i32 %call.i22, 16432
  %spec.select = select i1 %cmp.i.not, ptr @twl4030_pwm_ops, ptr @twl6030_pwm_ops
  %0 = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select, ptr %0, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %npwm, align 4
  %mutex = getelementptr inbounds %struct.twl_pwm_chip, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @twl_pwm_probe.__key) #5
  %call13 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_pwm_request(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !96
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %1 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwpwm, align 8
  %mutex = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %val, i8 noundef zeroext 13, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %entry.out.sink.split_crit_edge, label %if.end4

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %.44 = select i1 %cmp, i8 48, i8 4
  %twl4030_pwm_mux = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %twl4030_pwm_mux to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %twl4030_pwm_mux, align 1
  %5 = select i1 %cmp, i8 48, i8 12
  %6 = xor i8 %5, -1
  %conv6 = and i8 %4, %6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %9 = and i8 %8, %5
  %conv12 = or i8 %9, %conv6
  store i8 %conv12, ptr %twl4030_pwm_mux, align 1
  %conv17 = and i8 %8, %6
  %or20 = or i8 %conv17, %.44
  store i8 %or20, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %10 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or20, ptr %val.addr.i, align 1
  %call.i45 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 13, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp23 = icmp slt i32 %call.i45, 0
  br i1 %cmp23, label %if.end4.out.sink.split_crit_edge, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4.out.sink.split_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end4.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.2, %entry.out.sink.split_crit_edge ], [ @.str.8, %if.end4.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %entry.out.sink.split_crit_edge ], [ %call.i45, %if.end4.out.sink.split_crit_edge ]
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.8.sink, ptr noundef %14) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end4.out_crit_edge
  %ret.0 = phi i32 [ %call.i45, %if.end4.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_pwm_free(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !96
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %1 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwpwm, align 8
  %mutex = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %val, i8 noundef zeroext 13, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %entry.out.sink.split_crit_edge, label %if.end4

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %. = select i1 %cmp, i8 48, i8 12
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = xor i8 %., -1
  %conv6 = and i8 %4, %5
  %twl4030_pwm_mux = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %twl4030_pwm_mux to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %twl4030_pwm_mux, align 1
  %8 = and i8 %7, %.
  %conv11 = or i8 %8, %conv6
  store i8 %conv11, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %9 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %val.addr.i, align 1
  %call.i31 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 13, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp13 = icmp slt i32 %call.i31, 0
  br i1 %cmp13, label %if.end4.out.sink.split_crit_edge, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4.out.sink.split_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end4.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.2, %entry.out.sink.split_crit_edge ], [ @.str.12, %if.end4.out.sink.split_crit_edge ]
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %12 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %.str.12.sink, ptr noundef %13) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end4.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %val.addr.i41.i31 = alloca i8, align 1
  %val.addr.i.i32 = alloca i8, align 1
  %val.i33 = alloca i8, align 1
  %pwm_config.i = alloca [2 x i8], align 2
  %val.addr.i41.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %enabled3 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %enabled3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled3, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then1.cleanup_crit_edge, label %if.then5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i, align 1, !annotation !96
  %mutex.i = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %val.i, i8 noundef zeroext 12, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then5.out.sink.split.i_crit_edge, label %if.end.i

if.then5.out.sink.split.i_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end.i:                                         ; preds = %if.then5
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %7 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwpwm.i, align 8
  %shl.i = shl i32 4, %8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i, align 1
  %11 = trunc i32 %shl.i to i8
  %12 = xor i8 %11, -1
  %conv2.i = and i8 %10, %12
  store i8 %conv2.i, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %13 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2.i, ptr %val.addr.i.i, align 1
  %call.i40.i = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 12, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %cmp4.i = icmp slt i32 %call.i40.i, 0
  br i1 %cmp4.i, label %do.end9.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef %17) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end9.i, %if.end.i.if.end12.i_crit_edge
  %18 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwpwm.i, align 8
  %shl14.i = shl nuw i32 1, %19
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  %22 = trunc i32 %shl14.i to i8
  %23 = xor i8 %22, -1
  %conv18.i = and i8 %21, %23
  store i8 %conv18.i, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i41.i) #5
  %24 = ptrtoint ptr %val.addr.i41.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv18.i, ptr %val.addr.i41.i, align 1
  %call.i42.i = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i41.i, i8 noundef zeroext 12, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp20.i = icmp slt i32 %call.i42.i, 0
  br i1 %cmp20.i, label %if.end12.i.out.sink.split.i_crit_edge, label %if.end12.i.twl4030_pwm_disable.exit_crit_edge

if.end12.i.twl4030_pwm_disable.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_pwm_disable.exit

if.end12.i.out.sink.split.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.end12.i.out.sink.split.i_crit_edge, %if.then5.out.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.14, %if.then5.out.sink.split.i_crit_edge ], [ @.str.17, %if.end12.i.out.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull %.str.17.sink.i, ptr noundef %28) #8
  br label %twl4030_pwm_disable.exit

twl4030_pwm_disable.exit:                         ; preds = %out.sink.split.i, %if.end12.i.twl4030_pwm_disable.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %chip8 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %29 = ptrtoint ptr %chip8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip8, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %31 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %duty_cycle, align 8
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %state, align 8
  %mul.i = mul i64 %32, 127
  %add.i = add i64 %34, -1
  %sub.i = add i64 %add.i, %mul.i
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %34) #5
  %35 = trunc i64 %call.i to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwm_config.i) #5
  %36 = ptrtoint ptr %pwm_config.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 256, ptr %pwm_config.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i29 = icmp eq i32 %35, 0
  %conv.i = add i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv.i)
  %cmp3.i = icmp sgt i32 %conv.i, 127
  %37 = trunc i32 %conv.i to i8
  %phi.cast.i = select i1 %cmp3.i, i8 1, i8 %37
  %duty_cycle.0.i = select i1 %cmp.i29, i8 2, i8 %phi.cast.i
  %hwpwm.i30 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %38 = ptrtoint ptr %hwpwm.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwpwm.i30, align 8
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %pwm_config.i, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %duty_cycle.0.i, ptr %arrayidx.i, align 1
  %41 = trunc i32 %39 to i8
  %conv9.i = mul i8 %41, 3
  %call10.i = call i32 @twl_i2c_write(i8 noundef zeroext 6, ptr noundef nonnull %pwm_config.i, i8 noundef zeroext %conv9.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %twl_pwm_config.exit.thread, label %twl_pwm_config.exit

twl_pwm_config.exit.thread:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %30, align 4
  %44 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.21, ptr noundef %45) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwm_config.i) #5
  br label %cleanup

twl_pwm_config.exit:                              ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwm_config.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool9.not = icmp eq i32 %call10.i, 0
  br i1 %tobool9.not, label %if.end11, label %twl_pwm_config.exit.cleanup_crit_edge

twl_pwm_config.exit.cleanup_crit_edge:            ; preds = %twl_pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %twl_pwm_config.exit
  %enabled13 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %46 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enabled13, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool14.not = icmp eq i8 %47, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i33) #5
  %48 = ptrtoint ptr %val.i33 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %val.i33, align 1, !annotation !96
  %mutex.i34 = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i34, i32 noundef 0) #5
  %call.i.i35 = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %val.i33, i8 noundef zeroext 12, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %if.then15.out.sink.split.i47_crit_edge, label %if.end.i42

if.then15.out.sink.split.i47_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i47

if.end.i42:                                       ; preds = %if.then15
  %49 = ptrtoint ptr %hwpwm.i30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hwpwm.i30, align 8
  %shl.i38 = shl nuw i32 1, %50
  %51 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val.i33, align 1
  %53 = trunc i32 %shl.i38 to i8
  %conv2.i39 = or i8 %52, %53
  store i8 %conv2.i39, ptr %val.i33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i32) #5
  %54 = ptrtoint ptr %val.addr.i.i32 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv2.i39, ptr %val.addr.i.i32, align 1
  %call.i40.i40 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i.i32, i8 noundef zeroext 12, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i40)
  %cmp4.i41 = icmp slt i32 %call.i40.i40, 0
  br i1 %cmp4.i41, label %do.end9.i43, label %if.end.i42.if.end12.i46_crit_edge

if.end.i42.if.end12.i46_crit_edge:                ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i46

do.end9.i43:                                      ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %57 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.25, ptr noundef %58) #8
  br label %if.end12.i46

if.end12.i46:                                     ; preds = %do.end9.i43, %if.end.i42.if.end12.i46_crit_edge
  %59 = ptrtoint ptr %hwpwm.i30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hwpwm.i30, align 8
  %shl14.i44 = shl i32 4, %60
  %61 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %val.i33, align 1
  %63 = trunc i32 %shl14.i44 to i8
  %conv17.i = or i8 %62, %63
  store i8 %conv17.i, ptr %val.i33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i41.i31) #5
  %64 = ptrtoint ptr %val.addr.i41.i31 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv17.i, ptr %val.addr.i41.i31, align 1
  %call.i42.i45 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i41.i31, i8 noundef zeroext 12, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i41.i31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i45)
  %cmp19.i = icmp slt i32 %call.i42.i45, 0
  br i1 %cmp19.i, label %if.end12.i46.out.sink.split.i47_crit_edge, label %if.end12.i46.twl4030_pwm_enable.exit_crit_edge

if.end12.i46.twl4030_pwm_enable.exit_crit_edge:   ; preds = %if.end12.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_pwm_enable.exit

if.end12.i46.out.sink.split.i47_crit_edge:        ; preds = %if.end12.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i47

out.sink.split.i47:                               ; preds = %if.end12.i46.out.sink.split.i47_crit_edge, %if.then15.out.sink.split.i47_crit_edge
  %.str.25.sink.i = phi ptr [ @.str.14, %if.then15.out.sink.split.i47_crit_edge ], [ @.str.25, %if.end12.i46.out.sink.split.i47_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call.i.i35, %if.then15.out.sink.split.i47_crit_edge ], [ %call.i42.i45, %if.end12.i46.out.sink.split.i47_crit_edge ]
  %65 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip, align 4
  %67 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull %.str.25.sink.i, ptr noundef %68) #8
  br label %twl4030_pwm_enable.exit

twl4030_pwm_enable.exit:                          ; preds = %out.sink.split.i47, %if.end12.i46.twl4030_pwm_enable.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i42.i45, %if.end12.i46.twl4030_pwm_enable.exit_crit_edge ], [ %ret.0.ph.i, %out.sink.split.i47 ]
  call void @mutex_unlock(ptr noundef %mutex.i34) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i33) #5
  br label %cleanup

cleanup:                                          ; preds = %twl4030_pwm_enable.exit, %if.end11.cleanup_crit_edge, %twl_pwm_config.exit.cleanup_crit_edge, %twl_pwm_config.exit.thread, %twl4030_pwm_disable.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %twl4030_pwm_disable.exit ], [ 0, %if.then1.cleanup_crit_edge ], [ %call10.i, %twl_pwm_config.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %ret.0.i, %twl4030_pwm_enable.exit ], [ %call10.i, %twl_pwm_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %val.addr.i.i33 = alloca i8, align 1
  %pwm_config.i = alloca [2 x i8], align 2
  %val.addr.i67.i = alloca i8, align 1
  %val.addr.i65.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %enabled3 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %enabled3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled3, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then1.cleanup_crit_edge, label %if.then5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.then1
  %mutex.i = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %twl6030_toggle3.i = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %twl6030_toggle3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %twl6030_toggle3.i, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %8 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm.i, align 8
  %mul.i = mul i32 %9, 3
  %shl.i = shl nuw i32 1, %mul.i
  %10 = trunc i32 %shl.i to i8
  %conv1.i = or i8 %7, %10
  %shl4.i = shl i32 6, %mul.i
  %11 = trunc i32 %shl4.i to i8
  %12 = xor i8 %11, -1
  %conv6.i = and i8 %conv1.i, %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %13 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext -110, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef %17) #8
  br label %twl6030_pwm_disable.exit

if.end.i:                                         ; preds = %if.then5
  %18 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwpwm.i, align 8
  %mul10.i = mul i32 %19, 3
  %shl11.i = shl i32 4, %mul10.i
  %20 = trunc i32 %shl11.i to i8
  %conv14.i = or i8 %conv6.i, %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i65.i) #5
  %21 = ptrtoint ptr %val.addr.i65.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv14.i, ptr %val.addr.i65.i, align 1
  %call.i66.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i65.i, i8 noundef zeroext -110, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i65.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp16.i = icmp slt i32 %call.i66.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.end24.i

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %24 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef %25) #8
  br label %twl6030_pwm_disable.exit

if.end24.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwpwm.i, align 8
  %mul26.i = mul i32 %27, 3
  %shl27.i = shl i32 4, %mul26.i
  %28 = trunc i32 %shl27.i to i8
  %29 = xor i8 %28, -1
  %conv31.i = and i8 %conv14.i, %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i67.i) #5
  %30 = ptrtoint ptr %val.addr.i67.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv31.i, ptr %val.addr.i67.i, align 1
  %call.i68.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i67.i, i8 noundef zeroext -110, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i67.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %cmp33.i = icmp slt i32 %call.i68.i, 0
  br i1 %cmp33.i, label %do.end38.i, label %if.end41.i

do.end38.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %33 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.17, ptr noundef %34) #8
  br label %twl6030_pwm_disable.exit

if.end41.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %twl6030_toggle3.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv31.i, ptr %twl6030_toggle3.i, align 4
  br label %twl6030_pwm_disable.exit

twl6030_pwm_disable.exit:                         ; preds = %if.end41.i, %do.end38.i, %do.end21.i, %do.end.i
  call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %chip8 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %36 = ptrtoint ptr %chip8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip8, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %38 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %duty_cycle, align 8
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %state, align 8
  %mul.i29 = mul i64 %39, 127
  %add.i = add i64 %41, -1
  %sub.i = add i64 %add.i, %mul.i29
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %41) #5
  %42 = trunc i64 %call.i to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwm_config.i) #5
  %43 = ptrtoint ptr %pwm_config.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 256, ptr %pwm_config.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i30 = icmp eq i32 %42, 0
  %conv.i = add i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv.i)
  %cmp3.i = icmp sgt i32 %conv.i, 127
  %44 = trunc i32 %conv.i to i8
  %phi.cast.i = select i1 %cmp3.i, i8 1, i8 %44
  %duty_cycle.0.i = select i1 %cmp.i30, i8 2, i8 %phi.cast.i
  %hwpwm.i31 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %45 = ptrtoint ptr %hwpwm.i31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwpwm.i31, align 8
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %pwm_config.i, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %duty_cycle.0.i, ptr %arrayidx.i, align 1
  %48 = trunc i32 %46 to i8
  %conv9.i = mul i8 %48, 3
  %call10.i = call i32 @twl_i2c_write(i8 noundef zeroext 6, ptr noundef nonnull %pwm_config.i, i8 noundef zeroext %conv9.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %twl_pwm_config.exit.thread, label %twl_pwm_config.exit

twl_pwm_config.exit.thread:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %37, align 4
  %51 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.21, ptr noundef %52) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwm_config.i) #5
  br label %cleanup

twl_pwm_config.exit:                              ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwm_config.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool9.not = icmp eq i32 %call10.i, 0
  br i1 %tobool9.not, label %if.end11, label %twl_pwm_config.exit.cleanup_crit_edge

twl_pwm_config.exit.cleanup_crit_edge:            ; preds = %twl_pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %twl_pwm_config.exit
  %enabled13 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enabled13, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool14.not = icmp eq i8 %54, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  %mutex.i34 = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i34, i32 noundef 0) #5
  %twl6030_toggle3.i35 = getelementptr inbounds %struct.twl_pwm_chip, ptr %chip, i32 0, i32 2
  %55 = ptrtoint ptr %twl6030_toggle3.i35 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %twl6030_toggle3.i35, align 4
  %57 = ptrtoint ptr %hwpwm.i31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hwpwm.i31, align 8
  %mul.i37 = mul i32 %58, 3
  %shl.i38 = shl i32 6, %mul.i37
  %59 = trunc i32 %shl.i38 to i8
  %conv1.i39 = or i8 %56, %59
  %shl4.i40 = shl nuw i32 1, %mul.i37
  %60 = trunc i32 %shl4.i40 to i8
  %61 = xor i8 %60, -1
  %conv6.i41 = and i8 %conv1.i39, %61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i33) #5
  %62 = ptrtoint ptr %val.addr.i.i33 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv6.i41, ptr %val.addr.i.i33, align 1
  %call.i.i42 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i33, i8 noundef zeroext -110, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp.i43, label %do.end.i44, label %if.end.i45

do.end.i44:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %65 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.25, ptr noundef %66) #8
  br label %twl6030_pwm_enable.exit

if.end.i45:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %twl6030_toggle3.i35 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv6.i41, ptr %twl6030_toggle3.i35, align 4
  br label %twl6030_pwm_enable.exit

twl6030_pwm_enable.exit:                          ; preds = %if.end.i45, %do.end.i44
  call void @mutex_unlock(ptr noundef %mutex.i34) #5
  br label %cleanup

cleanup:                                          ; preds = %twl6030_pwm_enable.exit, %if.end11.cleanup_crit_edge, %twl_pwm_config.exit.cleanup_crit_edge, %twl_pwm_config.exit.thread, %twl6030_pwm_disable.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %twl6030_pwm_disable.exit ], [ 0, %if.then1.cleanup_crit_edge ], [ %call10.i, %twl_pwm_config.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call.i.i42, %twl6030_pwm_enable.exit ], [ %call10.i, %twl_pwm_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_pwm_twl__223_381_twl_pwm_driver_init6, !1, !"__initcall__kmod_pwm_twl__223_381_twl_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-twl.c", i32 381, i32 1}
!2 = !{ptr @__exitcall_twl_pwm_driver_exit, !1, !"__exitcall_twl_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-twl.c", i32 383, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-twl.c", i32 384, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias226, !8, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-twl.c", i32 385, i32 1}
!9 = !{ptr @__UNIQUE_ID_file227, !10, !"__UNIQUE_ID_file227", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-twl.c", i32 386, i32 1}
!11 = !{ptr @__UNIQUE_ID_license228, !10, !"__UNIQUE_ID_license228", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-twl.c", i32 376, i32 11}
!14 = !{ptr @twl_pwm_driver, !15, !"twl_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-twl.c", i32 374, i32 31}
!16 = !{ptr @twl_pwm_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-twl.c", i32 360, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @twl4030_pwm_ops, !20, !"twl4030_pwm_ops", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-twl.c", i32 332, i32 29}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pwm/pwm-twl.c", i32 170, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @twl4030_pwm_request._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @twl4030_pwm_request._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-twl.c", i32 184, i32 3}
!31 = !{ptr @twl4030_pwm_request._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @twl4030_pwm_request._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-twl.c", i32 205, i32 3}
!35 = !{ptr @twl4030_pwm_free._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @twl4030_pwm_free._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-twl.c", i32 215, i32 3}
!39 = !{ptr @twl4030_pwm_free._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @twl4030_pwm_free._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-twl.c", i32 133, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @twl4030_pwm_disable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @twl4030_pwm_disable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-twl.c", i32 141, i32 3}
!48 = !{ptr @twl4030_pwm_disable._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @twl4030_pwm_disable._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @twl4030_pwm_disable._entry.19, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/pwm/pwm-twl.c", i32 147, i32 3}
!52 = !{ptr @twl4030_pwm_disable._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pwm/pwm-twl.c", i32 89, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @twl_pwm_config._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @twl_pwm_config._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pwm/pwm-twl.c", i32 103, i32 3}
!60 = !{ptr @twl4030_pwm_enable._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @twl4030_pwm_enable._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-twl.c", i32 111, i32 3}
!64 = !{ptr @twl4030_pwm_enable._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @twl4030_pwm_enable._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @twl4030_pwm_enable._entry.27, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/pwm/pwm-twl.c", i32 117, i32 3}
!68 = !{ptr @twl4030_pwm_enable._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @twl6030_pwm_ops, !70, !"twl6030_pwm_ops", i1 false, i1 false}
!70 = !{!"../drivers/pwm/pwm-twl.c", i32 339, i32 29}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pwm/pwm-twl.c", i32 257, i32 3}
!73 = !{ptr @twl6030_pwm_disable._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @twl6030_pwm_disable._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @twl6030_pwm_disable._entry.30, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/pwm/pwm-twl.c", i32 265, i32 3}
!77 = !{ptr @twl6030_pwm_disable._entry_ptr.31, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @twl6030_pwm_disable._entry.32, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/pwm/pwm-twl.c", i32 273, i32 3}
!80 = !{ptr @twl6030_pwm_disable._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pwm/pwm-twl.c", i32 234, i32 3}
!83 = !{ptr @twl6030_pwm_enable._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @twl6030_pwm_enable._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @twl_pwm_of_match, !86, !"twl_pwm_of_match", i1 false, i1 false}
!86 = !{!"../drivers/pwm/pwm-twl.c", i32 366, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i8 0, i8 2}
