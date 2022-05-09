; ModuleID = '/llk/IR_all_yes/drivers/input/misc/da7280.c_pt.bc'
source_filename = "../drivers/input/misc/da7280.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.da7280_haptic = type { ptr, ptr, ptr, ptr, ptr, i8, %struct.work_struct, i32, i16, i16, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.da7280_gpi_ctl], i8, [100 x i8], i8, i8 }
%struct.da7280_gpi_ctl = type { i8, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.86 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.86 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_da7280__360_1328_da7280_driver_init6 = internal global ptr @da7280_driver_init, section ".initcall6.init", align 4
@da7280_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da7280_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da7280_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7280_pm_ops, ptr null, ptr null }, ptr @da7280_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da7280_driver_exit = internal global ptr @da7280_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description361 = internal constant [41 x i8] c"da7280.description=DA7280 haptics driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author362 = internal constant [53 x i8] c"da7280.author=Roy Im <Roy.Im.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file363 = internal constant [38 x i8] c"da7280.file=drivers/input/misc/da7280\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [19 x i8] c"da7280.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da7280\00", [25 x i8] zeroinitializer }, align 32
@da7280_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da7280\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@da7280_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @da7280_suspend, ptr @da7280_resume, ptr @da7280_suspend, ptr @da7280_resume, ptr @da7280_suspend, ptr @da7280_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@da7280_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da7280\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da7280_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da7280_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/misc/da7280.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr = internal global ptr @da7280_probe._entry, section ".printk_index", align 4
@da7280_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to request PWM: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.8 = internal global ptr @da7280_probe._entry.6, section ".printk_index", align 4
@da7280_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to apply PWM state: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.11 = internal global ptr @da7280_probe._entry.9, section ".printk_index", align 4
@da7280_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported PWM period: %lld\0A\00", [34 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.14 = internal global ptr @da7280_probe._entry.12, section ".printk_index", align 4
@da7280_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&haptics->work)\00", [62 x i8] zeroinitializer }, align 32
@da7280_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da7280_haptic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @da7280_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 231, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"da7280:1202:(&da7280_haptic_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@da7280_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.19 = internal global ptr @da7280_probe._entry.17, section ".printk_index", align 4
@da7280_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.22 = internal global ptr @da7280_probe._entry.20, section ".printk_index", align 4
@da7280_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.25 = internal global ptr @da7280_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"da7280-haptic\00", [18 x i8] zeroinitializer }, align 32
@da7280_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create FF input device: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.29 = internal global ptr @da7280_probe._entry.27, section ".printk_index", align 4
@da7280_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.32 = internal global ptr @da7280_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da7280-haptics\00", [17 x i8] zeroinitializer }, align 32
@da7280_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da7280_probe._entry_ptr.36 = internal global ptr @da7280_probe._entry.34, section ".printk_index", align 4
@__const.da7280_parse_properties.gpi_str1 = private unnamed_addr constant [16 x i8] c"dlg,gpi0-seq-id\00", align 1
@__const.da7280_parse_properties.gpi_str2 = private unnamed_addr constant [14 x i8] c"dlg,gpi0-mode\00", align 1
@__const.da7280_parse_properties.gpi_str3 = private unnamed_addr constant [18 x i8] c"dlg,gpi0-polarity\00", align 1
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,actuator-type\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,const-op-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlg,periodic-op-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,nom-microvolt\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,abs-max-microvolt\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,imax-microamp\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,impd-micro-ohms\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlg,resonant-freq-hz\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlg,ps-seq-id\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,ps-seq-loop\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlg,bemf-sens-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,freq-track-enable\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlg,acc-enable\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,rapid-stop-enable\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,amp-pid-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlg,mem-array\00", [18 x i8] zeroinitializer }, align 32
@da7280_parse_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid data in mem-array at %d: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7280_parse_properties\00", [40 x i8] zeroinitializer }, align 32
@da7280_parse_properties._entry_ptr = internal global ptr @da7280_parse_properties._entry, section ".printk_index", align 4
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LRA\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ERM-bar\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERM-coin\00", [23 x i8] zeroinitializer }, align 32
@da7280_haptic_of_mode_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 732, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid string - set to LRA\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da7280_haptic_of_mode_str\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da7280_haptic_of_mode_str._entry_ptr = internal global ptr @da7280_haptic_of_mode_str._entry, section ".printk_index", align 4
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Single-pattern\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Multi-pattern\00", [18 x i8] zeroinitializer }, align 32
@da7280_haptic_of_gpi_mode_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 745, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid string - set to Single-pattern\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"da7280_haptic_of_gpi_mode_str\00", [34 x i8] zeroinitializer }, align 32
@da7280_haptic_of_gpi_mode_str._entry_ptr = internal global ptr @da7280_haptic_of_gpi_mode_str._entry, section ".printk_index", align 4
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rising-edge\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Falling-edge\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Both-edge\00", [22 x i8] zeroinitializer }, align 32
@da7280_haptic_of_gpi_pol_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 760, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid string - set to Rising-edge\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"da7280_haptic_of_gpi_pol_str\00", [35 x i8] zeroinitializer }, align 32
@da7280_haptic_of_gpi_pol_str._entry_ptr = internal global ptr @da7280_haptic_of_gpi_pol_str._entry, section ".printk_index", align 4
@da7280_haptic_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set level to %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da7280_haptic_activate\00", [41 x i8] zeroinitializer }, align 32
@da7280_haptic_activate._entry_ptr = internal global ptr @da7280_haptic_activate._entry, section ".printk_index", align 4
@da7280_haptic_activate._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid op mode %d\0A\00", [44 x i8] zeroinitializer }, align 32
@da7280_haptic_activate._entry_ptr.74 = internal global ptr @da7280_haptic_activate._entry.72, section ".printk_index", align 4
@da7280_haptic_activate._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set operation mode: %d\00", [63 x i8] zeroinitializer }, align 32
@da7280_haptic_activate._entry_ptr.77 = internal global ptr @da7280_haptic_activate._entry.75, section ".printk_index", align 4
@da7280_haptic_activate._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to start sequence: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da7280_haptic_activate._entry_ptr.80 = internal global ptr @da7280_haptic_activate._entry.78, section ".printk_index", align 4
@da7280_haptic_set_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to enable pwm with 0 gain\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7280_haptic_set_pwm\00", [42 x i8] zeroinitializer }, align 32
@da7280_haptic_set_pwm._entry_ptr = internal global ptr @da7280_haptic_set_pwm._entry, section ".printk_index", align 4
@da7280_haptic_set_pwm._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to apply pwm state: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da7280_haptic_set_pwm._entry_ptr.85 = internal global ptr @da7280_haptic_set_pwm._entry.83, section ".printk_index", align 4
@da7280_haptic_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to clear operation mode: %d\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da7280_haptic_deactivate\00", [39 x i8] zeroinitializer }, align 32
@da7280_haptic_deactivate._entry_ptr = internal global ptr @da7280_haptic_deactivate._entry, section ".printk_index", align 4
@da7280_haptic_deactivate._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable DRO mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@da7280_haptic_deactivate._entry_ptr.90 = internal global ptr @da7280_haptic_deactivate._entry.88, section ".printk_index", align 4
@da7280_haptic_deactivate._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to disable RTWM/ETWM mode: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@da7280_haptic_deactivate._entry_ptr.93 = internal global ptr @da7280_haptic_deactivate._entry.91, section ".printk_index", align 4
@da7280_haptic_deactivate._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.87, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@da7280_haptic_deactivate._entry_ptr.95 = internal global ptr @da7280_haptic_deactivate._entry.94, section ".printk_index", align 4
@da7280_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 1139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chip initialization error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da7280_init\00", [20 x i8] zeroinitializer }, align 32
@da7280_init._entry_ptr = internal global ptr @da7280_init._entry, section ".printk_index", align 4
@da7280_haptic_mem_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 295, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Warning! Please check HAPTIC status.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da7280_haptic_mem_update\00", [39 x i8] zeroinitializer }, align 32
@da7280_haptic_mem_update._entry_ptr = internal global ptr @da7280_haptic_mem_update._entry, section ".printk_index", align 4
@da7280_haptic_mem_update._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 305, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Please unlock the bit first\0A\00", [35 x i8] zeroinitializer }, align 32
@da7280_haptic_mem_update._entry_ptr.102 = internal global ptr @da7280_haptic_mem_update._entry.100, section ".printk_index", align 4
@da7280_haptic_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"da7280_haptic_start\00", [44 x i8] zeroinitializer }, align 32
@da7280_haptic_start._entry_ptr = internal global ptr @da7280_haptic_start._entry, section ".printk_index", align 4
@da7280_haptic_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable device: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da7280_haptic_stop\00", [45 x i8] zeroinitializer }, align 32
@da7280_haptic_stop._entry_ptr = internal global ptr @da7280_haptic_stop._entry, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device can only accept FF_CUSTOM waveform\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"da7280_haptics_upload_effect\00", [35 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr = internal global ptr @da7280_haptics_upload_effect._entry, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid waveform data size\0A\00", [36 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.111 = internal global ptr @da7280_haptics_upload_effect._entry.109, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid waveform data %d at offset %d\0A\00", [57 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.114 = internal global ptr @da7280_haptics_upload_effect._entry.112, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to upload waveform: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.117 = internal global ptr @da7280_haptics_upload_effect._entry.115, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.108, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid custom id (%d) or loop (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.120 = internal global ptr @da7280_haptics_upload_effect._entry.118, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.108, ptr @.str.3, i32 611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to update PS sequence: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.123 = internal global ptr @da7280_haptics_upload_effect._entry.121, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.108, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid custom GPI id (%d) or num (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.126 = internal global ptr @da7280_haptics_upload_effect._entry.124, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.108, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to update GPI sequence: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.129 = internal global ptr @da7280_haptics_upload_effect._entry.127, section ".printk_index", align 4
@da7280_haptics_upload_effect._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.108, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported effect type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@da7280_haptics_upload_effect._entry_ptr.132 = internal global ptr @da7280_haptics_upload_effect._entry.130, section ".printk_index", align 4
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@da7280_haptics_playback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 665, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No effects have been uploaded\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7280_haptics_playback\00", [40 x i8] zeroinitializer }, align 32
@da7280_haptics_playback._entry_ptr = internal global ptr @da7280_haptics_playback._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@da7280_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.3, i32 913, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read interrupt data: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da7280_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr = internal global ptr @da7280_irq_handler._entry, section ".printk_index", align 4
@da7280_irq_handler._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.3, i32 920, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to clear interrupts: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.142 = internal global ptr @da7280_irq_handler._entry.140, section ".printk_index", align 4
@da7280_irq_handler._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.3, i32 933, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to clear op mode on fault: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.145 = internal global ptr @da7280_irq_handler._entry.143, section ".printk_index", align 4
@da7280_irq_handler._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.3, i32 942, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Please reduce the driver level\0A\00", [32 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.148 = internal global ptr @da7280_irq_handler._entry.146, section ".printk_index", align 4
@da7280_irq_handler._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.139, ptr @.str.3, i32 944, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Please check the mem data format\0A\00", [62 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.151 = internal global ptr @da7280_irq_handler._entry.149, section ".printk_index", align 4
@da7280_irq_handler._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.139, ptr @.str.3, i32 946, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over-temperature warning\0A\00", [38 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.154 = internal global ptr @da7280_irq_handler._entry.152, section ".printk_index", align 4
@da7280_irq_handler._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.139, ptr @.str.3, i32 951, ptr @.str.157, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Please reload PS_SEQ_ID & mem data\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.158 = internal global ptr @da7280_irq_handler._entry.155, section ".printk_index", align 4
@da7280_irq_handler._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.139, ptr @.str.3, i32 953, ptr @.str.157, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Please reload the mem data\0A\00", [36 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.161 = internal global ptr @da7280_irq_handler._entry.159, section ".printk_index", align 4
@da7280_irq_handler._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.139, ptr @.str.3, i32 955, ptr @.str.157, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Please restart PWM interface\0A\00", [34 x i8] zeroinitializer }, align 32
@da7280_irq_handler._entry_ptr.164 = internal global ptr @da7280_irq_handler._entry.162, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 81, i64 82]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"da7280_driver\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1319, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1321, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"da7280_of_match\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1304, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"da7280_pm_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1317, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"da7280_i2c_id\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1311, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1154, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1171, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1181, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1190, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1196, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [28 x i8] c"da7280_haptic_regmap_config\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 277, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1201, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1205, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1211, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1218, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1222, i32 20 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1237, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1247, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1254, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1256, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 787, i32 43 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 792, i32 40 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 797, i32 40 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 802, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 807, i32 40 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 812, i32 40 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 817, i32 40 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 823, i32 40 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 839, i32 40 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 844, i32 40 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 872, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 874, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 876, i32 34 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 878, i32 34 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 880, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 883, i32 46 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 892, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 725, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 727, i32 26 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 729, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 732, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 740, i32 19 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 742, i32 26 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 745, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 753, i32 19 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 755, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 757, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 760, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 381, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 409, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 418, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 430, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 332, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 357, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 451, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 461, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 478, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 486, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1139, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 294, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 305, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 686, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 705, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 536, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 556, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 569, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 579, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 594, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 610, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 625, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 644, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 651, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 156, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 665, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 913, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 920, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 932, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 942, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 944, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 946, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 951, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 953, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.624 = private constant [31 x i8] c"../drivers/input/misc/da7280.c\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 955, i32 4 }
@llvm.compiler.used = appending global [207 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__exitcall_da7280_driver_exit, ptr @__initcall__kmod_da7280__360_1328_da7280_driver_init6, ptr @da7280_driver_exit, ptr @da7280_haptic_activate._entry, ptr @da7280_haptic_activate._entry.72, ptr @da7280_haptic_activate._entry.75, ptr @da7280_haptic_activate._entry.78, ptr @da7280_haptic_activate._entry_ptr, ptr @da7280_haptic_activate._entry_ptr.74, ptr @da7280_haptic_activate._entry_ptr.77, ptr @da7280_haptic_activate._entry_ptr.80, ptr @da7280_haptic_deactivate._entry, ptr @da7280_haptic_deactivate._entry.88, ptr @da7280_haptic_deactivate._entry.91, ptr @da7280_haptic_deactivate._entry.94, ptr @da7280_haptic_deactivate._entry_ptr, ptr @da7280_haptic_deactivate._entry_ptr.90, ptr @da7280_haptic_deactivate._entry_ptr.93, ptr @da7280_haptic_deactivate._entry_ptr.95, ptr @da7280_haptic_mem_update._entry, ptr @da7280_haptic_mem_update._entry.100, ptr @da7280_haptic_mem_update._entry_ptr, ptr @da7280_haptic_mem_update._entry_ptr.102, ptr @da7280_haptic_of_gpi_mode_str._entry, ptr @da7280_haptic_of_gpi_mode_str._entry_ptr, ptr @da7280_haptic_of_gpi_pol_str._entry, ptr @da7280_haptic_of_gpi_pol_str._entry_ptr, ptr @da7280_haptic_of_mode_str._entry, ptr @da7280_haptic_of_mode_str._entry_ptr, ptr @da7280_haptic_set_pwm._entry, ptr @da7280_haptic_set_pwm._entry.83, ptr @da7280_haptic_set_pwm._entry_ptr, ptr @da7280_haptic_set_pwm._entry_ptr.85, ptr @da7280_haptic_start._entry, ptr @da7280_haptic_start._entry_ptr, ptr @da7280_haptic_stop._entry, ptr @da7280_haptic_stop._entry_ptr, ptr @da7280_haptics_playback._entry, ptr @da7280_haptics_playback._entry_ptr, ptr @da7280_haptics_upload_effect._entry, ptr @da7280_haptics_upload_effect._entry.109, ptr @da7280_haptics_upload_effect._entry.112, ptr @da7280_haptics_upload_effect._entry.115, ptr @da7280_haptics_upload_effect._entry.118, ptr @da7280_haptics_upload_effect._entry.121, ptr @da7280_haptics_upload_effect._entry.124, ptr @da7280_haptics_upload_effect._entry.127, ptr @da7280_haptics_upload_effect._entry.130, ptr @da7280_haptics_upload_effect._entry_ptr, ptr @da7280_haptics_upload_effect._entry_ptr.111, ptr @da7280_haptics_upload_effect._entry_ptr.114, ptr @da7280_haptics_upload_effect._entry_ptr.117, ptr @da7280_haptics_upload_effect._entry_ptr.120, ptr @da7280_haptics_upload_effect._entry_ptr.123, ptr @da7280_haptics_upload_effect._entry_ptr.126, ptr @da7280_haptics_upload_effect._entry_ptr.129, ptr @da7280_haptics_upload_effect._entry_ptr.132, ptr @da7280_init._entry, ptr @da7280_init._entry_ptr, ptr @da7280_irq_handler._entry, ptr @da7280_irq_handler._entry.140, ptr @da7280_irq_handler._entry.143, ptr @da7280_irq_handler._entry.146, ptr @da7280_irq_handler._entry.149, ptr @da7280_irq_handler._entry.152, ptr @da7280_irq_handler._entry.155, ptr @da7280_irq_handler._entry.159, ptr @da7280_irq_handler._entry.162, ptr @da7280_irq_handler._entry_ptr, ptr @da7280_irq_handler._entry_ptr.142, ptr @da7280_irq_handler._entry_ptr.145, ptr @da7280_irq_handler._entry_ptr.148, ptr @da7280_irq_handler._entry_ptr.151, ptr @da7280_irq_handler._entry_ptr.154, ptr @da7280_irq_handler._entry_ptr.158, ptr @da7280_irq_handler._entry_ptr.161, ptr @da7280_irq_handler._entry_ptr.164, ptr @da7280_parse_properties._entry, ptr @da7280_parse_properties._entry_ptr, ptr @da7280_probe._entry, ptr @da7280_probe._entry.12, ptr @da7280_probe._entry.17, ptr @da7280_probe._entry.20, ptr @da7280_probe._entry.23, ptr @da7280_probe._entry.27, ptr @da7280_probe._entry.30, ptr @da7280_probe._entry.34, ptr @da7280_probe._entry.6, ptr @da7280_probe._entry.9, ptr @da7280_probe._entry_ptr, ptr @da7280_probe._entry_ptr.11, ptr @da7280_probe._entry_ptr.14, ptr @da7280_probe._entry_ptr.19, ptr @da7280_probe._entry_ptr.22, ptr @da7280_probe._entry_ptr.25, ptr @da7280_probe._entry_ptr.29, ptr @da7280_probe._entry_ptr.32, ptr @da7280_probe._entry_ptr.36, ptr @da7280_probe._entry_ptr.8, ptr @da7280_driver, ptr @.str, ptr @da7280_of_match, ptr @da7280_pm_ops, ptr @da7280_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @da7280_probe.__key, ptr @.str.15, ptr @da7280_probe._key, ptr @da7280_haptic_regmap_config, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.157, ptr @.str.160, ptr @.str.163], section "llvm.metadata"
@0 = internal global [152 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_parse_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_of_mode_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_of_gpi_mode_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_of_gpi_pol_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_activate._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_activate._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_activate._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_set_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_set_pwm._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_deactivate._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_deactivate._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_deactivate._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_mem_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_mem_update._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptic_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_upload_effect._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_haptics_playback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7280_irq_handler._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da7280_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da7280_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @da7280_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i193 = alloca i32, align 4
  %mem.i = alloca [100 x i32], align 4
  %gpi_str1.i = alloca [16 x i8], align 1
  %gpi_str2.i = alloca [14 x i8], align 1
  %gpi_str3.i = alloca [18 x i8], align 1
  %str.i = alloca ptr, align 4
  %val.i = alloca i32, align 4
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %0 = call ptr @memset(ptr %state, i32 255, i32 24)
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 220, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev5, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %mem.i) #9
  %4 = call ptr @memset(ptr %mem.i, i32 255, i32 400)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gpi_str1.i) #9
  %5 = call ptr @memcpy(ptr %gpi_str1.i, ptr @__const.da7280_parse_properties.gpi_str1, i32 16)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %gpi_str2.i) #9
  %6 = call ptr @memcpy(ptr %gpi_str2.i, ptr @__const.da7280_parse_properties.gpi_str2, i32 14)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %gpi_str3.i) #9
  %7 = call ptr @memcpy(ptr %gpi_str3.i, ptr @__const.da7280_parse_properties.gpi_str3, i32 18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str.i) #9
  %8 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %str.i, align 4, !annotation !308
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !308
  %dev_type.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %dev_type.i, align 4
  %call.i189 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull %str.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  %11 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %str.i, align 4
  %call.i.i = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(4) @.str.55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.da7280_haptic_of_mode_str.exit.i_crit_edge, label %if.else.i.i

