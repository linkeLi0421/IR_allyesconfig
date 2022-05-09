; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pwm-fan.c_pt.bc'
source_filename = "../drivers/hwmon/pwm-fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pwm_fan_ctx = type { %struct.mutex, ptr, %struct.pwm_state, ptr, i32, ptr, i64, %struct.timer_list, i32, i32, i32, ptr, ptr, %struct.hwmon_chip_info, %struct.hwmon_channel_info }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_fan_tach = type { i32, %struct.atomic_t, i32, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_pwm_fan__290_540_pwm_fan_driver_init6 = internal global ptr @pwm_fan_driver_init, section ".initcall6.init", align 4
@pwm_fan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_fan_probe, ptr null, ptr @pwm_fan_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_fan_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_fan_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_fan_driver_exit = internal global ptr @pwm_fan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"pwm_fan.author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [31 x i8] c"pwm_fan.alias=platform:pwm-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [35 x i8] c"pwm_fan.description=PWM FAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"pwm_fan.file=drivers/hwmon/pwm-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"pwm_fan.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm-fan\00", [24 x i8] zeroinitializer }, align 32
@of_pwm_fan_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-fan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pwm_fan_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_fan_suspend, ptr @pwm_fan_resume, ptr @pwm_fan_suspend, ptr @pwm_fan_resume, ptr @pwm_fan_suspend, ptr @pwm_fan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pwm_fan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Could not get PWM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fan\00", [28 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 330, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable fan supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm_fan_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/pwm-fan.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr = internal global ptr @pwm_fan_probe._entry, section ".printk_index", align 4
@pwm_fan_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 347, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Configured period too big\0A\00", [37 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr.11 = internal global ptr @pwm_fan_probe._entry.9, section ".printk_index", align 4
@pwm_fan_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 354, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to configure PWM: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr.14 = internal global ptr @pwm_fan_probe._entry.12, section ".printk_index", align 4
@pwm_fan_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&ctx->rpm_timer)\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not get number of fan tachometer inputs\0A\00", [49 x i8] zeroinitializer }, align 32
@pwm_fan_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.5, ptr @.str.6, ptr @.str.19, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_fan\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d fan tachometer inputs\0A\00", [38 x i8] zeroinitializer }, align 32
@pwm_fan_channel_pwm = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @pwm_fan_channel_config_pwm }, [24 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 405, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request interrupt: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr.22 = internal global ptr @pwm_fan_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pulses-per-revolution\00", [42 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 416, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pulses-per-revolution can't be zero.\0A\00", [58 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr.26 = internal global ptr @pwm_fan_probe._entry.24, section ".printk_index", align 4
@pwm_fan_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.5, ptr @.str.6, ptr @.str.27, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tach%d: irq=%d, pulses_per_revolution=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pwm_fan_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @pwm_fan_is_visible, ptr @pwm_fan_read, ptr null, ptr @pwm_fan_write }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwmfan\00", [25 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.6, i32 439, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr.31 = internal global ptr @pwm_fan_probe._entry.29, section ".printk_index", align 4
@pwm_fan_cooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @pwm_fan_get_max_state, ptr @pwm_fan_get_cur_state, ptr @pwm_fan_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.6, i32 455, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to register pwm-fan as cooling device: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@pwm_fan_probe._entry_ptr.34 = internal global ptr @pwm_fan_probe._entry.32, section ".printk_index", align 4
@pwm_fan_channel_config_pwm = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cooling-levels\00", [17 x i8] zeroinitializer }, align 32
@pwm_fan_of_get_cooling_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 253, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wrong data!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwm_fan_of_get_cooling_data\00", [36 x i8] zeroinitializer }, align 32
@pwm_fan_of_get_cooling_data._entry_ptr = internal global ptr @pwm_fan_of_get_cooling_data._entry, section ".printk_index", align 4
@pwm_fan_of_get_cooling_data._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.6, i32 266, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Property 'cooling-levels' cannot be read!\0A\00", [53 x i8] zeroinitializer }, align 32
@pwm_fan_of_get_cooling_data._entry_ptr.40 = internal global ptr @pwm_fan_of_get_cooling_data._entry.38, section ".printk_index", align 4
@pwm_fan_of_get_cooling_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.6, i32 273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PWM fan state[%d]:%d > %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pwm_fan_of_get_cooling_data._entry_ptr.43 = internal global ptr @pwm_fan_of_get_cooling_data._entry.41, section ".printk_index", align 4
@pwm_fan_set_cur_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 227, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Cannot set pwm!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm_fan_set_cur_state\00", [42 x i8] zeroinitializer }, align 32
@pwm_fan_set_cur_state._entry_ptr = internal global ptr @pwm_fan_set_cur_state._entry, section ".printk_index", align 4
@pwm_fan_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 483, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable fan supply: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm_fan_disable\00", [16 x i8] zeroinitializer }, align 32
@pwm_fan_disable._entry_ptr = internal global ptr @pwm_fan_disable._entry, section ".printk_index", align 4
@pwm_fan_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.48, ptr @.str.6, i32 510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm_fan_resume\00", [17 x i8] zeroinitializer }, align 32
@pwm_fan_resume._entry_ptr = internal global ptr @pwm_fan_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"pwm_fan_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 530, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 534, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"of_pwm_fan_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 524, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"pwm_fan_pm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 522, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 313, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 317, i32 48 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 321, i32 49 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 330, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 347, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 354, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 357, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 365, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 366, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"pwm_fan_channel_pwm\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 57, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 403, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 411, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 416, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 422, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"pwm_fan_hwmon_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 180, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 436, i32 52 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 439, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"pwm_fan_cooling_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 236, i32 48 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 453, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [27 x i8] c"pwm_fan_channel_config_pwm\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 52, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 248, i32 28 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 253, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 266, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 272, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 227, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 483, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [27 x i8] c"../drivers/hwmon/pwm-fan.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 510, i32 4 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_pwm_fan_driver_exit, ptr @__initcall__kmod_pwm_fan__290_540_pwm_fan_driver_init6, ptr @pwm_fan_disable._entry, ptr @pwm_fan_disable._entry_ptr, ptr @pwm_fan_driver_exit, ptr @pwm_fan_of_get_cooling_data._entry, ptr @pwm_fan_of_get_cooling_data._entry.38, ptr @pwm_fan_of_get_cooling_data._entry.41, ptr @pwm_fan_of_get_cooling_data._entry_ptr, ptr @pwm_fan_of_get_cooling_data._entry_ptr.40, ptr @pwm_fan_of_get_cooling_data._entry_ptr.43, ptr @pwm_fan_probe._entry, ptr @pwm_fan_probe._entry.12, ptr @pwm_fan_probe._entry.20, ptr @pwm_fan_probe._entry.24, ptr @pwm_fan_probe._entry.29, ptr @pwm_fan_probe._entry.32, ptr @pwm_fan_probe._entry.9, ptr @pwm_fan_probe._entry_ptr, ptr @pwm_fan_probe._entry_ptr.11, ptr @pwm_fan_probe._entry_ptr.14, ptr @pwm_fan_probe._entry_ptr.22, ptr @pwm_fan_probe._entry_ptr.26, ptr @pwm_fan_probe._entry_ptr.31, ptr @pwm_fan_probe._entry_ptr.34, ptr @pwm_fan_resume._entry, ptr @pwm_fan_resume._entry_ptr, ptr @pwm_fan_set_cur_state._entry, ptr @pwm_fan_set_cur_state._entry_ptr, ptr @pwm_fan_driver, ptr @.str, ptr @of_pwm_fan_match, ptr @pwm_fan_pm, ptr @pwm_fan_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @pwm_fan_probe.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pwm_fan_channel_pwm, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @pwm_fan_hwmon_ops, ptr @.str.28, ptr @.str.30, ptr @pwm_fan_cooling_ops, ptr @.str.33, ptr @pwm_fan_channel_config_pwm, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pwm_fan_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_channel_pwm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_channel_config_pwm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_of_get_cooling_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_of_get_cooling_data._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_of_get_cooling_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_set_cur_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_fan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_fan_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_fan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_fan_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_fan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ppr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 232, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup187_crit_edge, label %do.body

entry.cleanup187_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @pwm_fan_probe.__key) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @devm_of_pwm_get(ptr noundef %dev1, ptr noundef %1, ptr noundef null) #9
  %pwm = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %pwm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.2) #9
  br label %cleanup187

