; ModuleID = '/llk/IR_all_yes/drivers/input/misc/max77693-haptic.c_pt.bc'
source_filename = "../drivers/input/misc/max77693-haptic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
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
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max77693_haptic = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, %struct.work_struct }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.84 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.84 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_max77693_haptic__288_422_max77693_haptic_driver_init6 = internal global ptr @max77693_haptic_driver_init, section ".initcall6.init", align 4
@max77693_haptic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77693_haptic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77693_haptic_pm_ops, ptr null, ptr null }, ptr @max77693_haptic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77693_haptic_driver_exit = internal global ptr @max77693_haptic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"max77693_haptic.author=Jaewon Kim <jaewon02.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [61 x i8] c"max77693_haptic.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"max77693_haptic.description=MAXIM 77693/77843 Haptic driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [56 x i8] c"max77693_haptic.file=drivers/input/misc/max77693-haptic\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"max77693_haptic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max77693-haptic\00", [16 x i8] zeroinitializer }, align 32
@max77693_haptic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max77693_haptic_suspend, ptr @max77693_haptic_resume, ptr @max77693_haptic_suspend, ptr @max77693_haptic_resume, ptr @max77693_haptic_suspend, ptr @max77693_haptic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max77693_haptic_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77693-haptic\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77843-haptic\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported device type: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max77693_haptic_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/misc/max77693-haptic.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry_ptr = internal global ptr @max77693_haptic_probe._entry, section ".printk_index", align 4
@max77693_haptic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&haptic->work)\00", [63 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get pwm device\0A\00", [38 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry_ptr.9 = internal global ptr @max77693_haptic_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"haptic\00", [25 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry_ptr.13 = internal global ptr @max77693_haptic_probe._entry.11, section ".printk_index", align 4
@max77693_haptic_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry_ptr.16 = internal global ptr @max77693_haptic_probe._entry.14, section ".printk_index", align 4
@max77693_haptic_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create force-feedback\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry_ptr.19 = internal global ptr @max77693_haptic_probe._entry.17, section ".printk_index", align 4
@max77693_haptic_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_haptic_probe._entry_ptr.22 = internal global ptr @max77693_haptic_probe._entry.20, section ".printk_index", align 4
@max77693_haptic_play_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set duty cycle: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77693_haptic_play_work\00", [38 x i8] zeroinitializer }, align 32
@max77693_haptic_play_work._entry_ptr = internal global ptr @max77693_haptic_play_work._entry, section ".printk_index", align 4
@max77693_haptic_set_duty_cycle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to configure pwm: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max77693_haptic_set_duty_cycle\00", [33 x i8] zeroinitializer }, align 32
@max77693_haptic_set_duty_cycle._entry_ptr = internal global ptr @max77693_haptic_set_duty_cycle._entry, section ".printk_index", align 4
@max77693_haptic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable haptic pwm device: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77693_haptic_enable\00", [41 x i8] zeroinitializer }, align 32
@max77693_haptic_enable._entry_ptr = internal global ptr @max77693_haptic_enable._entry, section ".printk_index", align 4
@max77693_haptic_lowsys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot update pmic regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77693_haptic_lowsys\00", [41 x i8] zeroinitializer }, align 32
@max77693_haptic_lowsys._entry_ptr = internal global ptr @max77693_haptic_lowsys._entry, section ".printk_index", align 4
@max77693_haptic_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to update haptic config: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77693_haptic_configure\00", [38 x i8] zeroinitializer }, align 32
@max77693_haptic_configure._entry_ptr = internal global ptr @max77693_haptic_configure._entry, section ".printk_index", align 4
@max77693_haptic_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max77693_haptic_open\00", [43 x i8] zeroinitializer }, align 32
@max77693_haptic_open._entry_ptr = internal global ptr @max77693_haptic_open._entry, section ".printk_index", align 4
@max77843_haptic_bias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to %s bias: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max77843_haptic_bias\00", [43 x i8] zeroinitializer }, align 32
@max77843_haptic_bias._entry_ptr = internal global ptr @max77843_haptic_bias._entry, section ".printk_index", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@max77693_haptic_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max77693_haptic_close\00", [42 x i8] zeroinitializer }, align 32
@max77693_haptic_close._entry_ptr = internal global ptr @max77693_haptic_close._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"max77693_haptic_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 414, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 416, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"max77693_haptic_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 404, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"max77693_haptic_id\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 407, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 319, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 324, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 329, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 339, i32 53 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 341, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 348, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 363, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 369, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 222, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 77, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 167, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 151, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 131, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 269, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 96, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [40 x i8] c"../drivers/input/misc/max77693-haptic.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 287, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77693_haptic_driver_exit, ptr @__initcall__kmod_max77693_haptic__288_422_max77693_haptic_driver_init6, ptr @max77693_haptic_close._entry, ptr @max77693_haptic_close._entry_ptr, ptr @max77693_haptic_configure._entry, ptr @max77693_haptic_configure._entry_ptr, ptr @max77693_haptic_driver_exit, ptr @max77693_haptic_enable._entry, ptr @max77693_haptic_enable._entry_ptr, ptr @max77693_haptic_lowsys._entry, ptr @max77693_haptic_lowsys._entry_ptr, ptr @max77693_haptic_open._entry, ptr @max77693_haptic_open._entry_ptr, ptr @max77693_haptic_play_work._entry, ptr @max77693_haptic_play_work._entry_ptr, ptr @max77693_haptic_probe._entry, ptr @max77693_haptic_probe._entry.11, ptr @max77693_haptic_probe._entry.14, ptr @max77693_haptic_probe._entry.17, ptr @max77693_haptic_probe._entry.20, ptr @max77693_haptic_probe._entry.7, ptr @max77693_haptic_probe._entry_ptr, ptr @max77693_haptic_probe._entry_ptr.13, ptr @max77693_haptic_probe._entry_ptr.16, ptr @max77693_haptic_probe._entry_ptr.19, ptr @max77693_haptic_probe._entry_ptr.22, ptr @max77693_haptic_probe._entry_ptr.9, ptr @max77693_haptic_set_duty_cycle._entry, ptr @max77693_haptic_set_duty_cycle._entry_ptr, ptr @max77843_haptic_bias._entry, ptr @max77843_haptic_bias._entry_ptr, ptr @max77693_haptic_driver, ptr @.str, ptr @max77693_haptic_pm_ops, ptr @max77693_haptic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max77693_haptic_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_play_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_set_duty_cycle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_lowsys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_haptic_bias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_haptic_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_haptic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_haptic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77693_haptic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_haptic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_haptic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %regmap_pmic = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap_pmic, align 4
  %dev4 = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev4, align 4
  %type = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %mode = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mode, align 4
  %suspend_state = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %suspend_state, align 1
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %11 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i, align 4
  %16 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %if.end.do.body12_crit_edge
  ]

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap_haptic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 8
  br label %do.body12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %14) #8
  br label %cleanup