if.then.i.da7280_haptic_of_mode_str.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_mode_str.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  %call1.i.i = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(8) @.str.56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge, label %if.else4.i.i

if.else.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_mode_str.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %call5.i.i = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(9) @.str.57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge, label %do.end.i.i

if.else4.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge: ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_mode_str.exit.i

do.end.i.i:                                       ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.58) #12
  br label %da7280_haptic_of_mode_str.exit.i

da7280_haptic_of_mode_str.exit.i:                 ; preds = %do.end.i.i, %if.else4.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge, %if.else.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge, %if.then.i.da7280_haptic_of_mode_str.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 0, %if.then.i.da7280_haptic_of_mode_str.exit.i_crit_edge ], [ 1, %if.else.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge ], [ 2, %if.else4.i.i.da7280_haptic_of_mode_str.exit.i_crit_edge ]
  %13 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i.i, ptr %dev_type.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %da7280_haptic_of_mode_str.exit.i, %if.end4.if.end.i_crit_edge
  %const_op_mode.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 12
  %14 = ptrtoint ptr %const_op_mode.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %const_op_mode.i, align 2
  %call.i268.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268.i)
  %tobool4.not.i = icmp eq i32 %call.i268.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i = icmp eq i32 %16, 2
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %const_op_mode.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %const_op_mode.i, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %periodic_op_mode.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %periodic_op_mode.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %periodic_op_mode.i, align 1
  %call.i269.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269.i)
  %tobool9.not.i = icmp eq i32 %call.i269.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true10.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true10.i:                                ; preds = %if.end7.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp11.i = icmp eq i32 %20, 2
  br i1 %cmp11.i, label %if.then12.i, label %land.lhs.true10.i.if.end14.i_crit_edge

land.lhs.true10.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %periodic_op_mode.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %periodic_op_mode.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %land.lhs.true10.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge
  %nommax.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %nommax.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 256, ptr %nommax.i, align 4
  %call.i270.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.40, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270.i)
  %tobool16.not.i = icmp eq i32 %call.i270.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true17.i, label %if.end14.i.if.end22.i_crit_edge

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true17.i:                                ; preds = %if.end14.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %24)
  %cmp18.i = icmp ult i32 %24, 6000000
  br i1 %cmp18.i, label %if.then19.i, label %land.lhs.true17.i.if.end22.i_crit_edge

land.lhs.true17.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5943600, i32 %24)
  %cmp.i.i = icmp ult i32 %24, 5943600
  %div.i.i = udiv i32 %24, 23400
  %25 = trunc i32 %div.i.i to i8
  %phi.cast.i.i = add i8 %25, 1
  %26 = zext i8 %phi.cast.i.i to i16
  %conv.i = select i1 %cmp.i.i, i16 %26, i16 255
  %27 = ptrtoint ptr %nommax.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %nommax.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.if.end22.i_crit_edge, %if.end14.i.if.end22.i_crit_edge
  %absmax.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 15
  %28 = ptrtoint ptr %absmax.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %absmax.i, align 2
  %call.i271.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271.i)
  %tobool24.not.i = icmp eq i32 %call.i271.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %if.end22.i.if.end32.i_crit_edge

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.lhs.true25.i:                                ; preds = %if.end22.i
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %30)
  %cmp26.i = icmp ult i32 %30, 6000000
  br i1 %cmp26.i, label %if.then28.i, label %land.lhs.true25.i.if.end32.i_crit_edge

land.lhs.true25.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then28.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5943600, i32 %30)
  %cmp.i272.i = icmp ult i32 %30, 5943600
  %div.i273.i = udiv i32 %30, 23400
  %31 = trunc i32 %div.i273.i to i8
  %phi.cast.i274.i = add i8 %31, 1
  %32 = zext i8 %phi.cast.i274.i to i16
  %conv30.i = select i1 %cmp.i272.i, i16 %32, i16 255
  %33 = ptrtoint ptr %absmax.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv30.i, ptr %absmax.i, align 2
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %land.lhs.true25.i.if.end32.i_crit_edge, %if.end22.i.if.end32.i_crit_edge
  %imax.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 16
  %34 = ptrtoint ptr %imax.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 14, ptr %imax.i, align 4
  %call.i276.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276.i)
  %tobool34.not.i = icmp eq i32 %call.i276.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true35.i, label %if.end32.i.if.end40.i_crit_edge

if.end32.i.if.end40.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.lhs.true35.i:                                ; preds = %if.end32.i
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252000, i32 %36)
  %cmp36.i = icmp ult i32 %36, 252000
  br i1 %cmp36.i, label %if.then38.i, label %land.lhs.true35.i.if.end40.i_crit_edge

land.lhs.true35.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then38.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %36, -28600
  %div.i = udiv i32 %sub.i, 7200
  %add.i = add nuw nsw i32 %div.i, 1
  %37 = ptrtoint ptr %imax.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %imax.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %land.lhs.true35.i.if.end40.i_crit_edge, %if.end32.i.if.end40.i_crit_edge
  %impd.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 17
  %38 = ptrtoint ptr %impd.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 22000000, ptr %impd.i, align 4
  %call.i277.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277.i)
  %tobool42.not.i = icmp eq i32 %call.i277.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true43.i, label %if.end40.i.if.end48.i_crit_edge

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

land.lhs.true43.i:                                ; preds = %if.end40.i
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000001, i32 %40)
  %cmp44.i = icmp ult i32 %40, 1500000001
  br i1 %cmp44.i, label %if.then46.i, label %land.lhs.true43.i.if.end48.i_crit_edge

land.lhs.true43.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then46.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %impd.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %impd.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %land.lhs.true43.i.if.end48.i_crit_edge, %if.end40.i.if.end48.i_crit_edge
  %resonant_freq_h.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 18
  %42 = ptrtoint ptr %resonant_freq_h.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %resonant_freq_h.i, align 4
  %resonant_freq_l.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 19
  %43 = ptrtoint ptr %resonant_freq_l.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 256, ptr %resonant_freq_l.i, align 4
  %call.i278.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278.i)
  %tobool50.not.i = icmp eq i32 %call.i278.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.end48.i.if.end67.i_crit_edge