if.end9:                                          ; preds = %do.body
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %reg_en = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %reg_en to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %reg_en, align 8
  %cmp.i313 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i313, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %6 = ptrtoint ptr %call10 to i32
  %cmp.not = icmp eq ptr %call10, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end19, label %if.then13.cleanup187_crit_edge

if.then13.cleanup187_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %reg_en to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %reg_en, align 8
  br label %if.end34

if.else:                                          ; preds = %if.end9
  %call22 = tail call i32 @regulator_enable(ptr noundef %call10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call22) #12
  br label %cleanup187

if.end28:                                         ; preds = %if.else
  %8 = ptrtoint ptr %reg_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_en, align 8
  %call.i314 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pwm_fan_regulator_disable, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool.not.i = icmp eq i32 %call.i314, 0
  br i1 %tobool.not.i, label %if.end28.if.end34_crit_edge, label %devm_add_action_or_reset.exit

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

devm_add_action_or_reset.exit:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i334 = tail call i32 @regulator_disable(ptr noundef %9) #9
  br label %cleanup187

if.end34:                                         ; preds = %if.end28.if.end34_crit_edge, %if.end19
  %10 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwm, align 4
  %pwm_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 2
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %11, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %pwm_state, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %11, i32 0, i32 6
  %13 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %11, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %15 = ptrtoint ptr %pwm_state to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %args.sroa.0.0.copyload8.i, ptr %pwm_state, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %usage_power.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 16843010, i64 %args.sroa.0.0.copyload8.i)
  %cmp37 = icmp ugt i64 %args.sroa.0.0.copyload8.i, 16843010
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup187

