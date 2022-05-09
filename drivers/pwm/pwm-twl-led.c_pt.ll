; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-twl-led.c_pt.bc'
source_filename = "../drivers/pwm/pwm-twl-led.c"
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
%struct.twl_pwmled_chip = type { %struct.pwm_chip, %struct.mutex }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_twl_led__223_315_twl_pwmled_driver_init6 = internal global ptr @twl_pwmled_driver_init, section ".initcall6.init", align 4
@twl_pwmled_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl_pwmled_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_pwmled_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl_pwmled_driver_exit = internal global ptr @twl_pwmled_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [58 x i8] c"pwm_twl_led.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [71 x i8] c"pwm_twl_led.description=PWM driver for TWL4030 and TWL6030 LED outputs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [38 x i8] c"pwm_twl_led.alias=platform:twl-pwmled\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [41 x i8] c"pwm_twl_led.file=drivers/pwm/pwm-twl-led\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [24 x i8] c"pwm_twl_led.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"twl-pwmled\00", [21 x i8] zeroinitializer }, align 32
@twl_pwmled_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-pwmled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-pwmled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@twl4030_pwmled_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_pwmled_config, ptr null, ptr @twl4030_pwmled_enable, ptr @twl4030_pwmled_disable }, [56 x i8] zeroinitializer }, align 32
@twl6030_pwmled_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @twl6030_pwmled_request, ptr @twl6030_pwmled_free, ptr null, ptr null, ptr null, ptr null, ptr @twl6030_pwmled_config, ptr null, ptr @twl6030_pwmled_enable, ptr @twl6030_pwmled_disable }, [56 x i8] zeroinitializer }, align 32
@twl_pwmled_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&twl->mutex\00", [20 x i8] zeroinitializer }, align 32
@twl4030_pwmled_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to configure PWM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_pwmled_config\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pwm/pwm-twl-led.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_pwmled_config._entry_ptr = internal global ptr @twl4030_pwmled_config._entry, section ".printk_index", align 4
@twl4030_pwmled_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to read LEDEN\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_pwmled_enable\00", [42 x i8] zeroinitializer }, align 32
@twl4030_pwmled_enable._entry_ptr = internal global ptr @twl4030_pwmled_enable._entry, section ".printk_index", align 4
@twl4030_pwmled_enable._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to enable PWM\0A\00", [38 x i8] zeroinitializer }, align 32
@twl4030_pwmled_enable._entry_ptr.11 = internal global ptr @twl4030_pwmled_enable._entry.9, section ".printk_index", align 4
@twl4030_pwmled_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl4030_pwmled_disable\00", [41 x i8] zeroinitializer }, align 32
@twl4030_pwmled_disable._entry_ptr = internal global ptr @twl4030_pwmled_disable._entry, section ".printk_index", align 4
@twl4030_pwmled_disable._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed to disable PWM\0A\00", [37 x i8] zeroinitializer }, align 32
@twl4030_pwmled_disable._entry_ptr.15 = internal global ptr @twl4030_pwmled_disable._entry.13, section ".printk_index", align 4
@twl6030_pwmled_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to read PWM_CTRL2\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl6030_pwmled_request\00", [41 x i8] zeroinitializer }, align 32
@twl6030_pwmled_request._entry_ptr = internal global ptr @twl6030_pwmled_request._entry, section ".printk_index", align 4
@twl6030_pwmled_request._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed to request PWM\0A\00", [37 x i8] zeroinitializer }, align 32
@twl6030_pwmled_request._entry_ptr.20 = internal global ptr @twl6030_pwmled_request._entry.18, section ".printk_index", align 4
@twl6030_pwmled_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.21, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl6030_pwmled_free\00", [44 x i8] zeroinitializer }, align 32
@twl6030_pwmled_free._entry_ptr = internal global ptr @twl6030_pwmled_free._entry, section ".printk_index", align 4
@twl6030_pwmled_free._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Failed to free PWM\0A\00", [40 x i8] zeroinitializer }, align 32
@twl6030_pwmled_free._entry_ptr.24 = internal global ptr @twl6030_pwmled_free._entry.22, section ".printk_index", align 4
@twl6030_pwmled_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.25, ptr @.str.4, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl6030_pwmled_config\00", [42 x i8] zeroinitializer }, align 32
@twl6030_pwmled_config._entry_ptr = internal global ptr @twl6030_pwmled_config._entry, section ".printk_index", align 4
@twl6030_pwmled_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.26, ptr @.str.4, i32 167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl6030_pwmled_enable\00", [42 x i8] zeroinitializer }, align 32
@twl6030_pwmled_enable._entry_ptr = internal global ptr @twl6030_pwmled_enable._entry, section ".printk_index", align 4
@twl6030_pwmled_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.26, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@twl6030_pwmled_enable._entry_ptr.28 = internal global ptr @twl6030_pwmled_enable._entry.27, section ".printk_index", align 4
@twl6030_pwmled_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.29, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl6030_pwmled_disable\00", [41 x i8] zeroinitializer }, align 32
@twl6030_pwmled_disable._entry_ptr = internal global ptr @twl6030_pwmled_disable._entry, section ".printk_index", align 4
@twl6030_pwmled_disable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.29, ptr @.str.4, i32 203, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@twl6030_pwmled_disable._entry_ptr.31 = internal global ptr @twl6030_pwmled_disable._entry.30, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"twl_pwmled_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 308, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 310, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"twl_pwmled_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 300, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"twl4030_pwmled_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 260, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"twl6030_pwmled_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 267, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 294, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 87, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 101, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 109, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 126, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 134, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 218, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 228, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 244, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 254, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 152, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 166, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 176, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 193, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private constant [29 x i8] c"../drivers/pwm/pwm-twl-led.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 203, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_twl_pwmled_driver_exit, ptr @__initcall__kmod_pwm_twl_led__223_315_twl_pwmled_driver_init6, ptr @twl4030_pwmled_config._entry, ptr @twl4030_pwmled_config._entry_ptr, ptr @twl4030_pwmled_disable._entry, ptr @twl4030_pwmled_disable._entry.13, ptr @twl4030_pwmled_disable._entry_ptr, ptr @twl4030_pwmled_disable._entry_ptr.15, ptr @twl4030_pwmled_enable._entry, ptr @twl4030_pwmled_enable._entry.9, ptr @twl4030_pwmled_enable._entry_ptr, ptr @twl4030_pwmled_enable._entry_ptr.11, ptr @twl6030_pwmled_config._entry, ptr @twl6030_pwmled_config._entry_ptr, ptr @twl6030_pwmled_disable._entry, ptr @twl6030_pwmled_disable._entry.30, ptr @twl6030_pwmled_disable._entry_ptr, ptr @twl6030_pwmled_disable._entry_ptr.31, ptr @twl6030_pwmled_enable._entry, ptr @twl6030_pwmled_enable._entry.27, ptr @twl6030_pwmled_enable._entry_ptr, ptr @twl6030_pwmled_enable._entry_ptr.28, ptr @twl6030_pwmled_free._entry, ptr @twl6030_pwmled_free._entry.22, ptr @twl6030_pwmled_free._entry_ptr, ptr @twl6030_pwmled_free._entry_ptr.24, ptr @twl6030_pwmled_request._entry, ptr @twl6030_pwmled_request._entry.18, ptr @twl6030_pwmled_request._entry_ptr, ptr @twl6030_pwmled_request._entry_ptr.20, ptr @twl_pwmled_driver_exit, ptr @twl_pwmled_driver, ptr @.str, ptr @twl_pwmled_of_match, ptr @twl4030_pwmled_ops, ptr @twl6030_pwmled_ops, ptr @twl_pwmled_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwmled_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwmled_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwmled_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pwmled_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwmled_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwmled_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwmled_enable._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwmled_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_pwmled_disable._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_request._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_free._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pwmled_disable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_pwmled_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl_pwmled_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl_pwmled_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl_pwmled_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_pwmled_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i25 = tail call i32 @twl_rev() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16432, i32 %call.i25)
  %cmp.i.not = icmp eq i32 %call.i25, 16432
  %spec.select = select i1 %cmp.i.not, ptr @twl4030_pwmled_ops, ptr @twl6030_pwmled_ops
  %spec.select26 = select i1 %cmp.i.not, i32 2, i32 1
  %0 = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select, ptr %0, align 4
  %2 = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select26, ptr %2, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @twl_pwmled_probe.__key) #5
  %call15 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end ], [ -12, %entry.cleanup_crit_edge ]
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
define internal i32 @twl4030_pwmled_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  %pwm_config = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %duty_ns, 127
  %add = add i32 %period_ns, -1
  %sub = add i32 %add, %mul
  %div = sdiv i32 %sub, %period_ns
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwm_config) #5
  %0 = ptrtoint ptr %pwm_config to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %pwm_config, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp = icmp eq i32 %div, 0
  %add1 = add i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add1)
  %cmp2 = icmp sgt i32 %add1, 127
  %1 = trunc i32 %add1 to i8
  %phi.cast = select i1 %cmp2, i8 1, i8 %1
  %duty_cycle.0 = select i1 %cmp, i8 2, i8 %phi.cast
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr inbounds [2 x i8], ptr %pwm_config, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %duty_cycle.0, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %5 = shl i8 %.tr, 1
  %conv7 = or i8 %5, 1
  %call = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %pwm_config, i8 noundef zeroext %conv7, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %do.end, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef %9) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwm_config) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_pwmled_enable(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !94
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 7, ptr noundef nonnull %val, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %1 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwpwm, align 8
  %shl = shl i32 17, %2
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = trunc i32 %shl to i8
  %conv2 = or i8 %4, %5
  store i8 %conv2, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %6 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %val.addr.i, align 1
  %call.i21 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp4 = icmp slt i32 %call.i21, 0
  br i1 %cmp4, label %if.end.out.sink.split_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.7, %entry.out.sink.split_crit_edge ], [ @.str.10, %if.end.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %entry.out.sink.split_crit_edge ], [ %call.i21, %if.end.out.sink.split_crit_edge ]
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %.str.10.sink, ptr noundef %10) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i21, %if.end.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_pwmled_disable(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !94
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 7, ptr noundef nonnull %val, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %1 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwpwm, align 8
  %shl = shl i32 17, %2
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = trunc i32 %shl to i8
  %6 = xor i8 %5, -1
  %conv2 = and i8 %4, %6
  store i8 %conv2, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %7 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %val.addr.i, align 1
  %call.i20 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp4 = icmp slt i32 %call.i20, 0
  br i1 %cmp4, label %if.end.out.sink.split_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.7, %entry.out.sink.split_crit_edge ], [ @.str.14, %if.end.out.sink.split_crit_edge ]
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull %.str.14.sink, ptr noundef %11) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_pwmled_request(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !94
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %val, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %val.addr.i, align 1
  %call.i22 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp6 = icmp slt i32 %call.i22, 0
  br i1 %cmp6, label %if.end.out.sink.split_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.16, %entry.out.sink.split_crit_edge ], [ @.str.19, %if.end.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %entry.out.sink.split_crit_edge ], [ %call.i22, %if.end.out.sink.split_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %.str.19.sink, ptr noundef %9) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i22, %if.end.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6030_pwmled_free(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !94
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %val, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -4
  store i8 %3, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %4 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %val.addr.i, align 1
  %call.i21 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp6 = icmp slt i32 %call.i21, 0
  br i1 %cmp6, label %if.end.out.sink.split_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.16, %entry.out.sink.split_crit_edge ], [ @.str.23, %if.end.out.sink.split_crit_edge ]
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %.str.23.sink, ptr noundef %8) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_pwmled_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %duty_ns, 255
  %div = sdiv i32 %mul, %period_ns
  %conv = trunc i32 %div to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -12, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_pwmled_enable(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !94
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %val, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 1
  store i8 %4, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %val.addr.i, align 1
  %call.i22 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp6 = icmp slt i32 %call.i22, 0
  br i1 %cmp6, label %if.end.out.sink.split_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.16, %entry.out.sink.split_crit_edge ], [ @.str.10, %if.end.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %entry.out.sink.split_crit_edge ], [ %call.i22, %if.end.out.sink.split_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %.str.10.sink, ptr noundef %9) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i22, %if.end.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6030_pwmled_disable(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !94
  %mutex = getelementptr inbounds %struct.twl_pwmled_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %val, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %val.addr.i, align 1
  %call.i21 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp6 = icmp slt i32 %call.i21, 0
  br i1 %cmp6, label %if.end.out.sink.split_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.16, %entry.out.sink.split_crit_edge ], [ @.str.14, %if.end.out.sink.split_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %.str.14.sink, ptr noundef %9) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_pwm_twl_led__223_315_twl_pwmled_driver_init6, !1, !"__initcall__kmod_pwm_twl_led__223_315_twl_pwmled_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-twl-led.c", i32 315, i32 1}