if.end48.i.if.end67.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then51.i:                                      ; preds = %if.end48.i
  %44 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i, align 4
  %46 = add i32 %45, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %46)
  %47 = icmp ult i32 %46, 249
  br i1 %47, label %if.then57.i, label %if.else.i

if.then57.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nuw nsw i32 %45, 1333
  %div58.i = udiv i32 1000000000, %mul.i
  %shr.i = lshr i32 %div58.i, 7
  %48 = ptrtoint ptr %resonant_freq_h.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr.i, ptr %resonant_freq_h.i, align 4
  %and62.i = and i32 %div58.i, 127
  br label %if.end67.sink.split.i

if.else.i:                                        ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %resonant_freq_h.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 57, ptr %resonant_freq_h.i, align 4
  br label %if.end67.sink.split.i

if.end67.sink.split.i:                            ; preds = %if.else.i, %if.then57.i
  %and62.sink.i = phi i32 [ %and62.i, %if.then57.i ], [ 50, %if.else.i ]
  %50 = ptrtoint ptr %resonant_freq_l.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and62.sink.i, ptr %resonant_freq_l.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end67.sink.split.i, %if.end48.i.if.end67.i_crit_edge
  %ps_seq_id.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 25
  %51 = ptrtoint ptr %ps_seq_id.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ps_seq_id.i, align 1
  %call.i279.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279.i)
  %tobool69.not.i = icmp eq i32 %call.i279.i, 0
  br i1 %tobool69.not.i, label %land.lhs.true70.i, label %if.end67.i.if.end76.i_crit_edge

if.end67.i.if.end76.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

land.lhs.true70.i:                                ; preds = %if.end67.i
  %52 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %53)
  %cmp71.i = icmp ult i32 %53, 16
  br i1 %cmp71.i, label %if.then73.i, label %land.lhs.true70.i.if.end76.i_crit_edge

land.lhs.true70.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then73.i:                                      ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv74.i = trunc i32 %53 to i8
  %54 = ptrtoint ptr %ps_seq_id.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv74.i, ptr %ps_seq_id.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then73.i, %land.lhs.true70.i.if.end76.i_crit_edge, %if.end67.i.if.end76.i_crit_edge
  %ps_seq_loop.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 26
  %55 = ptrtoint ptr %ps_seq_loop.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ps_seq_loop.i, align 2
  %call.i280.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.46, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280.i)
  %tobool78.not.i = icmp eq i32 %call.i280.i, 0
  br i1 %tobool78.not.i, label %land.lhs.true79.i, label %if.end76.i.if.end85.i_crit_edge

if.end76.i.if.end85.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

land.lhs.true79.i:                                ; preds = %if.end76.i
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %57)
  %cmp80.i = icmp ult i32 %57, 16
  br i1 %cmp80.i, label %if.then82.i, label %land.lhs.true79.i.if.end85.i_crit_edge

land.lhs.true79.i.if.end85.i_crit_edge:           ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then82.i:                                      ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv83.i = trunc i32 %57 to i8
  %58 = ptrtoint ptr %ps_seq_loop.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv83.i, ptr %ps_seq_loop.i, align 2
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.i, %land.lhs.true79.i.if.end85.i_crit_edge, %if.end76.i.if.end85.i_crit_edge
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %gpi_str1.i, i32 0, i32 7
  %arrayidx106.i = getelementptr inbounds [14 x i8], ptr %gpi_str2.i, i32 0, i32 7
  %arrayidx120.i = getelementptr inbounds [18 x i8], ptr %gpi_str3.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end85.i
  %i.0305.i = phi i32 [ 0, %if.end85.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %59 = trunc i32 %i.0305.i to i8
  %conv89.i = add nuw nsw i8 %59, 48
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv89.i, ptr %arrayidx.i, align 1
  %arrayidx92.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 %i.0305.i
  %61 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %59, ptr %arrayidx92.i, align 1
  %call.i281.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull %gpi_str1.i, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %tobool94.not.i = icmp eq i32 %call.i281.i, 0
  br i1 %tobool94.not.i, label %land.lhs.true95.i, label %for.body.i.if.end103.i_crit_edge

for.body.i.if.end103.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

land.lhs.true95.i:                                ; preds = %for.body.i
  %62 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %63)
  %cmp96.i = icmp ult i32 %63, 16
  br i1 %cmp96.i, label %if.then98.i, label %land.lhs.true95.i.if.end103.i_crit_edge

land.lhs.true95.i.if.end103.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

if.then98.i:                                      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv99.i = trunc i32 %63 to i8
  %64 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv99.i, ptr %arrayidx92.i, align 1
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then98.i, %land.lhs.true95.i.if.end103.i_crit_edge, %for.body.i.if.end103.i_crit_edge
  %65 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv89.i, ptr %arrayidx106.i, align 1
  %mode.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 %i.0305.i, i32 1
  %66 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %mode.i, align 1
  %call110.i = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull %gpi_str2.i, ptr noundef nonnull %str.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.then112.i, label %if.end103.i.if.end117.i_crit_edge

if.end103.i.if.end117.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117.i

if.then112.i:                                     ; preds = %if.end103.i
  %67 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %str.i, align 4
  %call.i282.i = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(15) @.str.61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.i)
  %tobool.not.i283.i = icmp eq i32 %call.i282.i, 0
  br i1 %tobool.not.i283.i, label %if.then112.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge, label %if.else.i286.i

if.then112.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge: ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_gpi_mode_str.exit.i

if.else.i286.i:                                   ; preds = %if.then112.i
  %call1.i284.i = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(14) @.str.62) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i284.i)
  %tobool2.not.i285.i = icmp eq i32 %call1.i284.i, 0
  br i1 %tobool2.not.i285.i, label %if.else.i286.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge, label %do.end.i287.i

if.else.i286.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge: ; preds = %if.else.i286.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_gpi_mode_str.exit.i

do.end.i287.i:                                    ; preds = %if.else.i286.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.63) #12
  br label %da7280_haptic_of_gpi_mode_str.exit.i

da7280_haptic_of_gpi_mode_str.exit.i:             ; preds = %do.end.i287.i, %if.else.i286.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge, %if.then112.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge
  %retval.0.i288.i = phi i8 [ 0, %do.end.i287.i ], [ 0, %if.then112.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge ], [ 1, %if.else.i286.i.da7280_haptic_of_gpi_mode_str.exit.i_crit_edge ]
  %69 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %retval.0.i288.i, ptr %mode.i, align 1
  br label %if.end117.i

if.end117.i:                                      ; preds = %da7280_haptic_of_gpi_mode_str.exit.i, %if.end103.i.if.end117.i_crit_edge
  %70 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv89.i, ptr %arrayidx120.i, align 1
  %polarity.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 %i.0305.i, i32 2
  %71 = ptrtoint ptr %polarity.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %polarity.i, align 1
  %call124.i = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull %gpi_str3.i, ptr noundef nonnull %str.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %if.then126.i, label %if.end117.i.for.inc.i_crit_edge

if.end117.i.for.inc.i_crit_edge:                  ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then126.i:                                     ; preds = %if.end117.i
  %72 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %str.i, align 4
  %call.i289.i = call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(12) @.str.65) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289.i)
  %tobool.not.i290.i = icmp eq i32 %call.i289.i, 0
  br i1 %tobool.not.i290.i, label %if.then126.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge, label %if.else.i293.i

if.then126.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge: ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_gpi_pol_str.exit.i

if.else.i293.i:                                   ; preds = %if.then126.i
  %call1.i291.i = call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(13) @.str.66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i291.i)
  %tobool2.not.i292.i = icmp eq i32 %call1.i291.i, 0
  br i1 %tobool2.not.i292.i, label %if.else.i293.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge, label %if.else4.i296.i

if.else.i293.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge: ; preds = %if.else.i293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_gpi_pol_str.exit.i

if.else4.i296.i:                                  ; preds = %if.else.i293.i
  %call5.i294.i = call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(10) @.str.67) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i294.i)
  %tobool6.not.i295.i = icmp eq i32 %call5.i294.i, 0
  br i1 %tobool6.not.i295.i, label %if.else4.i296.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge, label %do.end.i297.i

if.else4.i296.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge: ; preds = %if.else4.i296.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_of_gpi_pol_str.exit.i

do.end.i297.i:                                    ; preds = %if.else4.i296.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.68) #12
  br label %da7280_haptic_of_gpi_pol_str.exit.i

da7280_haptic_of_gpi_pol_str.exit.i:              ; preds = %do.end.i297.i, %if.else4.i296.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge, %if.else.i293.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge, %if.then126.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge
  %retval.0.i298.i = phi i8 [ 0, %do.end.i297.i ], [ 0, %if.then126.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge ], [ 1, %if.else.i293.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge ], [ 2, %if.else4.i296.i.da7280_haptic_of_gpi_pol_str.exit.i_crit_edge ]
  %74 = ptrtoint ptr %polarity.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %retval.0.i298.i, ptr %polarity.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %da7280_haptic_of_gpi_pol_str.exit.i, %if.end117.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0305.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %call.i299.i = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.47) #9
  %bemf_sense_en.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 20
  %frombool.i = zext i1 %call.i299.i to i8
  %75 = ptrtoint ptr %bemf_sense_en.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool.i, ptr %bemf_sense_en.i, align 4
  %call.i300.i = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.48) #9
  %freq_track_en.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 21
  %frombool134.i = zext i1 %call.i300.i to i8
  %76 = ptrtoint ptr %freq_track_en.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool134.i, ptr %freq_track_en.i, align 1
  %call.i301.i = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.49) #9
  %acc_en.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 22
  %frombool136.i = zext i1 %call.i301.i to i8
  %77 = ptrtoint ptr %acc_en.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool136.i, ptr %acc_en.i, align 2
  %call.i302.i = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.50) #9
  %rapid_stop_en.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 23
  %frombool138.i = zext i1 %call.i302.i to i8
  %78 = ptrtoint ptr %rapid_stop_en.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %frombool138.i, ptr %rapid_stop_en.i, align 1
  %call.i303.i = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.51) #9
  %amp_pid_en.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 24
  %frombool140.i = zext i1 %call.i303.i to i8
  %79 = ptrtoint ptr %amp_pid_en.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool140.i, ptr %amp_pid_en.i, align 4
  %mem_update.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 28
  %80 = ptrtoint ptr %mem_update.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %mem_update.i, align 4
  %call142.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef nonnull %mem.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %if.then144.i, label %for.end.i.da7280_parse_properties.exit_crit_edge

for.end.i.da7280_parse_properties.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_parse_properties.exit

if.then144.i:                                     ; preds = %for.end.i
  %81 = ptrtoint ptr %mem_update.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %mem_update.i, align 4
  %snp_mem.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 29
  %82 = call ptr @memset(ptr %snp_mem.i, i32 0, i32 100)
  br label %for.body150.i

for.body150.i:                                    ; preds = %if.then154.i.for.body150.i_crit_edge, %if.then144.i
  %i.1306.i = phi i32 [ 0, %if.then144.i ], [ %inc165.i, %if.then154.i.for.body150.i_crit_edge ]
  %arrayidx151.i = getelementptr [100 x i32], ptr %mem.i, i32 0, i32 %i.1306.i
  %83 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %84)
  %cmp152.i = icmp ult i32 %84, 256
  br i1 %cmp152.i, label %if.then154.i, label %do.end.i

if.then154.i:                                     ; preds = %for.body150.i
  %conv156.i = trunc i32 %84 to i8
  %arrayidx158.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 29, i32 %i.1306.i
  %85 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv156.i, ptr %arrayidx158.i, align 1
  %inc165.i = add nuw nsw i32 %i.1306.i, 1
  %exitcond309.not.i = icmp eq i32 %inc165.i, 100
  br i1 %exitcond309.not.i, label %if.then154.i.da7280_parse_properties.exit_crit_edge, label %if.then154.i.for.body150.i_crit_edge

if.then154.i.for.body150.i_crit_edge:             ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body150.i

if.then154.i.da7280_parse_properties.exit_crit_edge: ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_parse_properties.exit

do.end.i:                                         ; preds = %for.body150.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.53, i32 noundef %i.1306.i, i32 noundef %84) #12
  %88 = ptrtoint ptr %mem_update.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %mem_update.i, align 4
  br label %da7280_parse_properties.exit

da7280_parse_properties.exit:                     ; preds = %do.end.i, %if.then154.i.da7280_parse_properties.exit_crit_edge, %for.end.i.da7280_parse_properties.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #9
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %gpi_str3.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %gpi_str2.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gpi_str1.i) #9
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %mem.i) #9
  %89 = ptrtoint ptr %const_op_mode.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %const_op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp = icmp eq i8 %90, 2
  br i1 %cmp, label %if.then7, label %da7280_parse_properties.exit.do.body42_crit_edge

da7280_parse_properties.exit.do.body42_crit_edge: ; preds = %da7280_parse_properties.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