if.end42:                                         ; preds = %if.end34
  tail call void @mutex_lock_nested(ptr noundef nonnull %call.i, i32 noundef 0) #9
  %pwm_value.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pwm_value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %20)
  %cmp.i315 = icmp eq i32 %20, 255
  br i1 %cmp.i315, label %if.end42.do.body50_crit_edge, label %if.end.i

if.end42.do.body50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

if.end.i:                                         ; preds = %if.end42
  %21 = ptrtoint ptr %pwm_state to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pwm_state, align 8
  %conv.i = trunc i64 %22 to i32
  %23 = mul i32 %conv.i, 255
  %sub2.i = add i32 %23, -1
  %div.i = udiv i32 %sub2.i, 255
  %conv3.i = zext i32 %div.i to i64
  %24 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv3.i, ptr %duty_cycle.i, align 8
  %enabled.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %enabled.i, align 4
  %26 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pwm, align 4
  %call.i317 = tail call i32 @pwm_apply_state(ptr noundef %27, ptr noundef %pwm_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool6.not.i = icmp eq i32 %call.i317, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %do.end48

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %pwm_value.i, align 8
  br label %do.body50

do.end48:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull %call.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call.i317) #12
  br label %cleanup187

do.body50:                                        ; preds = %if.then7.i, %if.end42.do.body50_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull %call.i) #9
  %rpm_timer = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %rpm_timer, ptr noundef nonnull @sample_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @pwm_fan_probe.__key.15) #9
  %call.i318 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pwm_fan_pwm_disable, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool.not.i319 = icmp eq i32 %call.i318, 0
  br i1 %tobool.not.i319, label %if.end56, label %devm_add_action_or_reset.exit322

devm_add_action_or_reset.exit322:                 ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %enabled.i336 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %enabled.i336 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %enabled.i336, align 4
  %30 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pwm, align 4
  %call.i337 = tail call i32 @pwm_apply_state(ptr noundef %31, ptr noundef %pwm_state) #9
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %rpm_timer) #9
  br label %cleanup187

if.end56:                                         ; preds = %do.body50
  %call57 = tail call i32 @platform_irq_count(ptr noundef %pdev) #9
  %tach_count = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %tach_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call57, ptr %tach_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %if.then60, label %do.body64

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call57, ptr noundef nonnull @.str.17) #9
  br label %cleanup187

do.body64:                                        ; preds = %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_fan_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pwm_fan_probe, %do.end74)) #9
          to label %if.then70 [label %do.end74], !srcloc !121

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tach_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_fan_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %34) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then70, %do.body64
  %35 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tach_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool76.not = icmp eq i32 %36, 0
  br i1 %tobool76.not, label %do.end74.devm_kcalloc.exit330_crit_edge, label %if.then77

do.end74.devm_kcalloc.exit330_crit_edge:          ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit330

if.then77:                                        ; preds = %do.end74
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 16) #9
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !122

devm_kcalloc.exit.thread:                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %tachs342 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %tachs342 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %tachs342, align 8
  br label %cleanup187

devm_kcalloc.exit:                                ; preds = %if.then77
  %40 = extractvalue { i32, i1 } %37, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %40, i32 noundef 3520) #9
  %tachs = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %tachs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5.i.i, ptr %tachs, align 8
  %tobool81.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool81.not, label %devm_kcalloc.exit.cleanup187_crit_edge, label %if.end83

devm_kcalloc.exit.cleanup187_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

if.end83:                                         ; preds = %devm_kcalloc.exit
  %fan_channel = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %fan_channel to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7, ptr %fan_channel, align 4
  %43 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tach_count, align 4
  %add = add i32 %44, 1
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #9
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %if.end83.cleanup187_crit_edge, label %devm_kcalloc.exit326, !prof !122

if.end83.cleanup187_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

devm_kcalloc.exit326:                             ; preds = %if.end83
  %47 = extractvalue { i32, i1 } %45, 0
  %call5.i.i323 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %47, i32 noundef 3520) #9
  %tobool86.not = icmp eq ptr %call5.i.i323, null
  br i1 %tobool86.not, label %devm_kcalloc.exit326.cleanup187_crit_edge, label %if.end88

devm_kcalloc.exit326.cleanup187_crit_edge:        ; preds = %devm_kcalloc.exit326
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

if.end88:                                         ; preds = %devm_kcalloc.exit326
  call void @__sanitizer_cov_trace_pc() #11
  %config = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 14, i32 1
  %48 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5.i.i323, ptr %config, align 4
  br label %devm_kcalloc.exit330