do.body12:                                        ; preds = %sw.bb, %if.end.do.body12_crit_edge
  %regmap_haptic.sink = phi ptr [ %regmap_haptic, %sw.bb ], [ %regmap, %if.end.do.body12_crit_edge ]
  %17 = ptrtoint ptr %regmap_haptic.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap_haptic.sink, align 4
  %regmap_haptic6 = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %regmap_haptic6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %regmap_haptic6, align 4
  %work = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %20 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @max77693_haptic_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry16 = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 13, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 13, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @max77693_haptic_play_work, ptr %func, align 4
  %call21 = tail call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef null) #5
  %pwm_dev = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %pwm_dev, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end31

do.end27:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %25 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwm_dev, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end31:                                         ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %args.i = getelementptr inbounds %struct.pwm_device, ptr %call21, i32 0, i32 6
  %polarity.i = getelementptr inbounds %struct.pwm_device, ptr %call21, i32 0, i32 6, i32 1
  %28 = getelementptr inbounds i8, ptr %state.i, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 16)
  %30 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %polarity.i, align 8
  %polarity1.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 2
  %32 = ptrtoint ptr %polarity1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %polarity1.i, align 8
  %33 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %args.i, align 8
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %state.i, align 8
  %call.i139 = call i32 @pwm_apply_state(ptr noundef %call21, ptr noundef nonnull %state.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  %call34 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #5
  %motor_reg = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %motor_reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call34, ptr %motor_reg, align 4
  %cmp.i140 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %37 = ptrtoint ptr %motor_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %motor_reg, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end31
  %call46 = call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %input_dev = getelementptr inbounds %struct.max77693_haptic, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call46, ptr %input_dev, align 4
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %41 = ptrtoint ptr %call46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str, ptr %call46, align 8
  %42 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input_dev, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %version, align 2
  %45 = load ptr, ptr %input_dev, align 4
  %parent60 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 40, i32 1
  %46 = ptrtoint ptr %parent60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %parent60, align 8
  %47 = load ptr, ptr %input_dev, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 31
  %48 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @max77693_haptic_open, ptr %open, align 8
  %49 = load ptr, ptr %input_dev, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @max77693_haptic_close, ptr %close, align 4
  %51 = load ptr, ptr %input_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 40, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %53 = load ptr, ptr %input_dev, align 4
  call void @input_set_capability(ptr noundef %53, i32 noundef 21, i32 noundef 80) #5
  %54 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input_dev, align 4
  %call66 = call i32 @input_ff_create_memless(ptr noundef %55, ptr noundef null, ptr noundef nonnull @max77693_haptic_play_effect) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end73:                                         ; preds = %if.end54
  %56 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev, align 4
  %call75 = call i32 @input_register_device(ptr noundef %57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i141 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i141 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i141, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %do.end80, %do.end71, %do.end52, %do.end40, %do.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %27, %do.end27 ], [ %39, %do.end40 ], [ %call66, %do.end71 ], [ %call75, %do.end80 ], [ 0, %if.end82 ], [ -12, %do.end52 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77693_haptic_play_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %pwm_dev.i = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %pwm_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm_dev.i, align 4
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %pargs.sroa.0.0.copyload13.i = load i64, ptr %args1.i.i, align 8
  %pwm_duty.i = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %pwm_duty.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwm_duty.i, align 4
  %conv.i = zext i32 %4 to i64
  %add.i = add i64 %pargs.sroa.0.0.copyload13.i, %conv.i
  %div12.i = lshr i64 %add.i, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #5
  %tobool.not.i.i = icmp ne ptr %1, null
  %5 = or i64 %div12.i, %pargs.sroa.0.0.copyload13.i
  %6 = and i64 %5, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %.not.i.i = icmp eq i64 %6, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %if.end3.i.i, label %pwm_config.exit.thread16.i

pwm_config.exit.thread16.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %do.end

if.end3.i.i:                                      ; preds = %entry
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %7 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %duty_cycle.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %duty_cycle.i.i, align 8
  %conv21.i.i = and i64 %div12.i, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv21.i.i)
  %cmp4.i.i = icmp eq i64 %9, %conv21.i.i
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end3.if.end10_crit_edge.i.i

if.end3.if.end10_crit_edge.i.i:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i.i = and i64 %pargs.sroa.0.0.copyload13.i, 4294967295
  br label %pwm_config.exit.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %state.i.i, align 8
  %conv622.i.i = and i64 %pargs.sroa.0.0.copyload13.i, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv622.i.i)
  %cmp7.i.i = icmp eq i64 %11, %conv622.i.i
  br i1 %cmp7.i.i, label %pwm_config.exit.thread.i, label %land.lhs.true.i.i.pwm_config.exit.i_crit_edge