if.then7:                                         ; preds = %da7280_parse_properties.exit
  %call8 = call ptr @devm_pwm_get(ptr noundef %dev1, ptr noundef null) #9
  %pwm_dev = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 4
  %91 = ptrtoint ptr %pwm_dev to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call8, ptr %pwm_dev, align 4
  %cmp.i.i190 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %92 = ptrtoint ptr %call8 to i32
  %spec.select.i = select i1 %cmp.i.i190, i32 %92, i32 0
  %93 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %do.end18 [
    i32 0, label %if.end20
    i32 -517, label %if.then7.cleanup_crit_edge
  ]

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %spec.select.i) #12
  br label %cleanup

if.end20:                                         ; preds = %if.then7
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call8, i32 0, i32 7
  %94 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call8, i32 0, i32 6
  %95 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %call8, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %args.sroa.0.0.copyload8.i, ptr %state, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %98 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %99 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 4
  %100 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %usage_power.i, align 1
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %101 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %enabled, align 4
  %call23 = call i32 @pwm_apply_state(ptr noundef %call8, ptr noundef nonnull %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call23) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %102 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %state, align 8
  %104 = add i64 %103, -100001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -96001, i64 %104)
  %105 = icmp ult i64 %104, -96001
  br i1 %105, label %do.end38, label %if.end29.do.body42_crit_edge

if.end29.do.body42_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i64 noundef %103) #12
  br label %cleanup

do.body42:                                        ; preds = %if.end29.do.body42_crit_edge, %da7280_parse_properties.exit.do.body42_crit_edge
  %work = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %106 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @da7280_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry46 = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 6, i32 1
  %107 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 6, i32 2
  %109 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @da7280_haptic_work, ptr %func, align 4
  %client50 = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 3
  %110 = ptrtoint ptr %client50 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %client, ptr %client50, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %111 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call51 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @da7280_haptic_regmap_config, ptr noundef nonnull @da7280_probe._key, ptr noundef nonnull @.str.16) #9
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call51, ptr %call.i, align 4
  %cmp.i.i191.not = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i191.not, label %do.end58, label %if.end59

do.end58:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %call51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %113) #12
  br label %cleanup

if.end59:                                         ; preds = %do.body42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i193) #9
  %114 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %val.i193, align 4
  %115 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %116)
  %cmp.i195 = icmp eq i8 %116, 3
  br i1 %cmp.i195, label %if.then.i198, label %if.end59.if.end6.i_crit_edge

if.end59.if.end6.i_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i198:                                     ; preds = %if.end59
  %call.i196 = call i32 @regmap_read(ptr noundef %call51, i32 noundef 19, ptr noundef nonnull %val.i193) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not.i197 = icmp eq i32 %call.i196, 0
  br i1 %tobool.not.i197, label %if.end.i199, label %if.then.i198.do.end65_crit_edge

if.then.i198.do.end65_crit_edge:                  ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end.i199:                                      ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %val.i193 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val.i193, align 4
  %119 = trunc i32 %118 to i8
  %120 = lshr i8 %119, 4
  %conv4.i = and i8 %120, 2
  %121 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv4.i, ptr %dev_type.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i199, %if.end59.if.end6.i_crit_edge
  %122 = phi i8 [ %conv4.i, %if.end.i199 ], [ %116, %if.end59.if.end6.i_crit_edge ]
  %123 = zext i8 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %122, label %if.end6.i.if.end42.i_crit_edge [
    i8 0, label %land.lhs.true.i201
    i8 2, label %if.then29.i
  ]

if.end6.i.if.end42.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true.i201:                               ; preds = %if.end6.i
  %124 = ptrtoint ptr %resonant_freq_l.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %resonant_freq_l.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %125)
  %cmp11.not.i = icmp eq i32 %125, 256
  br i1 %cmp11.not.i, label %land.lhs.true.i201.if.end42.i_crit_edge, label %if.then13.i

land.lhs.true.i201.if.end42.i_crit_edge:          ; preds = %land.lhs.true.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then13.i:                                      ; preds = %land.lhs.true.i201
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 4
  %128 = ptrtoint ptr %resonant_freq_h.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %resonant_freq_h.i, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %127, i32 noundef 10, i32 noundef %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i203 = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i203, label %if.end18.i, label %if.then13.i.do.end65_crit_edge

if.then13.i.do.end65_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end18.i:                                       ; preds = %if.then13.i
  %130 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %call.i, align 4
  %132 = ptrtoint ptr %resonant_freq_l.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %resonant_freq_l.i, align 4
  %call21.i = call i32 @regmap_write(ptr noundef %131, i32 noundef 11, i32 noundef %133) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end18.i.if.end42.i_crit_edge, label %if.end18.i.do.end65_crit_edge

if.end18.i.do.end65_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end18.i.if.end42.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then29.i:                                      ; preds = %if.end6.i
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  %call.i.i204 = call i32 @regmap_update_bits_base(ptr noundef %135, i32 noundef 23, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i204)
  %tobool32.not.i = icmp eq i32 %call.i.i204, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.then29.i.do.end65_crit_edge

if.then29.i.do.end65_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end34.i:                                       ; preds = %if.then29.i
  %136 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 192, ptr %val.i193, align 4
  %137 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call.i, align 4
  %call.i641.i = call i32 @regmap_update_bits_base(ptr noundef %138, i32 noundef 22, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i641.i)
  %tobool38.not.i = icmp eq i32 %call.i641.i, 0
  br i1 %tobool38.not.i, label %if.end40.i208, label %if.end34.i.do.end65_crit_edge

if.end34.i.do.end65_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end40.i208:                                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %acc_en.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %acc_en.i, align 2
  %140 = ptrtoint ptr %rapid_stop_en.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %rapid_stop_en.i, align 1
  %141 = ptrtoint ptr %amp_pid_en.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %amp_pid_en.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end40.i208, %if.end18.i.if.end42.i_crit_edge, %land.lhs.true.i201.if.end42.i_crit_edge, %if.end6.i.if.end42.i_crit_edge
  %142 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool69.not.not.i = icmp eq i8 %143, 0
  %shl.i = select i1 %tobool69.not.not.i, i32 0, i32 32
  %144 = ptrtoint ptr %bemf_sense_en.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bemf_sense_en.i, align 4, !range !309
  %146 = shl nuw nsw i8 %145, 4
  %shl105.i = zext i8 %146 to i32
  %or.i = or i32 %shl.i, %shl105.i
  %147 = ptrtoint ptr %freq_track_en.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %freq_track_en.i, align 1, !range !309
  %149 = shl nuw nsw i8 %148, 3
  %shl140.i = zext i8 %149 to i32
  %or142.i = or i32 %or.i, %shl140.i
  %150 = ptrtoint ptr %acc_en.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %acc_en.i, align 2, !range !309
  %152 = shl nuw nsw i8 %151, 2
  %shl177.i = zext i8 %152 to i32
  %or179.i = or i32 %or142.i, %shl177.i
  %153 = ptrtoint ptr %rapid_stop_en.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %rapid_stop_en.i, align 1, !range !309
  %155 = shl nuw nsw i8 %154, 1
  %shl214.i = zext i8 %155 to i32
  %or216.i = or i32 %or179.i, %shl214.i
  %156 = ptrtoint ptr %amp_pid_en.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %amp_pid_en.i, align 4, !range !309
  %158 = zext i8 %157 to i32
  %or253.i = or i32 %or216.i, %158
  %159 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or253.i, ptr %val.i193, align 4
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call.i, align 4
  %call.i642.i = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef 19, i32 noundef 63, i32 noundef %or253.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i642.i)
  %tobool257.not.i = icmp eq i32 %call.i642.i, 0
  br i1 %tobool257.not.i, label %if.end259.i, label %if.end42.i.do.end65_crit_edge

if.end42.i.do.end65_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end259.i:                                      ; preds = %if.end42.i
  %162 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %call.i, align 4
  %164 = ptrtoint ptr %acc_en.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %acc_en.i, align 2, !range !309
  %166 = zext i8 %165 to i32
  %call.i643.i = call i32 @regmap_update_bits_base(ptr noundef %163, i32 noundef 110, i32 noundef 1, i32 noundef %166, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i643.i)
  %tobool266.not.i = icmp eq i32 %call.i643.i, 0
  br i1 %tobool266.not.i, label %if.end268.i, label %if.end259.i.do.end65_crit_edge

if.end259.i.do.end65_crit_edge:                   ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end268.i:                                      ; preds = %if.end259.i
  %167 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %call.i, align 4
  %169 = ptrtoint ptr %acc_en.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %acc_en.i, align 2, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool271.not.i = icmp eq i8 %170, 0
  %cond273.i = select i1 %tobool271.not.i, i32 16, i32 0
  %call.i644.i = call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef 20, i32 noundef 16, i32 noundef %cond273.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i644.i)
  %tobool275.not.i = icmp eq i32 %call.i644.i, 0
  br i1 %tobool275.not.i, label %if.end277.i, label %if.end268.i.do.end65_crit_edge

if.end268.i.do.end65_crit_edge:                   ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end277.i:                                      ; preds = %if.end268.i
  %171 = ptrtoint ptr %nommax.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %nommax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %172)
  %cmp279.not.i = icmp eq i16 %172, 256
  br i1 %cmp279.not.i, label %if.end277.i.if.end289.i_crit_edge, label %if.then281.i

if.end277.i.if.end289.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end289.i

if.then281.i:                                     ; preds = %if.end277.i
  %conv278.i = zext i16 %172 to i32
  %173 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %call.i, align 4
  %call285.i = call i32 @regmap_write(ptr noundef %174, i32 noundef 12, i32 noundef %conv278.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285.i)
  %tobool286.not.i = icmp eq i32 %call285.i, 0
  br i1 %tobool286.not.i, label %if.then281.i.if.end289.i_crit_edge, label %if.then281.i.do.end65_crit_edge

if.then281.i.do.end65_crit_edge:                  ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.then281.i.if.end289.i_crit_edge:               ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end289.i

if.end289.i:                                      ; preds = %if.then281.i.if.end289.i_crit_edge, %if.end277.i.if.end289.i_crit_edge
  %175 = ptrtoint ptr %absmax.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %absmax.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %176)
  %cmp291.not.i = icmp eq i16 %176, 256
  br i1 %cmp291.not.i, label %if.end289.i.if.end301.i_crit_edge, label %if.then293.i

if.end289.i.if.end301.i_crit_edge:                ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301.i

if.then293.i:                                     ; preds = %if.end289.i
  %conv290.i = zext i16 %176 to i32
  %177 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %call.i, align 4
  %call297.i = call i32 @regmap_write(ptr noundef %178, i32 noundef 13, i32 noundef %conv290.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297.i)
  %tobool298.not.i = icmp eq i32 %call297.i, 0
  br i1 %tobool298.not.i, label %if.then293.i.if.end301.i_crit_edge, label %if.then293.i.do.end65_crit_edge

if.then293.i.do.end65_crit_edge:                  ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.then293.i.if.end301.i_crit_edge:               ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301.i

if.end301.i:                                      ; preds = %if.then293.i.if.end301.i_crit_edge, %if.end289.i.if.end301.i_crit_edge
  %179 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %call.i, align 4
  %181 = ptrtoint ptr %imax.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %imax.i, align 4
  %call.i645.i = call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef 14, i32 noundef 31, i32 noundef %182, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i645.i)
  %tobool304.not.i = icmp eq i32 %call.i645.i, 0
  br i1 %tobool304.not.i, label %if.end306.i, label %if.end301.i.do.end65_crit_edge

if.end301.i.do.end65_crit_edge:                   ; preds = %if.end301.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end306.i:                                      ; preds = %if.end301.i
  %183 = ptrtoint ptr %impd.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %impd.i, align 4
  %185 = ptrtoint ptr %imax.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %imax.i, align 4
  %add.i215 = add i32 %186, 4
  %mul.i216 = mul i32 %add.i215, %184
  %div.i217 = udiv i32 %mul.i216, 1610400
  %187 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call.i, align 4
  %and309.i = and i32 %div.i217, 255
  %call310.i = call i32 @regmap_write(ptr noundef %188, i32 noundef 16, i32 noundef %and309.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310.i)
  %tobool311.not.i = icmp eq i32 %call310.i, 0
  br i1 %tobool311.not.i, label %if.end313.i, label %if.end306.i.do.end65_crit_edge

if.end306.i.do.end65_crit_edge:                   ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end313.i:                                      ; preds = %if.end306.i
  %189 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %call.i, align 4
  %shr.i218 = lshr i32 %div.i217, 8
  %call315.i = call i32 @regmap_write(ptr noundef %190, i32 noundef 15, i32 noundef %shr.i218) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315.i)
  %tobool316.not.i = icmp eq i32 %call315.i, 0
  br i1 %tobool316.not.i, label %if.end318.i, label %if.end313.i.do.end65_crit_edge

if.end313.i.do.end65_crit_edge:                   ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end318.i:                                      ; preds = %if.end313.i
  %191 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %call.i, align 4
  %call.i646.i = call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef 34, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i646.i)
  %tobool321.not.i = icmp eq i32 %call.i646.i, 0
  br i1 %tobool321.not.i, label %if.end323.i, label %if.end318.i.do.end65_crit_edge

if.end318.i.do.end65_crit_edge:                   ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end323.i:                                      ; preds = %if.end318.i
  %193 = ptrtoint ptr %mem_update.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %mem_update.i, align 4, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool324.not.i = icmp eq i8 %194, 0
  br i1 %tobool324.not.i, label %if.end323.i.do.body337.i_crit_edge, label %if.then325.i

if.end323.i.do.body337.i_crit_edge:               ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body337.i