devm_kcalloc.exit330:                             ; preds = %if.end88, %do.end74.devm_kcalloc.exit330_crit_edge
  %fan_channel_config.0 = phi ptr [ %call5.i.i323, %if.end88 ], [ inttoptr (i32 -1 to ptr), %do.end74.devm_kcalloc.exit330_crit_edge ]
  %channel_count.0 = phi i32 [ 12, %if.end88 ], [ 8, %do.end74.devm_kcalloc.exit330_crit_edge ]
  %call5.i.i327 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %channel_count.0, i32 noundef 3520) #9
  %tobool93.not = icmp eq ptr %call5.i.i327, null
  br i1 %tobool93.not, label %devm_kcalloc.exit330.cleanup187_crit_edge, label %if.end95

devm_kcalloc.exit330.cleanup187_crit_edge:        ; preds = %devm_kcalloc.exit330
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

if.end95:                                         ; preds = %devm_kcalloc.exit330
  %49 = ptrtoint ptr %call5.i.i327 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pwm_fan_channel_pwm, ptr %call5.i.i327, align 4
  %50 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tach_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp97354 = icmp sgt i32 %51, 0
  br i1 %cmp97354, label %for.body.lr.ph, label %if.end95.if.end161_crit_edge

if.end95.if.end161_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

for.body.lr.ph:                                   ; preds = %if.end95
  %tachs98 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %inc150, %for.inc.for.body_crit_edge ]
  %52 = ptrtoint ptr %tachs98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tachs98, align 8
  %arrayidx99 = getelementptr %struct.pwm_fan_tach, ptr %53, i32 %i.0355
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppr) #9
  %54 = ptrtoint ptr %ppr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %ppr, align 4
  %call100 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0355) #9
  %55 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call100, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call100)
  %cmp102 = icmp eq i32 %call100, -517
  br i1 %cmp102, label %for.body.cleanup.thread_crit_edge, label %if.end105

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end105:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp107 = icmp sgt i32 %call100, 0
  br i1 %cmp107, label %if.then108, label %if.end105.if.end117_crit_edge

if.end105.if.end117_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then108:                                       ; preds = %if.end105
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 8
  %call.i331 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call100, ptr noundef nonnull @pulse_handler, ptr noundef null, i32 noundef 0, ptr noundef %57, ptr noundef %arrayidx99) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool111.not = icmp eq i32 %call.i331, 0
  br i1 %tobool111.not, label %if.then108.if.end117_crit_edge, label %do.end115

if.then108.if.end117_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

do.end115:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call.i331) #12
  br label %cleanup.thread

if.end117:                                        ; preds = %if.then108.if.end117_crit_edge, %if.end105.if.end117_crit_edge
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 8
  %call119 = call i32 @of_property_read_u32_index(ptr noundef %59, ptr noundef nonnull @.str.23, i32 noundef %i.0355, ptr noundef nonnull %ppr) #9
  %60 = ptrtoint ptr %ppr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ppr, align 4
  %conv = trunc i32 %61 to i8
  %pulses_per_revolution = getelementptr %struct.pwm_fan_tach, ptr %53, i32 %i.0355, i32 3
  %62 = ptrtoint ptr %pulses_per_revolution to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv, ptr %pulses_per_revolution, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool121.not = icmp eq i8 %conv, 0
  br i1 %tobool121.not, label %do.end125, label %if.end126

do.end125:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #12
  br label %cleanup.thread

if.end126:                                        ; preds = %if.end117
  %arrayidx127 = getelementptr i32, ptr %fan_channel_config.0, i32 %i.0355
  %63 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %arrayidx127, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_fan_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pwm_fan_probe, %for.inc)) #9
          to label %if.then142 [label %for.inc], !srcloc !121

if.then142:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx99, align 4
  %66 = ptrtoint ptr %pulses_per_revolution to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pulses_per_revolution, align 4
  %conv145 = zext i8 %67 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_fan_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %i.0355, i32 noundef %65, i32 noundef %conv145) #9
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end125, %do.end115, %for.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call.i331, %do.end115 ], [ -22, %do.end125 ], [ -517, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr) #9
  br label %cleanup187

for.inc:                                          ; preds = %if.then142, %if.end126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppr) #9
  %inc150 = add nuw nsw i32 %i.0355, 1
  %68 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tach_count, align 4
  %cmp97 = icmp slt i32 %inc150, %69
  br i1 %cmp97, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp152 = icmp sgt i32 %69, 0
  br i1 %cmp152, label %if.then154, label %for.end.if.end161_crit_edge

for.end.if.end161_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then154:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call155 = call i64 @ktime_get() #9
  %sample_start = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 6
  %70 = ptrtoint ptr %sample_start to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call155, ptr %sample_start, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %add157 = add i32 %71, 100
  %call158 = call i32 @mod_timer(ptr noundef %rpm_timer, i32 noundef %add157) #9
  %fan_channel159 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 14
  %arrayidx160 = getelementptr ptr, ptr %call5.i.i327, i32 1
  %72 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %fan_channel159, ptr %arrayidx160, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then154, %for.end.if.end161_crit_edge, %if.end95.if.end161_crit_edge
  %info = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 13
  %73 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @pwm_fan_hwmon_ops, ptr %info, align 4
  %info163 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 13, i32 1
  %74 = ptrtoint ptr %info163 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call5.i.i327, ptr %info163, align 4
  %call165 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef nonnull %call.i, ptr noundef %info, ptr noundef null) #9
  %cmp.i332 = icmp ugt ptr %call165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %do.end170, label %if.end172