land.lhs.true.i.i.pwm_config.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_config.exit.i

pwm_config.exit.thread.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %if.end

pwm_config.exit.i:                                ; preds = %land.lhs.true.i.i.pwm_config.exit.i_crit_edge, %if.end3.if.end10_crit_edge.i.i
  %conv1323.pre-phi.i.i = phi i64 [ %.pre.i.i, %if.end3.if.end10_crit_edge.i.i ], [ %conv622.i.i, %land.lhs.true.i.i.pwm_config.exit.i_crit_edge ]
  %12 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv21.i.i, ptr %duty_cycle.i.i, align 8
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv1323.pre-phi.i.i, ptr %state.i.i, align 8
  %call.i.i = call i32 @pwm_apply_state(ptr noundef nonnull %1, ptr noundef nonnull %state.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %pwm_config.exit.i.if.end_crit_edge, label %pwm_config.exit.i.do.end_crit_edge

pwm_config.exit.i.do.end_crit_edge:               ; preds = %pwm_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

pwm_config.exit.i.if.end_crit_edge:               ; preds = %pwm_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %pwm_config.exit.i.do.end_crit_edge, %pwm_config.exit.thread16.i
  %retval.0.i19.i = phi i32 [ -22, %pwm_config.exit.thread16.i ], [ %call.i.i, %pwm_config.exit.i.do.end_crit_edge ]
  %dev.i = getelementptr i8, ptr %work, i32 -36
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i19.i) #8
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i19.i) #8
  br label %cleanup