if.then325.i:                                     ; preds = %if.end323.i
  %call326.i = call fastcc i32 @da7280_haptic_mem_update(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326.i)
  %tobool327.not.i = icmp eq i32 %call326.i, 0
  br i1 %tobool327.not.i, label %if.then325.i.do.body337.i_crit_edge, label %if.then325.i.do.end65_crit_edge

if.then325.i.do.end65_crit_edge:                  ; preds = %if.then325.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.then325.i.do.body337.i_crit_edge:              ; preds = %if.then325.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body337.i

do.body337.i:                                     ; preds = %if.then325.i.do.body337.i_crit_edge, %if.end323.i.do.body337.i_crit_edge
  %195 = ptrtoint ptr %ps_seq_id.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %ps_seq_id.i, align 1
  %197 = ptrtoint ptr %ps_seq_loop.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ps_seq_loop.i, align 2
  %199 = and i8 %196, 15
  %and358.i = zext i8 %199 to i32
  %conv384.i = zext i8 %198 to i32
  %shl385.i = shl nuw nsw i32 %conv384.i, 4
  %and386.i = and i32 %shl385.i, 240
  %or387.i = or i32 %and386.i, %and358.i
  %200 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %or387.i, ptr %val.i193, align 4
  %201 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %call.i, align 4
  %call389.i = call i32 @regmap_write(ptr noundef %202, i32 noundef 40, i32 noundef %or387.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389.i)
  %tobool390.not.i = icmp eq i32 %call389.i, 0
  br i1 %tobool390.not.i, label %do.body401.preheader.i, label %do.body337.i.do.end65_crit_edge

do.body337.i.do.end65_crit_edge:                  ; preds = %do.body337.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.body401.preheader.i:                           ; preds = %do.body337.i
  %arrayidx.i222 = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 0
  %203 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i222, align 1
  %mode.i223 = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 0, i32 1
  %205 = ptrtoint ptr %mode.i223 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %mode.i223, align 1
  %polarity.i224 = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 0, i32 2
  %207 = ptrtoint ptr %polarity.i224 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %polarity.i224, align 1
  %conv424.i = zext i8 %204 to i32
  %shl425.i = shl nuw nsw i32 %conv424.i, 3
  %and426.i = and i32 %shl425.i, 120
  %conv458.i = zext i8 %206 to i32
  %shl459.i = shl nuw nsw i32 %conv458.i, 2
  %and460.i = and i32 %shl459.i, 4
  %or461.i = or i32 %and460.i, %and426.i
  %209 = and i8 %208, 3
  %and495.i = zext i8 %209 to i32
  %or496.i = or i32 %or461.i, %and495.i
  %210 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %or496.i, ptr %val.i193, align 4
  %211 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %call.i, align 4
  %call499.i = call i32 @regmap_write(ptr noundef %212, i32 noundef 41, i32 noundef %or496.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call499.i)
  %tobool500.not.i = icmp eq i32 %call499.i, 0
  br i1 %tobool500.not.i, label %for.cond.i, label %do.body401.preheader.i.do.end65_crit_edge

do.body401.preheader.i.do.end65_crit_edge:        ; preds = %do.body401.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

for.cond.i:                                       ; preds = %do.body401.preheader.i
  %arrayidx.1.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 1
  %213 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx.1.i, align 1
  %mode.1.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 1, i32 1
  %215 = ptrtoint ptr %mode.1.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %mode.1.i, align 1
  %polarity.1.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 1, i32 2
  %217 = ptrtoint ptr %polarity.1.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %polarity.1.i, align 1
  %conv424.1.i = zext i8 %214 to i32
  %shl425.1.i = shl nuw nsw i32 %conv424.1.i, 3
  %and426.1.i = and i32 %shl425.1.i, 120
  %conv458.1.i = zext i8 %216 to i32
  %shl459.1.i = shl nuw nsw i32 %conv458.1.i, 2
  %and460.1.i = and i32 %shl459.1.i, 4
  %or461.1.i = or i32 %and460.1.i, %and426.1.i
  %219 = and i8 %218, 3
  %and495.1.i = zext i8 %219 to i32
  %or496.1.i = or i32 %or461.1.i, %and495.1.i
  %220 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %or496.1.i, ptr %val.i193, align 4
  %221 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %call.i, align 4
  %call499.1.i = call i32 @regmap_write(ptr noundef %222, i32 noundef 42, i32 noundef %or496.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call499.1.i)
  %tobool500.not.1.i = icmp eq i32 %call499.1.i, 0
  br i1 %tobool500.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end65_crit_edge

for.cond.i.do.end65_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 2
  %223 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.2.i, align 1
  %mode.2.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 2, i32 1
  %225 = ptrtoint ptr %mode.2.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %mode.2.i, align 1
  %polarity.2.i = getelementptr %struct.da7280_haptic, ptr %call.i, i32 0, i32 27, i32 2, i32 2
  %227 = ptrtoint ptr %polarity.2.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %polarity.2.i, align 1
  %conv424.2.i = zext i8 %224 to i32
  %shl425.2.i = shl nuw nsw i32 %conv424.2.i, 3
  %and426.2.i = and i32 %shl425.2.i, 120
  %conv458.2.i = zext i8 %226 to i32
  %shl459.2.i = shl nuw nsw i32 %conv458.2.i, 2
  %and460.2.i = and i32 %shl459.2.i, 4
  %or461.2.i = or i32 %and460.2.i, %and426.2.i
  %229 = and i8 %228, 3
  %and495.2.i = zext i8 %229 to i32
  %or496.2.i = or i32 %or461.2.i, %and495.2.i
  %230 = ptrtoint ptr %val.i193 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %or496.2.i, ptr %val.i193, align 4
  %231 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %call.i, align 4
  %call499.2.i = call i32 @regmap_write(ptr noundef %232, i32 noundef 43, i32 noundef %or496.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call499.2.i)
  %tobool500.not.2.i = icmp eq i32 %call499.2.i, 0
  br i1 %tobool500.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end65_crit_edge

for.cond.1.i.do.end65_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %233 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %call.i, align 4
  %call.i647.i = call i32 @regmap_update_bits_base(ptr noundef %234, i32 noundef 131, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i647.i)
  %tobool505.not.i = icmp eq i32 %call.i647.i, 0
  br i1 %tobool505.not.i, label %if.end507.i, label %for.cond.2.i.do.end65_crit_edge

for.cond.2.i.do.end65_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end507.i:                                      ; preds = %for.cond.2.i
  %235 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %call.i, align 4
  %call509.i = call i32 @regmap_write(ptr noundef %236, i32 noundef 3, i32 noundef 255) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call509.i)
  %tobool510.not.i = icmp eq i32 %call509.i, 0
  br i1 %tobool510.not.i, label %if.end512.i, label %if.end507.i.do.end65_crit_edge

if.end507.i.do.end65_crit_edge:                   ; preds = %if.end507.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end512.i:                                      ; preds = %if.end507.i
  %237 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %call.i, align 4
  %call.i648.i = call i32 @regmap_update_bits_base(ptr noundef %238, i32 noundef 7, i32 noundef 20, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i648.i)
  %tobool515.not.i = icmp eq i32 %call.i648.i, 0
  br i1 %tobool515.not.i, label %if.end66, label %if.end512.i.do.end65_crit_edge

if.end512.i.do.end65_crit_edge:                   ; preds = %if.end512.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.end65:                                         ; preds = %if.end512.i.do.end65_crit_edge, %if.end507.i.do.end65_crit_edge, %for.cond.2.i.do.end65_crit_edge, %for.cond.1.i.do.end65_crit_edge, %for.cond.i.do.end65_crit_edge, %do.body401.preheader.i.do.end65_crit_edge, %do.body337.i.do.end65_crit_edge, %if.then325.i.do.end65_crit_edge, %if.end318.i.do.end65_crit_edge, %if.end313.i.do.end65_crit_edge, %if.end306.i.do.end65_crit_edge, %if.end301.i.do.end65_crit_edge, %if.then293.i.do.end65_crit_edge, %if.then281.i.do.end65_crit_edge, %if.end268.i.do.end65_crit_edge, %if.end259.i.do.end65_crit_edge, %if.end42.i.do.end65_crit_edge, %if.end34.i.do.end65_crit_edge, %if.then29.i.do.end65_crit_edge, %if.end18.i.do.end65_crit_edge, %if.then13.i.do.end65_crit_edge, %if.then.i198.do.end65_crit_edge
  %error.0.i = phi i32 [ %call.i196, %if.then.i198.do.end65_crit_edge ], [ %call15.i, %if.then13.i.do.end65_crit_edge ], [ %call21.i, %if.end18.i.do.end65_crit_edge ], [ %call.i642.i, %if.end42.i.do.end65_crit_edge ], [ %call.i643.i, %if.end259.i.do.end65_crit_edge ], [ %call.i644.i, %if.end268.i.do.end65_crit_edge ], [ %call285.i, %if.then281.i.do.end65_crit_edge ], [ %call297.i, %if.then293.i.do.end65_crit_edge ], [ %call.i645.i, %if.end301.i.do.end65_crit_edge ], [ %call310.i, %if.end306.i.do.end65_crit_edge ], [ %call315.i, %if.end313.i.do.end65_crit_edge ], [ %call.i646.i, %if.end318.i.do.end65_crit_edge ], [ %call326.i, %if.then325.i.do.end65_crit_edge ], [ %call389.i, %do.body337.i.do.end65_crit_edge ], [ %call.i647.i, %for.cond.2.i.do.end65_crit_edge ], [ %call509.i, %if.end507.i.do.end65_crit_edge ], [ %call.i648.i, %if.end512.i.do.end65_crit_edge ], [ %call.i.i204, %if.then29.i.do.end65_crit_edge ], [ %call.i641.i, %if.end34.i.do.end65_crit_edge ], [ %call499.i, %do.body401.preheader.i.do.end65_crit_edge ], [ %call499.1.i, %for.cond.i.do.end65_crit_edge ], [ %call499.2.i, %for.cond.1.i.do.end65_crit_edge ]
  %239 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.96, i32 noundef %error.0.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i193) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %error.0.i) #12
  br label %cleanup

if.end66:                                         ; preds = %if.end512.i
  %active.i = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 30
  %241 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %active.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i193) #9
  %call67 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #9
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %do.end72, label %if.end73

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %242 = ptrtoint ptr %call67 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @.str.26, ptr %call67, align 8
  %parent = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 1
  %243 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %parent, align 8
  %parent76 = getelementptr inbounds %struct.input_dev, ptr %call67, i32 0, i32 40, i32 1
  %245 = ptrtoint ptr %parent76 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %244, ptr %parent76, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call67, i32 0, i32 31
  %246 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @da7280_haptic_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call67, i32 0, i32 32
  %247 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @da7280_haptic_close, ptr %close, align 4
  %driver_data.i.i225 = getelementptr inbounds %struct.input_dev, ptr %call67, i32 0, i32 40, i32 8
  %248 = ptrtoint ptr %driver_data.i.i225 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call.i, ptr %driver_data.i.i225, align 4
  %input_dev77 = getelementptr inbounds %struct.da7280_haptic, ptr %call.i, i32 0, i32 1
  %249 = ptrtoint ptr %input_dev77 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call67, ptr %input_dev77, align 4
  call void @input_set_capability(ptr noundef nonnull %call67, i32 noundef 21, i32 noundef 81) #9
  %250 = ptrtoint ptr %input_dev77 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %input_dev77, align 4
  call void @input_set_capability(ptr noundef %251, i32 noundef 21, i32 noundef 93) #9
  %252 = ptrtoint ptr %input_dev77 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %input_dev77, align 4
  call void @input_set_capability(ptr noundef %253, i32 noundef 21, i32 noundef 82) #9
  %254 = ptrtoint ptr %input_dev77 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %input_dev77, align 4
  call void @input_set_capability(ptr noundef %255, i32 noundef 21, i32 noundef 96) #9
  %256 = ptrtoint ptr %input_dev77 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %input_dev77, align 4
  %call83 = call i32 @input_ff_create(ptr noundef %257, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end89, label %do.end88

do.end88:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call83) #12
  br label %cleanup

if.end89:                                         ; preds = %if.end73
  %ff90 = getelementptr inbounds %struct.input_dev, ptr %call67, i32 0, i32 20
  %258 = ptrtoint ptr %ff90 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ff90, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @da7280_haptics_upload_effect, ptr %259, align 4
  %playback = getelementptr inbounds %struct.ff_device, ptr %259, i32 0, i32 2
  %261 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @da7280_haptics_playback, ptr %playback, align 4
  %call91 = call i32 @input_register_device(ptr noundef nonnull %call67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end97, label %do.end96

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call91) #12
  br label %cleanup

if.end97:                                         ; preds = %if.end89
  %262 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %irq, align 4
  %call99 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %263, ptr noundef null, ptr noundef nonnull @da7280_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end97.cleanup_crit_edge, label %do.end104

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %264 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %265, i32 noundef %call99) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %if.end97.cleanup_crit_edge, %do.end96, %do.end88, %do.end72, %do.end65, %do.end58, %do.end38, %do.end28, %do.end18, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ -22, %do.end38 ], [ %113, %do.end58 ], [ %error.0.i, %do.end65 ], [ %call83, %do.end88 ], [ %call91, %do.end96 ], [ %call99, %do.end104 ], [ -12, %do.end72 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select.i, %if.then7.cleanup_crit_edge ], [ %spec.select.i, %do.end18 ], [ 0, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7280_haptic_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %val1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %active.i = getelementptr i8, ptr %work, i32 193
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active.i, align 1, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %op_mode.i = getelementptr i8, ptr %work, i32 53
  %4 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %op_mode.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %5, label %do.end29.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb22.i
    i8 3, label %if.end.i.sw.epilog.i_crit_edge
    i8 4, label %if.end.i.sw.epilog.i_crit_edge4
  ]