do.end170:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #12
  %75 = ptrtoint ptr %call165 to i32
  br label %cleanup187

if.end172:                                        ; preds = %if.end161
  %call173 = call fastcc i32 @pwm_fan_of_get_cooling_data(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end172.cleanup187_crit_edge

if.end172.cleanup187_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup187

if.end176:                                        ; preds = %if.end172
  %pwm_fan_max_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 10
  %76 = ptrtoint ptr %pwm_fan_max_state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pwm_fan_max_state, align 8
  %pwm_fan_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 9
  %78 = ptrtoint ptr %pwm_fan_state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %pwm_fan_state, align 4
  %79 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node, align 8
  %call178 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %dev1, ptr noundef %80, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @pwm_fan_cooling_ops) #9
  %cmp.i333 = icmp ugt ptr %call178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then180, label %if.end185

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %call178 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %81) #12
  br label %cleanup187

if.end185:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  %cdev186 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %call.i, i32 0, i32 12
  %82 = ptrtoint ptr %cdev186 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call178, ptr %cdev186, align 8
  br label %cleanup187

cleanup187:                                       ; preds = %if.end185, %if.then180, %if.end172.cleanup187_crit_edge, %do.end170, %cleanup.thread, %devm_kcalloc.exit330.cleanup187_crit_edge, %devm_kcalloc.exit326.cleanup187_crit_edge, %if.end83.cleanup187_crit_edge, %devm_kcalloc.exit.cleanup187_crit_edge, %devm_kcalloc.exit.thread, %if.then60, %devm_add_action_or_reset.exit322, %do.end48, %do.end41, %devm_add_action_or_reset.exit, %do.end27, %if.then13.cleanup187_crit_edge, %if.then5, %entry.cleanup187_crit_edge
  %retval.2 = phi i32 [ %call8, %if.then5 ], [ -22, %do.end41 ], [ %call.i317, %do.end48 ], [ %call62, %if.then60 ], [ %75, %do.end170 ], [ %81, %if.then180 ], [ 0, %if.end185 ], [ %call22, %do.end27 ], [ -12, %entry.cleanup187_crit_edge ], [ %call.i314, %devm_add_action_or_reset.exit ], [ %call.i318, %devm_add_action_or_reset.exit322 ], [ -12, %devm_kcalloc.exit.cleanup187_crit_edge ], [ -12, %devm_kcalloc.exit326.cleanup187_crit_edge ], [ -12, %devm_kcalloc.exit330.cleanup187_crit_edge ], [ %call173, %if.end172.cleanup187_crit_edge ], [ %6, %if.then13.cleanup187_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %retval.1.ph, %cleanup.thread ], [ -12, %if.end83.cleanup187_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_fan_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pwm_value.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwm_value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #9
  %pwm_state.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %state.i, ptr %pwm_state.i, i32 24)
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 1
  %5 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %duty_cycle.i, align 8
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 4
  %pwm.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm.i, align 4
  %call1.i = call i32 @pwm_apply_state(ptr noundef %8, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #9
  br i1 %cmp.i, label %if.then.i.pwm_fan_disable.exit_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i.pwm_fan_disable.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_disable.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %reg_en.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %reg_en.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_en.i, align 8
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %if.end3.i.pwm_fan_disable.exit_crit_edge, label %if.then5.i

if.end3.i.pwm_fan_disable.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_disable.exit

if.then5.i:                                       ; preds = %if.end3.i
  %call7.i = call i32 @regulator_disable(ptr noundef nonnull %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.pwm_fan_disable.exit_crit_edge, label %do.end.i

if.then5.i.pwm_fan_disable.exit_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_disable.exit

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call7.i) #12
  br label %pwm_fan_disable.exit

pwm_fan_disable.exit:                             ; preds = %do.end.i, %if.then5.i.pwm_fan_disable.exit_crit_edge, %if.end3.i.pwm_fan_disable.exit_crit_edge, %if.then.i.pwm_fan_disable.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_pwm_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_fan_regulator_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sample_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %sample_start = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %sample_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sample_start, align 8
  %sub.i = sub i64 %call, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %2) #13, !srcloc !123
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %2, i64 %3, i32 0) #13, !srcloc !124
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %tach_count = getelementptr i8, ptr %t, i32 -20
  %5 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tach_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp24 = icmp sgt i32 %6, 0
  br i1 %cmp24, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tachs = getelementptr i8, ptr %t, i32 -16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %tachs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tachs, align 8
  %pulses3 = getelementptr %struct.pwm_fan_tach, ptr %8, i32 %i.025, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pulses3, i32 noundef 4) #9
  %9 = ptrtoint ptr %pulses3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %pulses3, align 4
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pulses3, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %pulses3, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pulses3, ptr %pulses3, i32 %10, ptr elementtype(i32) %pulses3) #9, !srcloc !125
  %mul6 = mul i32 %10, 60000
  %pulses_per_revolution = getelementptr %struct.pwm_fan_tach, ptr %8, i32 %i.025, i32 3
  %12 = ptrtoint ptr %pulses_per_revolution to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pulses_per_revolution, align 4
  %conv7 = zext i8 %13 to i32
  %mul8 = mul i32 %conv7, %conv
  %div = udiv i32 %mul6, %mul8
  %rpm = getelementptr %struct.pwm_fan_tach, ptr %8, i32 %i.025, i32 2
  %14 = ptrtoint ptr %rpm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %rpm, align 4
  %inc = add nuw nsw i32 %i.025, 1
  %15 = ptrtoint ptr %tach_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tach_count, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call9 = tail call i64 @ktime_get() #9
  %17 = ptrtoint ptr %sample_start to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call9, ptr %sample_start, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 100
  %call11 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_fan_pwm_disable(ptr noundef %__ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %__ctx, i32 0, i32 2
  %enabled = getelementptr inbounds %struct.pwm_fan_ctx, ptr %__ctx, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 4
  %pwm = getelementptr inbounds %struct.pwm_fan_ctx, ptr %__ctx, i32 0, i32 1
  %1 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwm, align 4
  %call = tail call i32 @pwm_apply_state(ptr noundef %2, ptr noundef %pwm_state) #9
  %rpm_timer = getelementptr inbounds %struct.pwm_fan_ctx, ptr %__ctx, i32 0, i32 7
  %call2 = tail call i32 @del_timer_sync(ptr noundef %rpm_timer) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pulse_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pulses = getelementptr inbounds %struct.pwm_fan_tach, ptr %dev_id, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pulses, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %pulses, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pulses, ptr %pulses, i32 1, ptr elementtype(i32) %pulses) #9, !srcloc !126
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_fan_of_get_cooling_data(ptr noundef %dev, ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool3.not, i32 -22, i32 %call.i
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !122

devm_kcalloc.exit.thread:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_fan_cooling_levels55 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %pwm_fan_cooling_levels55 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pwm_fan_cooling_levels55, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end4
  %5 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3520) #9
  %pwm_fan_cooling_levels = getelementptr inbounds %struct.pwm_fan_ctx, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %pwm_fan_cooling_levels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %pwm_fan_cooling_levels, align 4
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end9

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %devm_kcalloc.exit
  %call.i53 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %call5.i.i, i32 noundef %call.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i53)
  %tobool12.not = icmp sgt i32 %call.i53, -1
  br i1 %tobool12.not, label %for.body.lr.ph, label %do.end16