if.end:                                           ; preds = %pwm_config.exit.i.if.end_crit_edge, %pwm_config.exit.thread.i
  %magnitude = getelementptr i8, ptr %work, i32 -16
  %18 = ptrtoint ptr %magnitude to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %magnitude, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not = icmp eq i32 %19, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @max77693_haptic_enable(ptr noundef %add.ptr)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @max77693_haptic_disable(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_haptic_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %regmap_haptic.i = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_haptic.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_haptic.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %max77843_haptic_bias.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

max77843_haptic_bias.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %call.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %motor_reg = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %motor_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %motor_reg, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %max77843_haptic_bias.exit
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i.i, %max77843_haptic_bias.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77693_haptic_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 13
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  tail call fastcc void @max77693_haptic_disable(ptr noundef %1)
  %motor_reg = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %motor_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %motor_reg, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev3 = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.39, i32 noundef %call2) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.max77843_haptic_bias.exit_crit_edge

if.end.max77843_haptic_bias.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77843_haptic_bias.exit

if.end.i:                                         ; preds = %if.end
  %regmap_haptic.i = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_haptic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_haptic.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.max77843_haptic_bias.exit_crit_edge, label %do.end.i

if.end.i.max77843_haptic_bias.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77843_haptic_bias.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef %call.i.i) #8
  br label %max77843_haptic_bias.exit

max77843_haptic_bias.exit:                        ; preds = %do.end.i, %if.end.i.max77843_haptic_bias.exit_crit_edge, %if.end.max77843_haptic_bias.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_haptic_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %conv = zext i16 %3 to i32
  %magnitude = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %magnitude to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %magnitude, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %weak_magnitude, align 2
  %conv3 = zext i16 %6 to i32
  %7 = ptrtoint ptr %magnitude to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %magnitude, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pwm_dev = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm_dev, align 4
  %args1.i = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %args1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %pargs.sroa.0.0.copyload16 = load i64, ptr %args1.i, align 8
  %11 = ptrtoint ptr %magnitude to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %magnitude, align 4
  %conv6 = zext i32 %12 to i64
  %mul = mul i64 %pargs.sroa.0.0.copyload16, %conv6
  %shr = lshr i64 %mul, 16
  %conv7 = trunc i64 %shr to i32
  %pwm_duty = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %pwm_duty to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7, ptr %pwm_duty, align 4
  %work = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max77693_haptic_enable(ptr nocapture noundef %haptic) unnamed_addr #2 align 64 {
entry:
  %state.i41 = alloca %struct.pwm_state, align 8
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwm_dev = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 5
  %2 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_dev, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %pwm_enable.exit.thread51, label %if.end.i

pwm_enable.exit.thread51:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %pwm_enable.exit, label %pwm_enable.exit.thread

pwm_enable.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  br label %if.end3

pwm_enable.exit:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %3, ptr noundef nonnull %state.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %pwm_enable.exit.if.end3_crit_edge, label %pwm_enable.exit.do.end_crit_edge

pwm_enable.exit.do.end_crit_edge:                 ; preds = %pwm_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

pwm_enable.exit.if.end3_crit_edge:                ; preds = %pwm_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

do.end:                                           ; preds = %pwm_enable.exit.do.end_crit_edge, %pwm_enable.exit.thread51
  %retval.0.i54 = phi i32 [ -22, %pwm_enable.exit.thread51 ], [ %call.i, %pwm_enable.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i54) #8
  br label %cleanup