if.end.i.sw.epilog.i_crit_edge4:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %acc_en.i = getelementptr i8, ptr %work, i32 78
  %7 = ptrtoint ptr %acc_en.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %acc_en.i, align 2, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %sw.bb.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb.i.if.else.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %level.i = getelementptr i8, ptr %work, i32 50
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %level.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %10)
  %cmp.i = icmp sgt i16 %10, 127
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %level.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 127, ptr %level.i, align 2
  br label %if.end14.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.i.if.else.i_crit_edge
  %level7.i = getelementptr i8, ptr %work, i32 50
  %12 = ptrtoint ptr %level7.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %level7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %13)
  %cmp9.i = icmp sgt i16 %13, 255
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i.if.end14.i_crit_edge

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %level7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 255, ptr %level7.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.else.i.if.end14.i_crit_edge, %if.then5.i
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %level15.i = getelementptr i8, ptr %work, i32 50
  %17 = ptrtoint ptr %level15.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %level15.i, align 2
  %conv16.i = sext i16 %18 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 35, i32 noundef %conv16.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.sw.epilog.i_crit_edge, label %do.end.i

if.end14.i.sw.epilog.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %work, i32 -16
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %level15.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %level15.i, align 2
  %conv20.i = sext i16 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.70, i32 noundef %conv20.i, i32 noundef %call.i) #12
  br label %if.end

sw.bb22.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #9
  %gain.i.i = getelementptr i8, ptr %work, i32 48
  %23 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gain.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr i8, ptr %work, i32 -16
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.81) #12
  br label %da7280_haptic_set_pwm.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb22.i
  %pwm_dev.i.i = getelementptr i8, ptr %work, i32 -8
  %27 = ptrtoint ptr %pwm_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwm_dev.i.i, align 4
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %28, i32 0, i32 7
  %29 = call ptr @memcpy(ptr %state.i.i, ptr %state1.i.i.i, i32 24)
  %enabled3.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %enabled3.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %enabled3.i.i, align 4
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %state.i.i, align 8
  %conv.i.i = zext i16 %24 to i64
  %mul.i.i = mul i64 %32, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 15
  %acc_en.i.i = getelementptr i8, ptr %work, i32 78
  %33 = ptrtoint ptr %acc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %acc_en.i.i, align 2, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool8.not.i.i = icmp eq i8 %34, 0
  %add.i.i = add i64 %shr.i.i, %32
  %div36.i.i = lshr i64 %add.i.i, 1
  %period_mag_multi.0.i.i = select i1 %tobool8.not.i.i, i64 %div36.i.i, i64 %shr.i.i
  %duty_cycle.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %period_mag_multi.0.i.i, ptr %duty_cycle.i.i, align 8
  %call.i.i = call i32 @pwm_apply_state(ptr noundef %28, ptr noundef nonnull %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %da7280_haptic_set_pwm.exit.i, label %do.end18.i.i

do.end18.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev19.i.i = getelementptr i8, ptr %work, i32 -16
  %36 = ptrtoint ptr %dev19.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev19.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.84, i32 noundef %call.i.i) #12
  br label %da7280_haptic_set_pwm.exit.thread.i

da7280_haptic_set_pwm.exit.thread.i:              ; preds = %do.end18.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #9
  br label %if.end

da7280_haptic_set_pwm.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #9
  br label %sw.epilog.i

do.end29.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %5 to i32
  %dev30.i = getelementptr i8, ptr %work, i32 -16
  %38 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev30.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.73, i32 noundef %conv.i) #12
  br label %if.end

sw.epilog.i:                                      ; preds = %da7280_haptic_set_pwm.exit.i, %if.end14.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %42 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %op_mode.i, align 1
  %conv35.i = zext i8 %43 to i32
  %call.i90.i = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 34, i32 noundef 7, i32 noundef %conv35.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i)
  %tobool37.not.i = icmp eq i32 %call.i90.i, 0
  br i1 %tobool37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev42.i = getelementptr i8, ptr %work, i32 -16
  %44 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev42.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.76, i32 noundef %call.i90.i) #12
  br label %if.end

if.end43.i:                                       ; preds = %sw.epilog.i
  %46 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %op_mode.i, align 1
  %48 = and i8 %47, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %switch.i = icmp eq i8 %48, 2
  br i1 %switch.i, label %if.then52.i, label %if.end43.i.if.end62.i_crit_edge

if.end43.i.if.end62.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then52.i:                                      ; preds = %if.end43.i
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  %call.i91.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 34, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool55.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool55.not.i, label %if.then52.i.if.end62.i_crit_edge, label %do.end59.i

if.then52.i.if.end62.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

do.end59.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev60.i = getelementptr i8, ptr %work, i32 -16
  %51 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev60.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.79, i32 noundef %call.i91.i) #12
  br label %if.end

if.end62.i:                                       ; preds = %if.then52.i.if.end62.i_crit_edge, %if.end43.i.if.end62.i_crit_edge
  %53 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %active.i, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @da7280_haptic_deactivate(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end62.i, %do.end59.i, %do.end41.i, %do.end29.i, %da7280_haptic_set_pwm.exit.thread.i, %do.end.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_haptic_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 34, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.da7280_haptic_start.exit_crit_edge, label %do.end.i

entry.da7280_haptic_start.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_start.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.103, i32 noundef %call.i.i) #12
  br label %da7280_haptic_start.exit

da7280_haptic_start.exit:                         ; preds = %do.end.i, %entry.da7280_haptic_start.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7280_haptic_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work.i = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #9
  tail call fastcc void @da7280_haptic_deactivate(ptr noundef %1) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 34, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.da7280_haptic_stop.exit_crit_edge, label %do.end.i

entry.da7280_haptic_stop.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_stop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.105, i32 noundef %call.i.i) #12
  br label %da7280_haptic_stop.exit

da7280_haptic_stop.exit:                          ; preds = %do.end.i, %entry.da7280_haptic_stop.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_haptics_upload_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %effect, ptr nocapture noundef readnone %old) #2 align 64 {
entry:
  %data = alloca [100 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %data) #9
  %2 = call ptr @memset(ptr %data, i32 0, i32 200)
  %active = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 30
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active, align 1, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %effect, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %6, label %do.end293 [
    i16 82, label %sw.bb
    i16 81, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %const_op_mode = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %const_op_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %const_op_mode, align 2
  %op_mode = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %op_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %op_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %u, align 4
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = sext i16 %12 to i32
  %mul = mul nsw i32 %conv5, 254
  %div = sdiv i32 %mul, 32767
  %conv6 = trunc i32 %div to i16
  %level7 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %level7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6, ptr %level7, align 2
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i16 @llvm.smax.i16(i16 %12, i16 0)
  %gain = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %gain to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %gain, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %u19 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %16 = ptrtoint ptr %u19 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %u19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 93, i16 %17)
  %cmp21.not = icmp eq i16 %17, 93
  br i1 %cmp21.not, label %if.end25, label %do.end

do.end:                                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.107) #12
  br label %cleanup

if.end25:                                         ; preds = %sw.bb18
  %custom_len = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %20 = ptrtoint ptr %custom_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %custom_len, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %21, label %if.end36 [
    i32 2, label %set_seq_id_loop
    i32 3, label %set_gpix_seq_id
  ]

if.end36:                                         ; preds = %if.end25
  %23 = add i32 %21, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %23)
  %24 = icmp ult i32 %23, -99
  br i1 %24, label %do.end48, label %if.end59.i.i

do.end48:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %dev49 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.110) #12
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end36
  %custom_data = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 7
  %27 = ptrtoint ptr %custom_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %custom_data, align 4
  %mul54 = shl nuw nsw i32 %21, 1
  call void @__check_object_size(ptr noundef nonnull %data, i32 noundef %mul54, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.135, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 %mul54, i32 -1226833920) #14, !srcloc !310
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !311

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef %mul54) #9
  %30 = call i32 @llvm.read_register.i32(metadata !298) #9
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !312
  %and.i.i.i.i = and i32 %32, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %28, i32 noundef %mul54) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end58, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !311

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i436 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %mul54, %if.end59.i.i.if.then11.i.i_crit_edge ], [ %mul54, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %mul54, %res.0.i.i436
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %33 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i436)
  br label %cleanup

if.end58:                                         ; preds = %if.end.i.i
  %snp_mem = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 29
  %34 = call ptr @memset(ptr %snp_mem, i32 0, i32 100)
  %35 = ptrtoint ptr %custom_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %custom_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp62453.not = icmp eq i32 %36, 0
  br i1 %cmp62453.not, label %if.end58.for.end_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  br label %for.body

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end79.for.body_crit_edge, %if.end58.for.body_crit_edge
  %i.0454 = phi i32 [ %inc, %if.end79.for.body_crit_edge ], [ 0, %if.end58.for.body_crit_edge ]
  %arrayidx = getelementptr [100 x i16], ptr %data, i32 0, i32 %i.0454
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %38)
  %39 = icmp ugt i16 %38, 255
  br i1 %39, label %do.end75, label %if.end79

do.end75:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev76 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev76, align 4
  %conv78 = sext i16 %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.113, i32 noundef %conv78, i32 noundef %i.0454) #12
  br label %cleanup

if.end79:                                         ; preds = %for.body
  %conv81 = trunc i16 %38 to i8
  %arrayidx83 = getelementptr %struct.da7280_haptic, ptr %1, i32 0, i32 29, i32 %i.0454
  %42 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv81, ptr %arrayidx83, align 1
  %inc = add nuw i32 %i.0454, 1
  %43 = ptrtoint ptr %custom_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %custom_len, align 4
  %cmp62 = icmp ult i32 %inc, %44
  br i1 %cmp62, label %if.end79.for.body_crit_edge, label %if.end79.for.end_crit_edge

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end79.for.end_crit_edge, %if.end58.for.end_crit_edge
  %call84 = call fastcc i32 @da7280_haptic_mem_update(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.end.cleanup_crit_edge, label %do.end89

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev90, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.116, i32 noundef %call84) #12
  br label %cleanup

set_seq_id_loop:                                  ; preds = %if.end25
  %custom_data94 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 7
  %47 = ptrtoint ptr %custom_data94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %custom_data94, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.135, i32 noundef 156) #9
  %call.i.i389 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i389, label %set_seq_id_loop.if.then11.i.i406_crit_edge, label %land.lhs.true.i.i393

set_seq_id_loop.if.then11.i.i406_crit_edge:       ; preds = %set_seq_id_loop
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i406

land.lhs.true.i.i393:                             ; preds = %set_seq_id_loop
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 4, i32 -1226833920) #14, !srcloc !310
  %asmresult.i.i391 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i391)
  %cmp.i6.i392 = icmp eq i32 %asmresult.i.i391, 0
  br i1 %cmp.i6.i392, label %if.end.i.i403, label %land.lhs.true.i.i393.if.then11.i.i406_crit_edge, !prof !311

land.lhs.true.i.i393.if.then11.i.i406_crit_edge:  ; preds = %land.lhs.true.i.i393
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i406

if.end.i.i403:                                    ; preds = %land.lhs.true.i.i393
  %call.i.i.i394 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 4) #9
  %50 = call i32 @llvm.read_register.i32(metadata !298) #9
  %and.i.i.i.i.i.i395 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i395 to ptr
  %cpu_domain.i.i.i.i.i396 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i396) #7, !srcloc !312
  %and.i.i.i.i397 = and i32 %52, -13
  %or.i.i.i.i398 = or i32 %and.i.i.i.i397, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i398) #9, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  %call1.i.i.i399 = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %48, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i399)
  %tobool4.not.i.i402 = icmp eq i32 %call1.i.i.i399, 0
  br i1 %tobool4.not.i.i402, label %if.end98, label %if.end.i.i403.if.then11.i.i406_crit_edge, !prof !311

if.end.i.i403.if.then11.i.i406_crit_edge:         ; preds = %if.end.i.i403
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i406

if.then11.i.i406:                                 ; preds = %if.end.i.i403.if.then11.i.i406_crit_edge, %land.lhs.true.i.i393.if.then11.i.i406_crit_edge, %set_seq_id_loop.if.then11.i.i406_crit_edge
  %res.0.i.i401441 = phi i32 [ %call1.i.i.i399, %if.end.i.i403.if.then11.i.i406_crit_edge ], [ 4, %set_seq_id_loop.if.then11.i.i406_crit_edge ], [ 4, %land.lhs.true.i.i393.if.then11.i.i406_crit_edge ]
  %sub.i.i404 = sub i32 4, %res.0.i.i401441
  %add.ptr.i.i405 = getelementptr i8, ptr %data, i32 %sub.i.i404
  %53 = call ptr @memset(ptr %add.ptr.i.i405, i32 0, i32 %res.0.i.i401441)
  br label %cleanup