!2 = !{ptr @__exitcall_twl_pwmled_driver_exit, !1, !"__exitcall_twl_pwmled_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-twl-led.c", i32 317, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-twl-led.c", i32 318, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias226, !8, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-twl-led.c", i32 319, i32 1}
!9 = !{ptr @__UNIQUE_ID_file227, !10, !"__UNIQUE_ID_file227", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-twl-led.c", i32 320, i32 1}
!11 = !{ptr @__UNIQUE_ID_license228, !10, !"__UNIQUE_ID_license228", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-twl-led.c", i32 310, i32 11}
!14 = !{ptr @twl_pwmled_driver, !15, !"twl_pwmled_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-twl-led.c", i32 308, i32 31}
!16 = !{ptr @twl_pwmled_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-twl-led.c", i32 294, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @twl4030_pwmled_ops, !20, !"twl4030_pwmled_ops", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-twl-led.c", i32 260, i32 29}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pwm/pwm-twl-led.c", i32 87, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @twl4030_pwmled_config._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @twl4030_pwmled_config._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-twl-led.c", i32 101, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @twl4030_pwmled_enable._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @twl4030_pwmled_enable._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-twl-led.c", i32 109, i32 3}
!36 = !{ptr @twl4030_pwmled_enable._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @twl4030_pwmled_enable._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-twl-led.c", i32 126, i32 3}
!40 = !{ptr @twl4030_pwmled_disable._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @twl4030_pwmled_disable._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-twl-led.c", i32 134, i32 3}
!44 = !{ptr @twl4030_pwmled_disable._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @twl4030_pwmled_disable._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @twl6030_pwmled_ops, !47, !"twl6030_pwmled_ops", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-twl-led.c", i32 267, i32 29}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pwm/pwm-twl-led.c", i32 218, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @twl6030_pwmled_request._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @twl6030_pwmled_request._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pwm/pwm-twl-led.c", i32 228, i32 3}
!55 = !{ptr @twl6030_pwmled_request._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @twl6030_pwmled_request._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pwm/pwm-twl-led.c", i32 244, i32 3}
!59 = !{ptr @twl6030_pwmled_free._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @twl6030_pwmled_free._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pwm/pwm-twl-led.c", i32 254, i32 3}
!63 = !{ptr @twl6030_pwmled_free._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @twl6030_pwmled_free._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pwm/pwm-twl-led.c", i32 152, i32 3}
!67 = !{ptr @twl6030_pwmled_config._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @twl6030_pwmled_config._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pwm/pwm-twl-led.c", i32 166, i32 3}
!71 = !{ptr @twl6030_pwmled_enable._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @twl6030_pwmled_enable._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @twl6030_pwmled_enable._entry.27, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/pwm/pwm-twl-led.c", i32 176, i32 3}
!75 = !{ptr @twl6030_pwmled_enable._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pwm/pwm-twl-led.c", i32 193, i32 3}
!78 = !{ptr @twl6030_pwmled_disable._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @twl6030_pwmled_disable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @twl6030_pwmled_disable._entry.30, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/pwm/pwm-twl-led.c", i32 203, i32 3}
!82 = !{ptr @twl6030_pwmled_disable._entry_ptr.31, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @twl_pwmled_of_match, !84, !"twl_pwmled_of_match", i1 false, i1 false}
!84 = !{!"../drivers/pwm/pwm-twl-led.c", i32 300, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