if.end3:                                          ; preds = %pwm_enable.exit.if.end3_crit_edge, %pwm_enable.exit.thread
  %10 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %haptic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end.i26, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i26:                                       ; preds = %if.end3
  %regmap_pmic.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 1
  %12 = ptrtoint ptr %regmap_pmic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_pmic.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 43, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i25 = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i25, label %if.end7thread-pre-split, label %if.end.i26.err_enable_lowsys.sink.split_crit_edge

if.end.i26.err_enable_lowsys.sink.split_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable_lowsys.sink.split

if.end7thread-pre-split:                          ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %haptic, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.end3.if.end7_crit_edge
  %15 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %11, %if.end3.if.end7_crit_edge ]
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %15, label %if.end7.err_enable_config_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

if.end7.err_enable_config_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable_config

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %type.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 11
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %shl.i = shl i32 %18, 7
  %mode.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 12
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode.i, align 4
  %shl2.i = shl i32 %20, 5
  %or.i = or i32 %shl2.i, %shl.i
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %type6.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 11
  %21 = ptrtoint ptr %type6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type6.i, align 4
  %shl7.i = shl i32 %22, 7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i
  %value.0.in.i.in = phi i32 [ %shl7.i, %sw.bb5.i ], [ %or.i, %sw.bb.i ]
  %config_reg.0.i = phi i32 [ 16, %sw.bb5.i ], [ 2, %sw.bb.i ]
  %value.0.i = or i32 %value.0.in.i.in, 66
  %regmap_haptic.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 2
  %23 = ptrtoint ptr %regmap_haptic.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap_haptic.i, align 4
  %call.i28 = call i32 @regmap_write(ptr noundef %24, i32 noundef %config_reg.0.i, i32 noundef %value.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool13.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool13.not.i, label %if.end11, label %do.end.i30

do.end.i30:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i29 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.31, i32 noundef %call.i28) #8
  br label %err_enable_config

if.end11:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

err_enable_config:                                ; preds = %do.end.i30, %if.end7.err_enable_config_crit_edge
  %28 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %haptic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.not.i32 = icmp eq i32 %29, 1
  br i1 %cmp.not.i32, label %if.end.i36, label %err_enable_config.err_enable_lowsys_crit_edge

err_enable_config.err_enable_lowsys_crit_edge:    ; preds = %err_enable_config
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable_lowsys

if.end.i36:                                       ; preds = %err_enable_config
  %regmap_pmic.i33 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 1
  %30 = ptrtoint ptr %regmap_pmic.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap_pmic.i33, align 4
  %call.i.i34 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 43, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool1.not.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool1.not.i35, label %if.end.i36.err_enable_lowsys_crit_edge, label %if.end.i36.err_enable_lowsys.sink.split_crit_edge

if.end.i36.err_enable_lowsys.sink.split_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable_lowsys.sink.split

if.end.i36.err_enable_lowsys_crit_edge:           ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable_lowsys

err_enable_lowsys.sink.split:                     ; preds = %if.end.i36.err_enable_lowsys.sink.split_crit_edge, %if.end.i26.err_enable_lowsys.sink.split_crit_edge
  %call.i.i34.sink = phi i32 [ %call.i.i, %if.end.i26.err_enable_lowsys.sink.split_crit_edge ], [ %call.i.i34, %if.end.i36.err_enable_lowsys.sink.split_crit_edge ]
  %dev.i37 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 3
  %32 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.29, i32 noundef %call.i.i34.sink) #8
  br label %err_enable_lowsys

err_enable_lowsys:                                ; preds = %err_enable_lowsys.sink.split, %if.end.i36.err_enable_lowsys_crit_edge, %err_enable_config.err_enable_lowsys_crit_edge
  %34 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pwm_dev, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i41) #5
  %tobool.not.i42 = icmp eq ptr %35, null
  br i1 %tobool.not.i42, label %err_enable_lowsys.pwm_disable.exit_crit_edge, label %if.end.i46

err_enable_lowsys.pwm_disable.exit_crit_edge:     ; preds = %err_enable_lowsys
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end.i46:                                       ; preds = %err_enable_lowsys
  %state1.i.i43 = getelementptr inbounds %struct.pwm_device, ptr %35, i32 0, i32 7
  %36 = call ptr @memcpy(ptr %state.i41, ptr %state1.i.i43, i32 24)
  %enabled.i44 = getelementptr inbounds %struct.pwm_state, ptr %state.i41, i32 0, i32 3
  %37 = ptrtoint ptr %enabled.i44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enabled.i44, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i45 = icmp eq i8 %38, 0
  br i1 %tobool1.not.i45, label %if.end.i46.pwm_disable.exit_crit_edge, label %if.end3.i48