if.end98:                                         ; preds = %if.end.i.i403
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %55)
  %56 = icmp ugt i16 %55, 15
  br i1 %56, label %if.end98.do.end121_crit_edge, label %lor.lhs.false108

if.end98.do.end121_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121

lor.lhs.false108:                                 ; preds = %if.end98
  %arrayidx109 = getelementptr inbounds [100 x i16], ptr %data, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx109, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %58)
  %59 = icmp ugt i16 %58, 15
  br i1 %59, label %lor.lhs.false108.do.end121_crit_edge, label %do.end187

lor.lhs.false108.do.end121_crit_edge:             ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121

do.end121:                                        ; preds = %lor.lhs.false108.do.end121_crit_edge, %if.end98.do.end121_crit_edge
  %dev122 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev122, align 4
  %conv124 = sext i16 %55 to i32
  %arrayidx125 = getelementptr inbounds [100 x i16], ptr %data, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx125, align 2
  %conv126 = sext i16 %63 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.119, i32 noundef %conv124, i32 noundef %conv126) #12
  br label %cleanup

do.end187:                                        ; preds = %lor.lhs.false108
  %64 = trunc i16 %55 to i8
  %ps_seq_id = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 25
  %65 = ptrtoint ptr %ps_seq_id to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %ps_seq_id, align 1
  %66 = trunc i16 %58 to i8
  %ps_seq_loop = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 26
  %67 = ptrtoint ptr %ps_seq_loop to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %ps_seq_loop, align 2
  %periodic_op_mode = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 13
  %68 = ptrtoint ptr %periodic_op_mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %periodic_op_mode, align 1
  %op_mode135 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %op_mode135 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %op_mode135, align 1
  %.mask450 = shl nuw nsw i16 %58, 4
  %71 = and i16 %.mask450, 240
  %or451 = or i16 %71, %55
  %or = zext i16 %or451 to i32
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call193 = call i32 @regmap_write(ptr noundef %73, i32 noundef 40, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %do.end187.cleanup_crit_edge, label %do.end198

do.end187.cleanup_crit_edge:                      ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end198:                                        ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  %dev199 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev199, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.122, i32 noundef %call193) #12
  br label %cleanup

set_gpix_seq_id:                                  ; preds = %if.end25
  %custom_data203 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 7
  %76 = ptrtoint ptr %custom_data203 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %custom_data203, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.135, i32 noundef 156) #9
  %call.i.i414 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i414, label %set_gpix_seq_id.if.then11.i.i431_crit_edge, label %land.lhs.true.i.i418

set_gpix_seq_id.if.then11.i.i431_crit_edge:       ; preds = %set_gpix_seq_id
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i431

land.lhs.true.i.i418:                             ; preds = %set_gpix_seq_id
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %77, i32 6, i32 -1226833920) #14, !srcloc !310
  %asmresult.i.i416 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i416)
  %cmp.i6.i417 = icmp eq i32 %asmresult.i.i416, 0
  br i1 %cmp.i6.i417, label %if.end.i.i428, label %land.lhs.true.i.i418.if.then11.i.i431_crit_edge, !prof !311

land.lhs.true.i.i418.if.then11.i.i431_crit_edge:  ; preds = %land.lhs.true.i.i418
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i431

if.end.i.i428:                                    ; preds = %land.lhs.true.i.i418
  %call.i.i.i419 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 6) #9
  %79 = call i32 @llvm.read_register.i32(metadata !298) #9
  %and.i.i.i.i.i.i420 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i420 to ptr
  %cpu_domain.i.i.i.i.i421 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i421) #7, !srcloc !312
  %and.i.i.i.i422 = and i32 %81, -13
  %or.i.i.i.i423 = or i32 %and.i.i.i.i422, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i423) #9, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  %call1.i.i.i424 = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %77, i32 noundef 6) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #9, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i424)
  %tobool4.not.i.i427 = icmp eq i32 %call1.i.i.i424, 0
  br i1 %tobool4.not.i.i427, label %if.end207, label %if.end.i.i428.if.then11.i.i431_crit_edge, !prof !311

if.end.i.i428.if.then11.i.i431_crit_edge:         ; preds = %if.end.i.i428
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i431

if.then11.i.i431:                                 ; preds = %if.end.i.i428.if.then11.i.i431_crit_edge, %land.lhs.true.i.i418.if.then11.i.i431_crit_edge, %set_gpix_seq_id.if.then11.i.i431_crit_edge
  %res.0.i.i426446 = phi i32 [ %call1.i.i.i424, %if.end.i.i428.if.then11.i.i431_crit_edge ], [ 6, %set_gpix_seq_id.if.then11.i.i431_crit_edge ], [ 6, %land.lhs.true.i.i418.if.then11.i.i431_crit_edge ]
  %sub.i.i429 = sub i32 6, %res.0.i.i426446
  %add.ptr.i.i430 = getelementptr i8, ptr %data, i32 %sub.i.i429
  %82 = call ptr @memset(ptr %add.ptr.i.i430, i32 0, i32 %res.0.i.i426446)
  br label %cleanup

if.end207:                                        ; preds = %if.end.i.i428
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %84)
  %85 = icmp ugt i16 %84, 15
  br i1 %85, label %if.end207.do.end230_crit_edge, label %lor.lhs.false217

if.end207.do.end230_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end230

lor.lhs.false217:                                 ; preds = %if.end207
  %arrayidx218 = getelementptr inbounds [100 x i16], ptr %data, i32 0, i32 2
  %86 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx218, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %87)
  %88 = icmp ugt i16 %87, 2
  br i1 %88, label %lor.lhs.false217.do.end230_crit_edge, label %if.end236

lor.lhs.false217.do.end230_crit_edge:             ; preds = %lor.lhs.false217
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end230

do.end230:                                        ; preds = %lor.lhs.false217.do.end230_crit_edge, %if.end207.do.end230_crit_edge
  %dev231 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %dev231 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev231, align 4
  %conv233 = sext i16 %84 to i32
  %arrayidx234 = getelementptr inbounds [100 x i16], ptr %data, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx234, align 2
  %conv235 = sext i16 %92 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.125, i32 noundef %conv233, i32 noundef %conv235) #12
  br label %cleanup

if.end236:                                        ; preds = %lor.lhs.false217
  %and239 = zext i16 %87 to i32
  %93 = trunc i16 %84 to i8
  %arrayidx244 = getelementptr %struct.da7280_haptic, ptr %1, i32 0, i32 27, i32 %and239
  %94 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx244, align 1
  %periodic_op_mode245 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 13
  %95 = ptrtoint ptr %periodic_op_mode245 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %periodic_op_mode245, align 1
  %op_mode246 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 11
  %97 = ptrtoint ptr %op_mode246 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %op_mode246, align 1
  %.mask = shl nuw nsw i16 %84, 3
  %98 = and i16 %.mask, 120
  %and281 = zext i16 %98 to i32
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %add = add nuw nsw i32 %and239, 41
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef %add, i32 noundef 120, i32 noundef %and281, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool284.not = icmp eq i32 %call.i, 0
  br i1 %tobool284.not, label %if.end236.cleanup_crit_edge, label %do.end288

if.end236.cleanup_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end288:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  %dev289 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %dev289 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev289, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.128, i32 noundef %call.i) #12
  br label %cleanup

do.end293:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %6 to i32
  %dev294 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %103 = ptrtoint ptr %dev294 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev294, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.131, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end293, %do.end288, %if.end236.cleanup_crit_edge, %do.end230, %if.then11.i.i431, %do.end198, %do.end187.cleanup_crit_edge, %do.end121, %if.then11.i.i406, %do.end89, %for.end.cleanup_crit_edge, %do.end75, %if.then11.i.i, %do.end48, %do.end, %if.end8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end293 ], [ -22, %do.end ], [ -22, %do.end121 ], [ %call193, %do.end198 ], [ -22, %do.end230 ], [ %call.i, %do.end288 ], [ -22, %do.end48 ], [ -22, %do.end75 ], [ %call84, %do.end89 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end236.cleanup_crit_edge ], [ 0, %do.end187.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end8 ], [ 0, %if.then4 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i406 ], [ -14, %if.then11.i.i431 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_haptics_playback(ptr nocapture noundef readonly %dev, i32 noundef %effect_id, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %op_mode = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.136) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspended = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %suspended, align 2, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then6, label %if.end.cleanup_crit_edge, !prof !311

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val7 = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val, ptr %val7, align 4
  %work = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %events = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.da7280_haptic, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %events) #9
  %2 = ptrtoint ptr %events to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %events, align 1, !annotation !308
  %3 = getelementptr inbounds [3 x i8], ptr %events, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !308
  %5 = getelementptr inbounds [3 x i8], ptr %events, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !308
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %events, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.138, i32 noundef %call) #12
  br label %out

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %events, align 1
  %conv = zext i8 %12 to i32
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 3, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.141, i32 noundef %call3) #12
  br label %out

if.end9:                                          ; preds = %if.end
  %13 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %events, align 1
  %15 = and i8 %14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.end9.if.end22_crit_edge, label %if.then13

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then13:                                        ; preds = %if.end9
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 34, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.then13.if.end22_crit_edge, label %do.end20

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef %call.i) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.then13.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %18 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %events, align 1
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  br i1 %tobool26.not, label %if.end22.if.end28_crit_edge, label %if.then27

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %active = getelementptr inbounds %struct.da7280_haptic, ptr %data, i32 0, i32 30
  %21 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %active, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end22.if.end28_crit_edge
  %22 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  br i1 %tobool32.not, label %if.end28.if.end65_crit_edge, label %if.then33

if.end28.if.end65_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then33:                                        ; preds = %if.end28
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %25 = icmp ult i8 %24, 64
  br i1 %25, label %if.then33.if.end46_crit_edge, label %do.end45

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end45:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.147) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.then33.if.end46_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool50.not = icmp eq i8 %28, 0
  br i1 %tobool50.not, label %if.end46.if.end55_crit_edge, label %do.end54

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.150) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %if.end46.if.end55_crit_edge
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %31 = and i8 %30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool59.not = icmp eq i8 %31, 0
  br i1 %tobool59.not, label %if.end55.if.end65_crit_edge, label %do.end63

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.153) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end55.if.end65_crit_edge, %if.end28.if.end65_crit_edge
  %32 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %events, align 1
  %34 = and i8 %33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool69.not = icmp eq i8 %34, 0
  br i1 %tobool69.not, label %if.end65.out_crit_edge, label %if.then70

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then70:                                        ; preds = %if.end65
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool74.not = icmp sgt i8 %36, -1
  br i1 %tobool74.not, label %if.then70.if.end79_crit_edge, label %do.end78

if.then70.if.end79_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end78:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.156) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end78, %if.then70.if.end79_crit_edge
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %39 = and i8 %38, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool83.not = icmp eq i8 %39, 0
  br i1 %tobool83.not, label %if.end79.if.end88_crit_edge, label %do.end87

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.160) #12
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %if.end79.if.end88_crit_edge
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 1
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool92.not = icmp eq i8 %42, 0
  br i1 %tobool92.not, label %if.end88.out_crit_edge, label %do.end96

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.163) #12
  br label %out

out:                                              ; preds = %do.end96, %if.end88.out_crit_edge, %if.end65.out_crit_edge, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %events) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da7280_haptic_deactivate(ptr nocapture noundef %haptics) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 30
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 1, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %haptics, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 34, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.86, i32 noundef %call.i) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %op_mode = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 11
  %6 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op_mode, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %7, label %do.end30 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb13
    i8 3, label %if.end3.sw.bb18_crit_edge
    i8 4, label %if.end3.sw.bb18_crit_edge55
  ]

if.end3.sw.bb18_crit_edge55:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end3.sw.bb18_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.bb:                                            ; preds = %if.end3
  %9 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %haptics, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 35, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %do.end10

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.89, i32 noundef %call5) #12
  br label %cleanup

sw.bb13:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #9
  %pwm_dev.i = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 4
  %13 = ptrtoint ptr %pwm_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm_dev.i, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %14, i32 0, i32 7
  %15 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled3.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %16 = ptrtoint ptr %enabled3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enabled3.i, align 4
  %call.i51 = call i32 @pwm_apply_state(ptr noundef %14, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool14.not.i = icmp eq i32 %call.i51, 0
  br i1 %tobool14.not.i, label %da7280_haptic_set_pwm.exit.thread, label %da7280_haptic_set_pwm.exit

da7280_haptic_set_pwm.exit.thread:                ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #9
  br label %sw.epilog

da7280_haptic_set_pwm.exit:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %dev19.i = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %17 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.84, i32 noundef %call.i51) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #9
  br label %cleanup

sw.bb18:                                          ; preds = %if.end3.sw.bb18_crit_edge, %if.end3.sw.bb18_crit_edge55
  %19 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %haptics, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 34, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool21.not = icmp eq i32 %call.i52, 0
  br i1 %tobool21.not, label %sw.bb18.sw.epilog_crit_edge, label %do.end25

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end25:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %21 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.92, i32 noundef %call.i52) #12
  br label %cleanup