for.body.lr.ph:                                   ; preds = %if.end9
  %7 = ptrtoint ptr %pwm_fan_cooling_levels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm_fan_cooling_levels, align 4
  br label %for.body

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %8, i32 %i.059
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp20 = icmp ugt i32 %10, 255
  br i1 %cmp20, label %do.end24, label %for.inc

do.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %i.059, i32 noundef %10, i32 noundef 255) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %call.i, -1
  %pwm_fan_max_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %ctx, i32 0, i32 10
  %11 = ptrtoint ptr %pwm_fan_max_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %pwm_fan_max_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end24, %do.end16, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ %call.i53, %do.end16 ], [ -22, %do.end24 ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pwm_fan_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %switch.selectcmp = icmp eq i32 %type, 7
  %switch.select = select i1 %switch.selectcmp, i16 292, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %switch.selectcmp2 = icmp eq i32 %type, 8
  %switch.select3 = select i1 %switch.selectcmp2, i16 420, i16 %switch.select
  ret i16 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_fan_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_value = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 8
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tachs = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %tachs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tachs, align 8
  %rpm = getelementptr %struct.pwm_fan_tach, ptr %4, i32 %channel, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %sw.bb
  %.sink.in = phi ptr [ %rpm, %sw.bb1 ], [ %pwm_value, %sw.bb ]
  %5 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.sink = load i32, ptr %.sink.in, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_fan_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %2 = icmp ugt i32 %val, 255
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %pwm_value.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwm_value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp.i = icmp eq i32 %4, %val
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %pwm_state.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pwm_state.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pwm_state.i, align 8
  %conv.i = trunc i64 %6 to i32
  %sub.i = add i32 %conv.i, -1
  %mul.i = mul i32 %sub.i, %val
  %sub2.i = add i32 %mul.i, 254
  %div.i = udiv i32 %sub2.i, 255
  %conv3.i = zext i32 %div.i to i64
  %duty_cycle.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv3.i, ptr %duty_cycle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.i = icmp ne i32 %val, 0
  %enabled.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2, i32 3
  %frombool.i = zext i1 %tobool.i to i8
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %enabled.i, align 4
  %pwm5.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pwm5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwm5.i, align 4
  %call.i = tail call i32 @pwm_apply_state(ptr noundef %10, ptr noundef %pwm_state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %__set_pwm.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %pwm_value.i, align 8
  br label %if.end4

__set_pwm.exit:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.then7.i, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #9
  %pwm_fan_cooling_levels.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 11
  %pwm_fan_max_state.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %pwm_fan_max_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pwm_fan_max_state.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %i.0.i = phi i32 [ 0, %if.end4 ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %13)
  %exitcond.not.i = icmp eq i32 %i.0.i, %13
  br i1 %exitcond.not.i, label %for.cond.i.pwm_fan_update_state.exit_crit_edge, label %for.body.i

for.cond.i.pwm_fan_update_state.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_update_state.exit

for.body.i:                                       ; preds = %for.cond.i
  %14 = ptrtoint ptr %pwm_fan_cooling_levels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwm_fan_cooling_levels.i, align 4
  %add.i = add i32 %i.0.i, 1
  %arrayidx.i = getelementptr i32, ptr %15, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp ugt i32 %17, %val
  br i1 %cmp1.i, label %for.body.i.pwm_fan_update_state.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.pwm_fan_update_state.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_update_state.exit

pwm_fan_update_state.exit:                        ; preds = %for.body.i.pwm_fan_update_state.exit_crit_edge, %for.cond.i.pwm_fan_update_state.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.0.i, %for.body.i.pwm_fan_update_state.exit_crit_edge ], [ %13, %for.cond.i.pwm_fan_update_state.exit_crit_edge ]
  %pwm_fan_state.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %pwm_fan_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0.lcssa.i, ptr %pwm_fan_state.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %pwm_fan_update_state.exit, %__set_pwm.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pwm_fan_update_state.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %__set_pwm.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_fan_get_max_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_fan_max_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pwm_fan_max_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwm_fan_max_state, align 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_fan_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_fan_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pwm_fan_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwm_fan_state, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_fan_set_cur_state(ptr noundef %cdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pwm_fan_max_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pwm_fan_max_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwm_fan_max_state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp ult i32 %3, %state
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pwm_fan_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %pwm_fan_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_fan_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %state)
  %cmp1 = icmp eq i32 %5, %state
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pwm_fan_cooling_levels = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pwm_fan_cooling_levels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwm_fan_cooling_levels, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %state
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %pwm_value.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwm_value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.i = icmp eq i32 %11, %9
  br i1 %cmp.i, label %if.end3.if.end6_crit_edge, label %if.end.i

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i:                                         ; preds = %if.end3
  %pwm_state.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pwm_state.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pwm_state.i, align 8
  %conv.i = trunc i64 %13 to i32
  %sub.i = add i32 %conv.i, -1
  %mul.i = mul i32 %sub.i, %9
  %sub2.i = add i32 %mul.i, 254
  %div.i = udiv i32 %sub2.i, 255
  %conv3.i = zext i32 %div.i to i64
  %duty_cycle.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv3.i, ptr %duty_cycle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i = icmp ne i32 %9, 0
  %enabled.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2, i32 3
  %frombool.i = zext i1 %tobool.i to i8
  %15 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %enabled.i, align 4
  %pwm5.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pwm5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwm5.i, align 4
  %call.i = tail call i32 @pwm_apply_state(ptr noundef %17, ptr noundef %pwm_state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %do.end

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %pwm_value.i, align 8
  br label %if.end6

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull %1) #9
  %device = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end6:                                          ; preds = %if.then7.i, %if.end3.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull %1) #9
  %19 = ptrtoint ptr %pwm_fan_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %state, ptr %pwm_fan_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_fan_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pwm_value.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pwm_value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwm_value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #9
  %pwm_state.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %state.i, ptr %pwm_state.i, i32 24)
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 1
  %5 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %duty_cycle.i, align 8
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 4
  %pwm.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm.i, align 4
  %call1.i = call i32 @pwm_apply_state(ptr noundef %8, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #9
  br i1 %cmp.i, label %if.then.i.pwm_fan_disable.exit_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i.pwm_fan_disable.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_disable.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %reg_en.i = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %reg_en.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_en.i, align 8
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %if.end3.i.pwm_fan_disable.exit_crit_edge, label %if.then5.i

if.end3.i.pwm_fan_disable.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_disable.exit

if.then5.i:                                       ; preds = %if.end3.i
  %call7.i = call i32 @regulator_disable(ptr noundef nonnull %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.pwm_fan_disable.exit_crit_edge, label %do.end.i

if.then5.i.pwm_fan_disable.exit_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_fan_disable.exit

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call7.i) #12
  br label %pwm_fan_disable.exit

pwm_fan_disable.exit:                             ; preds = %do.end.i, %if.then5.i.pwm_fan_disable.exit_crit_edge, %if.end3.i.pwm_fan_disable.exit_crit_edge, %if.then.i.pwm_fan_disable.exit_crit_edge
  %retval.1.i = phi i32 [ %call7.i, %do.end.i ], [ %call1.i, %if.then.i.pwm_fan_disable.exit_crit_edge ], [ 0, %if.then5.i.pwm_fan_disable.exit_crit_edge ], [ 0, %if.end3.i.pwm_fan_disable.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_fan_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_en = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_en, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call2) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pwm_value = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pwm_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %pwm = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwm, align 4
  %pwm_state = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @pwm_apply_state(ptr noundef %7, ptr noundef %pwm_state) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call8, %if.end7 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_pwm_fan__290_540_pwm_fan_driver_init6, !1, !"__initcall__kmod_pwm_fan__290_540_pwm_fan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pwm-fan.c", i32 540, i32 1}