if.end.i46.pwm_disable.exit_crit_edge:            ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end3.i48:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %enabled.i44 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %enabled.i44, align 4
  %call.i47 = call i32 @pwm_apply_state(ptr noundef nonnull %35, ptr noundef nonnull %state.i41) #5
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i48, %if.end.i46.pwm_disable.exit_crit_edge, %err_enable_lowsys.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i41) #5
  br label %cleanup

cleanup:                                          ; preds = %pwm_disable.exit, %if.end11, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max77693_haptic_disable(ptr nocapture noundef %haptic) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %haptic, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %type.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 11
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %shl.i = shl i32 %6, 7
  %mode.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 12
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 4
  %shl2.i = shl i32 %8, 5
  %or3.i = or i32 %shl2.i, %shl.i
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %type6.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 11
  %9 = ptrtoint ptr %type6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type6.i, align 4
  %shl7.i = shl i32 %10, 7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i
  %value.0.in.i = phi i32 [ %shl7.i, %sw.bb5.i ], [ %or3.i, %sw.bb.i ]
  %config_reg.0.i = phi i32 [ 16, %sw.bb5.i ], [ 2, %sw.bb.i ]
  %value.0.i = or i32 %value.0.in.i, 2
  %regmap_haptic.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 2
  %11 = ptrtoint ptr %regmap_haptic.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap_haptic.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %config_reg.0.i, i32 noundef %value.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %if.end3, label %do.end.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef %call.i) #8
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog.i
  %15 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %haptic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i:                                         ; preds = %if.end3
  %regmap_pmic.i = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 1
  %17 = ptrtoint ptr %regmap_pmic.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap_pmic.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 43, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end7_crit_edge, label %err_disable_lowsys

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %pwm_dev = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 5
  %19 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwm_dev, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end7.pwm_disable.exit_crit_edge, label %if.end.i20

if.end7.pwm_disable.exit_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end.i20:                                       ; preds = %if.end7
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %20, i32 0, i32 7
  %21 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %22 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i19 = icmp eq i8 %23, 0
  br i1 %tobool1.not.i19, label %if.end.i20.pwm_disable.exit_crit_edge, label %if.end3.i

if.end.i20.pwm_disable.exit_crit_edge:            ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end3.i:                                        ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %enabled.i, align 4
  %call.i21 = call i32 @pwm_apply_state(ptr noundef nonnull %20, ptr noundef nonnull %state.i) #5
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i, %if.end.i20.pwm_disable.exit_crit_edge, %if.end7.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

err_disable_lowsys:                               ; preds = %if.end.i
  %dev.i16 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.29, i32 noundef %call.i.i) #8
  %28 = ptrtoint ptr %haptic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %haptic, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %29, label %err_disable_lowsys.cleanup_crit_edge [
    i32 1, label %sw.bb.i27
    i32 2, label %sw.bb5.i30
  ]

err_disable_lowsys.cleanup_crit_edge:             ; preds = %err_disable_lowsys
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i27:                                        ; preds = %err_disable_lowsys
  call void @__sanitizer_cov_trace_pc() #7
  %type.i22 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 11
  %31 = ptrtoint ptr %type.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i22, align 4
  %shl.i23 = shl i32 %32, 7
  %mode.i24 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 12
  %33 = ptrtoint ptr %mode.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode.i24, align 4
  %shl2.i25 = shl i32 %34, 5
  %or.i = or i32 %shl2.i25, %shl.i23
  br label %sw.epilog.i37

sw.bb5.i30:                                       ; preds = %err_disable_lowsys
  call void @__sanitizer_cov_trace_pc() #7
  %type6.i28 = getelementptr inbounds %struct.max77693_haptic, ptr %haptic, i32 0, i32 11
  %35 = ptrtoint ptr %type6.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type6.i28, align 4
  %shl7.i29 = shl i32 %36, 7
  br label %sw.epilog.i37