do.end30:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  %dev31 = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.73, i32 noundef %conv) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18.sw.epilog_crit_edge, %da7280_haptic_set_pwm.exit.thread, %sw.bb.sw.epilog_crit_edge
  %25 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %active, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end30, %do.end25, %da7280_haptic_set_pwm.exit, %do.end10, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da7280_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 32
  %switch.downshift = lshr i32 -2147483633, %switch.tableidx
  %1 = and i32 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.masked = icmp ne i32 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da7280_haptic_mem_update(ptr noundef %haptics) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !308
  %1 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %haptics, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.98) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val, align 4
  %8 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %haptics, align 4
  %call5 = call i32 @regmap_read(ptr noundef %9, i32 noundef 45, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %neg = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool10.not.not = icmp eq i32 %neg, 0
  br i1 %tobool10.not.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 2
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.101) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %haptics, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 34, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %haptics, align 4
  %call23 = call i32 @regmap_read(ptr noundef %17, i32 noundef 44, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %haptics to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %haptics, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %snp_mem = getelementptr inbounds %struct.da7280_haptic, ptr %haptics, i32 0, i32 29
  %add = sub i32 232, %21
  %call28 = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef %21, ptr noundef %snp_mem, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end14, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -13, %do.end14 ], [ %call28, %if.end26 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call.i, %if.end16.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input_dev = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #9
  %suspended = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %suspended, align 2
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev, align 4
  %event_lock3 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 36
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock3) #9
  %work.i = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #9
  tail call fastcc void @da7280_haptic_deactivate(ptr noundef %1) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 34, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.da7280_haptic_stop.exit_crit_edge, label %do.end.i

entry.da7280_haptic_stop.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %da7280_haptic_stop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.105, i32 noundef %call.i.i) #12
  br label %da7280_haptic_stop.exit

da7280_haptic_stop.exit:                          ; preds = %do.end.i, %entry.da7280_haptic_stop.exit_crit_edge
  %13 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev, align 4
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7280_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input_dev = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 34, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then, label %da7280_haptic_start.exit

da7280_haptic_start.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.103, i32 noundef %call.i.i) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 4
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #9
  %suspended = getelementptr inbounds %struct.da7280_haptic, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %suspended, align 2
  %11 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev, align 4
  %event_lock5 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 36
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %da7280_haptic_start.exit
  %13 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev, align 4
  %mutex7 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex7) #9
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !114, !115, !116, !117, !119, !121, !123, !124, !125, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !247, !249, !251, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !296}
!llvm.named.register.sp = !{!298}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @__initcall__kmod_da7280__360_1328_da7280_driver_init6, !1, !"__initcall__kmod_da7280__360_1328_da7280_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/da7280.c", i32 1328, i32 1}
!2 = !{ptr @__exitcall_da7280_driver_exit, !1, !"__exitcall_da7280_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description361, !4, !"__UNIQUE_ID_description361", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/da7280.c", i32 1330, i32 1}
!5 = !{ptr @__UNIQUE_ID_author362, !6, !"__UNIQUE_ID_author362", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/da7280.c", i32 1331, i32 1}
!7 = !{ptr @__UNIQUE_ID_file363, !8, !"__UNIQUE_ID_file363", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/da7280.c", i32 1332, i32 1}
!9 = !{ptr @__UNIQUE_ID_license364, !8, !"__UNIQUE_ID_license364", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/da7280.c", i32 1321, i32 11}
!12 = !{ptr @da7280_driver, !13, !"da7280_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/da7280.c", i32 1319, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/da7280.c", i32 1154, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @da7280_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @da7280_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/da7280.c", i32 1171, i32 5}
!24 = !{ptr @da7280_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @da7280_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/da7280.c", i32 1181, i32 4}
!28 = !{ptr @da7280_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @da7280_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/da7280.c", i32 1190, i32 4}
!32 = !{ptr @da7280_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @da7280_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @da7280_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/da7280.c", i32 1196, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @da7280_probe._key, !38, !"_key", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/da7280.c", i32 1201, i32 20}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/da7280.c", i32 1205, i32 3}
!42 = !{ptr @da7280_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @da7280_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/da7280.c", i32 1211, i32 3}
!46 = !{ptr @da7280_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @da7280_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/da7280.c", i32 1218, i32 3}
!50 = !{ptr @da7280_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @da7280_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/da7280.c", i32 1222, i32 20}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/da7280.c", i32 1237, i32 3}
!56 = !{ptr @da7280_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @da7280_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/da7280.c", i32 1247, i32 3}
!60 = !{ptr @da7280_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @da7280_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/da7280.c", i32 1254, i32 8}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/da7280.c", i32 1256, i32 3}
!66 = !{ptr @da7280_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @da7280_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/da7280.c", i32 787, i32 43}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/misc/da7280.c", i32 792, i32 40}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/misc/da7280.c", i32 797, i32 40}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/misc/da7280.c", i32 802, i32 40}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/da7280.c", i32 807, i32 40}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/misc/da7280.c", i32 812, i32 40}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/misc/da7280.c", i32 817, i32 40}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/misc/da7280.c", i32 823, i32 40}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/misc/da7280.c", i32 839, i32 40}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/misc/da7280.c", i32 844, i32 40}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/misc/da7280.c", i32 872, i32 34}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/misc/da7280.c", i32 874, i32 34}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/misc/da7280.c", i32 876, i32 34}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/da7280.c", i32 878, i32 34}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/misc/da7280.c", i32 880, i32 34}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/misc/da7280.c", i32 883, i32 46}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/misc/da7280.c", i32 892, i32 5}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @da7280_parse_properties._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @da7280_parse_properties._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/misc/da7280.c", i32 725, i32 19}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/misc/da7280.c", i32 727, i32 26}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/misc/da7280.c", i32 729, i32 26}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/misc/da7280.c", i32 732, i32 3}
!113 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @da7280_haptic_of_mode_str._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @da7280_haptic_of_mode_str._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/misc/da7280.c", i32 740, i32 19}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/misc/da7280.c", i32 742, i32 26}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/misc/da7280.c", i32 745, i32 3}
!123 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @da7280_haptic_of_gpi_mode_str._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @da7280_haptic_of_gpi_mode_str._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/misc/da7280.c", i32 753, i32 19}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/misc/da7280.c", i32 755, i32 26}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/misc/da7280.c", i32 757, i32 26}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/misc/da7280.c", i32 760, i32 3}
!134 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @da7280_haptic_of_gpi_pol_str._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @da7280_haptic_of_gpi_pol_str._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/misc/da7280.c", i32 381, i32 4}
!139 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @da7280_haptic_activate._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @da7280_haptic_activate._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/misc/da7280.c", i32 409, i32 3}
!144 = !{ptr @da7280_haptic_activate._entry.72, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @da7280_haptic_activate._entry_ptr.74, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/misc/da7280.c", i32 418, i32 3}
!148 = !{ptr @da7280_haptic_activate._entry.75, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @da7280_haptic_activate._entry_ptr.77, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/misc/da7280.c", i32 430, i32 4}
!152 = !{ptr @da7280_haptic_activate._entry.78, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @da7280_haptic_activate._entry_ptr.80, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/misc/da7280.c", i32 332, i32 3}
!156 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @da7280_haptic_set_pwm._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @da7280_haptic_set_pwm._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/misc/da7280.c", i32 357, i32 3}
!161 = !{ptr @da7280_haptic_set_pwm._entry.83, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @da7280_haptic_set_pwm._entry_ptr.85, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/misc/da7280.c", i32 451, i32 3}
!165 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @da7280_haptic_deactivate._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @da7280_haptic_deactivate._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/misc/da7280.c", i32 461, i32 4}
!170 = !{ptr @da7280_haptic_deactivate._entry.88, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @da7280_haptic_deactivate._entry_ptr.90, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/misc/da7280.c", i32 478, i32 4}
!174 = !{ptr @da7280_haptic_deactivate._entry.91, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @da7280_haptic_deactivate._entry_ptr.93, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @da7280_haptic_deactivate._entry.94, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/input/misc/da7280.c", i32 486, i32 3}
!178 = !{ptr @da7280_haptic_deactivate._entry_ptr.95, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @da7280_haptic_regmap_config, !180, !"da7280_haptic_regmap_config", i1 false, i1 false}
!180 = !{!"../drivers/input/misc/da7280.c", i32 277, i32 35}
!181 = !{ptr @.str.96, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/misc/da7280.c", i32 1139, i32 2}
!183 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @da7280_init._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @da7280_init._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/misc/da7280.c", i32 294, i32 3}
!188 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @da7280_haptic_mem_update._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @da7280_haptic_mem_update._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.101, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/misc/da7280.c", i32 305, i32 3}
!193 = !{ptr @da7280_haptic_mem_update._entry.100, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @da7280_haptic_mem_update._entry_ptr.102, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/input/misc/da7280.c", i32 686, i32 3}
!197 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @da7280_haptic_start._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @da7280_haptic_start._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/misc/da7280.c", i32 705, i32 3}
!202 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @da7280_haptic_stop._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @da7280_haptic_stop._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/misc/da7280.c", i32 536, i32 4}
!207 = !{ptr @.str.108, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @da7280_haptics_upload_effect._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @da7280_haptics_upload_effect._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/input/misc/da7280.c", i32 556, i32 4}
!212 = !{ptr @da7280_haptics_upload_effect._entry.109, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @da7280_haptics_upload_effect._entry_ptr.111, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.113, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/input/misc/da7280.c", i32 569, i32 5}
!216 = !{ptr @da7280_haptics_upload_effect._entry.112, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @da7280_haptics_upload_effect._entry_ptr.114, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.116, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/misc/da7280.c", i32 579, i32 4}
!220 = !{ptr @da7280_haptics_upload_effect._entry.115, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @da7280_haptics_upload_effect._entry_ptr.117, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/input/misc/da7280.c", i32 594, i32 4}
!224 = !{ptr @da7280_haptics_upload_effect._entry.118, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @da7280_haptics_upload_effect._entry_ptr.120, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.122, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/misc/da7280.c", i32 610, i32 4}
!228 = !{ptr @da7280_haptics_upload_effect._entry.121, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @da7280_haptics_upload_effect._entry_ptr.123, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/misc/da7280.c", i32 625, i32 4}
!232 = !{ptr @da7280_haptics_upload_effect._entry.124, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @da7280_haptics_upload_effect._entry_ptr.126, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.128, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/misc/da7280.c", i32 644, i32 4}
!236 = !{ptr @da7280_haptics_upload_effect._entry.127, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @da7280_haptics_upload_effect._entry_ptr.129, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.131, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/input/misc/da7280.c", i32 651, i32 3}
!240 = !{ptr @da7280_haptics_upload_effect._entry.130, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @da7280_haptics_upload_effect._entry_ptr.132, !239, !"_entry_ptr", i1 false, i1 false}
!242 = distinct !{null, !243, !"__already_done", i1 false, i1 false}
!243 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!244 = distinct !{null, !243, !"<string literal>", i1 false, i1 false}
!245 = distinct !{null, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!247 = !{ptr @.str.135, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!249 = !{ptr @.str.136, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/input/misc/da7280.c", i32 665, i32 3}
!251 = !{ptr @.str.137, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @da7280_haptics_playback._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @da7280_haptics_playback._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.138, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/input/misc/da7280.c", i32 913, i32 3}
!256 = !{ptr @.str.139, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @da7280_irq_handler._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @da7280_irq_handler._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.141, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/input/misc/da7280.c", i32 920, i32 3}
!261 = !{ptr @da7280_irq_handler._entry.140, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @da7280_irq_handler._entry_ptr.142, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.144, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/misc/da7280.c", i32 932, i32 4}
!265 = !{ptr @da7280_irq_handler._entry.143, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @da7280_irq_handler._entry_ptr.145, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.147, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/input/misc/da7280.c", i32 942, i32 4}
!269 = !{ptr @da7280_irq_handler._entry.146, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @da7280_irq_handler._entry_ptr.148, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.150, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/input/misc/da7280.c", i32 944, i32 4}
!273 = !{ptr @da7280_irq_handler._entry.149, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @da7280_irq_handler._entry_ptr.151, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.153, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/input/misc/da7280.c", i32 946, i32 4}
!277 = !{ptr @da7280_irq_handler._entry.152, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @da7280_irq_handler._entry_ptr.154, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.156, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/input/misc/da7280.c", i32 951, i32 4}
!281 = !{ptr @.str.157, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @da7280_irq_handler._entry.155, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @da7280_irq_handler._entry_ptr.158, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.160, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/input/misc/da7280.c", i32 953, i32 4}
!286 = !{ptr @da7280_irq_handler._entry.159, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @da7280_irq_handler._entry_ptr.161, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.163, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/input/misc/da7280.c", i32 955, i32 4}
!290 = !{ptr @da7280_irq_handler._entry.162, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @da7280_irq_handler._entry_ptr.164, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @da7280_of_match, !293, !"da7280_of_match", i1 false, i1 false}
!293 = !{!"../drivers/input/misc/da7280.c", i32 1304, i32 34}
!294 = !{ptr @da7280_pm_ops, !295, !"da7280_pm_ops", i1 false, i1 false}
!295 = !{!"../drivers/input/misc/da7280.c", i32 1317, i32 8}
!296 = !{ptr @da7280_i2c_id, !297, !"da7280_i2c_id", i1 false, i1 false}
!297 = !{!"../drivers/input/misc/da7280.c", i32 1311, i32 35}
!298 = !{!"sp"}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"auto-init"}
!309 = !{i8 0, i8 2}
!310 = !{i64 2153905149, i64 2153905174}
!311 = !{!"branch_weights", i32 2000, i32 1}
!312 = !{i64 6400704}
!313 = !{i64 6400901}
!314 = !{i64 2153886134}