!2 = !{ptr @__exitcall_pwm_fan_driver_exit, !1, !"__exitcall_pwm_fan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pwm-fan.c", i32 542, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias292, !6, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pwm-fan.c", i32 543, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pwm-fan.c", i32 544, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/pwm-fan.c", i32 545, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pwm-fan.c", i32 534, i32 12}
!14 = !{ptr @pwm_fan_driver, !15, !"pwm_fan_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pwm-fan.c", i32 530, i32 31}
!16 = !{ptr @pwm_fan_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pwm-fan.c", i32 313, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/pwm-fan.c", i32 317, i32 48}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/pwm-fan.c", i32 321, i32 49}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/pwm-fan.c", i32 330, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pwm_fan_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @pwm_fan_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/pwm-fan.c", i32 347, i32 3}
!33 = !{ptr @pwm_fan_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pwm_fan_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/pwm-fan.c", i32 354, i32 3}
!37 = !{ptr @pwm_fan_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pwm_fan_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @pwm_fan_probe.__key.15, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/pwm-fan.c", i32 357, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/pwm-fan.c", i32 365, i32 10}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/pwm-fan.c", i32 366, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pwm_fan_probe.__UNIQUE_ID_ddebug288, !45, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/pwm-fan.c", i32 403, i32 5}
!50 = !{ptr @pwm_fan_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pwm_fan_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/pwm-fan.c", i32 411, i32 9}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/pwm-fan.c", i32 416, i32 4}
!56 = !{ptr @pwm_fan_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pwm_fan_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/pwm-fan.c", i32 422, i32 3}
!60 = !{ptr @pwm_fan_probe.__UNIQUE_ID_ddebug289, !59, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/pwm-fan.c", i32 436, i32 52}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/pwm-fan.c", i32 439, i32 3}
!65 = !{ptr @pwm_fan_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pwm_fan_probe._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/pwm-fan.c", i32 453, i32 4}
!69 = !{ptr @pwm_fan_probe._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pwm_fan_probe._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pwm_fan_channel_pwm, !72, !"pwm_fan_channel_pwm", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/pwm-fan.c", i32 57, i32 40}
!73 = !{ptr @pwm_fan_channel_config_pwm, !74, !"pwm_fan_channel_config_pwm", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/pwm-fan.c", i32 52, i32 18}
!75 = !{ptr @pwm_fan_hwmon_ops, !76, !"pwm_fan_hwmon_ops", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/pwm-fan.c", i32 180, i32 31}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/pwm-fan.c", i32 248, i32 28}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/pwm-fan.c", i32 253, i32 3}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pwm_fan_of_get_cooling_data._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @pwm_fan_of_get_cooling_data._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pwm-fan.c", i32 266, i32 3}
!86 = !{ptr @pwm_fan_of_get_cooling_data._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pwm_fan_of_get_cooling_data._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/pwm-fan.c", i32 272, i32 4}
!90 = !{ptr @pwm_fan_of_get_cooling_data._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @pwm_fan_of_get_cooling_data._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @pwm_fan_cooling_ops, !93, !"pwm_fan_cooling_ops", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/pwm-fan.c", i32 236, i32 48}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/pwm-fan.c", i32 227, i32 3}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pwm_fan_set_cur_state._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pwm_fan_set_cur_state._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/pwm-fan.c", i32 483, i32 4}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pwm_fan_disable._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pwm_fan_disable._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @of_pwm_fan_match, !105, !"of_pwm_fan_match", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/pwm-fan.c", i32 524, i32 34}
!106 = !{ptr @pwm_fan_pm, !107, !"pwm_fan_pm", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/pwm-fan.c", i32 522, i32 8}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/pwm-fan.c", i32 510, i32 4}
!110 = !{ptr @pwm_fan_resume._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pwm_fan_resume._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148742803, i64 2148742808, i64 2148742821, i64 2148742865, i64 2148742899, i64 2148742920}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 1165691, i64 1165718}
!124 = !{i64 1166386, i64 1166413, i64 1166446, i64 1166467, i64 1166494, i64 1166520}
!125 = !{i64 2148190435, i64 2148190461, i64 2148190490, i64 2148190524, i64 2148190555, i64 2148190578}
!126 = !{i64 2148187970, i64 2148187996, i64 2148188025, i64 2148188059, i64 2148188090, i64 2148188113}