sw.epilog.i37:                                    ; preds = %sw.bb5.i30, %sw.bb.i27
  %value.0.in.i31.in = phi i32 [ %shl7.i29, %sw.bb5.i30 ], [ %or.i, %sw.bb.i27 ]
  %config_reg.0.i32 = phi i32 [ 16, %sw.bb5.i30 ], [ 2, %sw.bb.i27 ]
  %value.0.i33 = or i32 %value.0.in.i31.in, 66
  %37 = ptrtoint ptr %regmap_haptic.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap_haptic.i, align 4
  %call.i35 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %config_reg.0.i32, i32 noundef %value.0.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool13.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool13.not.i36, label %sw.epilog.i37.cleanup_crit_edge, label %do.end.i39

sw.epilog.i37.cleanup_crit_edge:                  ; preds = %sw.epilog.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i39:                                       ; preds = %sw.epilog.i37
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.31, i32 noundef %call.i35) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i39, %sw.epilog.i37.cleanup_crit_edge, %err_disable_lowsys.cleanup_crit_edge, %pwm_disable.exit, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_haptic_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @max77693_haptic_disable(ptr noundef %1)
  %suspend_state = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspend_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_haptic_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspend_state = getelementptr inbounds %struct.max77693_haptic, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspend_state, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @max77693_haptic_enable(ptr noundef %1)
  %4 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspend_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_max77693_haptic__288_422_max77693_haptic_driver_init6, !1, !"__initcall__kmod_max77693_haptic__288_422_max77693_haptic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/max77693-haptic.c", i32 422, i32 1}
!2 = !{ptr @__exitcall_max77693_haptic_driver_exit, !1, !"__exitcall_max77693_haptic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/max77693-haptic.c", i32 424, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/max77693-haptic.c", i32 425, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/max77693-haptic.c", i32 426, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/input/misc/max77693-haptic.c", i32 427, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/max77693-haptic.c", i32 416, i32 11}
!14 = !{ptr @max77693_haptic_driver, !15, !"max77693_haptic_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/max77693-haptic.c", i32 414, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/max77693-haptic.c", i32 319, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max77693_haptic_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max77693_haptic_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @max77693_haptic_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/max77693-haptic.c", i32 324, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/max77693-haptic.c", i32 329, i32 3}
!29 = !{ptr @max77693_haptic_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @max77693_haptic_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/max77693-haptic.c", i32 339, i32 53}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/max77693-haptic.c", i32 341, i32 3}
!35 = !{ptr @max77693_haptic_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max77693_haptic_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/max77693-haptic.c", i32 348, i32 3}
!39 = !{ptr @max77693_haptic_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @max77693_haptic_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/max77693-haptic.c", i32 363, i32 3}
!43 = !{ptr @max77693_haptic_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max77693_haptic_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/max77693-haptic.c", i32 369, i32 3}
!47 = !{ptr @max77693_haptic_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max77693_haptic_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/misc/max77693-haptic.c", i32 222, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @max77693_haptic_play_work._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @max77693_haptic_play_work._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/max77693-haptic.c", i32 77, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @max77693_haptic_set_duty_cycle._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @max77693_haptic_set_duty_cycle._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/max77693-haptic.c", i32 167, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @max77693_haptic_enable._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @max77693_haptic_enable._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/max77693-haptic.c", i32 151, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @max77693_haptic_lowsys._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @max77693_haptic_lowsys._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/max77693-haptic.c", i32 131, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @max77693_haptic_configure._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @max77693_haptic_configure._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/misc/max77693-haptic.c", i32 269, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @max77693_haptic_open._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @max77693_haptic_open._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/max77693-haptic.c", i32 96, i32 3}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @max77843_haptic_bias._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @max77843_haptic_bias._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/misc/max77693-haptic.c", i32 287, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @max77693_haptic_close._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @max77693_haptic_close._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @max77693_haptic_pm_ops, !92, !"max77693_haptic_pm_ops", i1 false, i1 false}
!92 = !{!"../drivers/input/misc/max77693-haptic.c", i32 404, i32 8}
!93 = !{ptr @max77693_haptic_id, !94, !"max77693_haptic_id", i1 false, i1 false}
!94 = !{!"../drivers/input/misc/max77693-haptic.c", i32 407, i32 40}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
