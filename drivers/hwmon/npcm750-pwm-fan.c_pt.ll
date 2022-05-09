; ModuleID = '/llk/IR_all_yes/drivers/hwmon/npcm750-pwm-fan.c_pt.bc'
source_filename = "../drivers/hwmon/npcm750-pwm-fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.npcm7xx_pwm_fan_data = type { ptr, ptr, i32, i32, ptr, ptr, [2 x %struct.mutex], [8 x %struct.spinlock], [8 x i32], [8 x i8], [16 x i8], i32, %struct.timer_list, [16 x %struct.npcm7xx_fan_dev], [8 x ptr], i8 }
%struct.npcm7xx_fan_dev = type { i8, i8, i16, i32 }
%struct.npcm7xx_cooling_device = type { [20 x i8], ptr, ptr, i32, ptr, i8, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_npcm750_pwm_fan__189_1031_npcm7xx_pwm_fan_driver_init6 = internal global ptr @npcm7xx_pwm_fan_driver_init, section ".initcall6.init", align 4
@npcm7xx_pwm_fan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm7xx_pwm_fan_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_fan_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_npcm7xx_pwm_fan_driver_exit = internal global ptr @npcm7xx_pwm_fan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description190 = internal constant [69 x i8] c"npcm750_pwm_fan.description=Nuvoton NPCM7XX PWM and Fan Tacho driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [63 x i8] c"npcm750_pwm_fan.author=Tomer Maimon <tomer.maimon@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [51 x i8] c"npcm750_pwm_fan.file=drivers/hwmon/npcm750-pwm-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [31 x i8] c"npcm750_pwm_fan.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"npcm7xx_pwm_fan\00", [16 x i8] zeroinitializer }, align 32
@of_pwm_fan_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-pwm-fan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 928, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm resource not found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"npcm7xx_pwm_fan_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hwmon/npcm750-pwm-fan.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr = internal global ptr @npcm7xx_pwm_fan_probe._entry, section ".printk_index", align 4
@npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 -23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"npcm750_pwm_fan\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwm base resource is %pR\0A\00", [38 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't get pwm clock\0A\00", [40 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.11 = internal global ptr @npcm7xx_pwm_fan_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fan\00", [28 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 945, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fan resource not found\0A\00", [40 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.15 = internal global ptr @npcm7xx_pwm_fan_probe._entry.13, section ".printk_index", align 4
@npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fan base resource is %pR\0A\00", [38 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 956, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't get fan clock\0A\00", [40 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.19 = internal global ptr @npcm7xx_pwm_fan_probe._entry.17, section ".printk_index", align 4
@npcm7xx_pwm_fan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&data->pwm_lock[cnt]\00", [43 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->fan_lock[i]\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NPCM7XX-FAN-MD%d\00", [47 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register IRQ fan%d failed\0A\00", [37 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.26 = internal global ptr @npcm7xx_pwm_fan_probe._entry.24, section ".printk_index", align 4
@npcm7xx_pwm_fan_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable pwm and fan failed\0A\00", [37 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.29 = internal global ptr @npcm7xx_pwm_fan_probe._entry.27, section ".printk_index", align 4
@npcm7xx_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @npcm7xx_hwmon_ops, ptr @npcm7xx_info }, [24 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 995, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.32 = internal global ptr @npcm7xx_pwm_fan_probe._entry.30, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@npcm7xx_pwm_fan_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&data->fan_timer)\00", [45 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016NPCM7XX PWM-FAN Driver probed, output Freq %dHz[PWM], input Freq %dHz[FAN]\0A\00", [50 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_fan_probe._entry_ptr.37 = internal global ptr @npcm7xx_pwm_fan_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cooling-levels\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan-tach-ch\00", [20 x i8] zeroinitializer }, align 32
@npcm7xx_create_pwm_cooling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 843, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Property 'cooling-levels' cannot be read.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"npcm7xx_create_pwm_cooling\00", [37 x i8] zeroinitializer }, align 32
@npcm7xx_create_pwm_cooling._entry_ptr = internal global ptr @npcm7xx_create_pwm_cooling._entry, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pOFn%d\00", [24 x i8] zeroinitializer }, align 32
@npcm7xx_pwm_cool_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @npcm7xx_pwm_cz_get_max_state, ptr @npcm7xx_pwm_cz_get_cur_state, ptr @npcm7xx_pwm_cz_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@npcm7xx_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @npcm7xx_is_visible, ptr @npcm7xx_read, ptr null, ptr @npcm7xx_write }, [16 x i8] zeroinitializer }, align 32
@npcm7xx_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.44, ptr @.compoundliteral.46, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.45 }, [24 x i8] zeroinitializer }, align 32
@switch.table.npcm7xx_pwm_config_set = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 256, i32 4096, i32 65536], [16 x i8] zeroinitializer }, align 32
@switch.table.npcm7xx_pwm_config_set.47 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 1024, i32 16384, i32 262144], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"npcm7xx_pwm_fan_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1023, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1026, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"of_pwm_fan_match_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1017, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 926, i32 59 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 928, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 933, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 939, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 943, i32 59 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 945, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 950, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 956, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 964, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 967, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 973, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 977, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 985, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"npcm7xx_chip_info\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 668, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 995, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1004, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1011, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 871, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 879, i32 42 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 887, i32 46 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 843, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 846, i32 44 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"npcm7xx_pwm_cool_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 816, i32 48 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"npcm7xx_hwmon_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 662, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant [13 x i8] c"npcm7xx_info\00", align 1
@___asan_gen_.186 = private constant [35 x i8] c"../drivers/hwmon/npcm750-pwm-fan.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 632, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [36 x i8] c"switch.table.npcm7xx_pwm_config_set\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [39 x i8] c"switch.table.npcm7xx_pwm_config_set.47\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_npcm7xx_pwm_fan_driver_exit, ptr @__initcall__kmod_npcm750_pwm_fan__189_1031_npcm7xx_pwm_fan_driver_init6, ptr @npcm7xx_create_pwm_cooling._entry, ptr @npcm7xx_create_pwm_cooling._entry_ptr, ptr @npcm7xx_pwm_fan_driver_exit, ptr @npcm7xx_pwm_fan_probe._entry, ptr @npcm7xx_pwm_fan_probe._entry.13, ptr @npcm7xx_pwm_fan_probe._entry.17, ptr @npcm7xx_pwm_fan_probe._entry.24, ptr @npcm7xx_pwm_fan_probe._entry.27, ptr @npcm7xx_pwm_fan_probe._entry.30, ptr @npcm7xx_pwm_fan_probe._entry.35, ptr @npcm7xx_pwm_fan_probe._entry.9, ptr @npcm7xx_pwm_fan_probe._entry_ptr, ptr @npcm7xx_pwm_fan_probe._entry_ptr.11, ptr @npcm7xx_pwm_fan_probe._entry_ptr.15, ptr @npcm7xx_pwm_fan_probe._entry_ptr.19, ptr @npcm7xx_pwm_fan_probe._entry_ptr.26, ptr @npcm7xx_pwm_fan_probe._entry_ptr.29, ptr @npcm7xx_pwm_fan_probe._entry_ptr.32, ptr @npcm7xx_pwm_fan_probe._entry_ptr.37, ptr @npcm7xx_pwm_fan_driver, ptr @.str, ptr @of_pwm_fan_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @npcm7xx_pwm_fan_probe.__key, ptr @.str.20, ptr @npcm7xx_pwm_fan_probe.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @npcm7xx_chip_info, ptr @.str.31, ptr @npcm7xx_pwm_fan_probe.__key.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @npcm7xx_pwm_cool_ops, ptr @npcm7xx_hwmon_ops, ptr @npcm7xx_info, ptr @.compoundliteral, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @switch.table.npcm7xx_pwm_config_set, ptr @switch.table.npcm7xx_pwm_config_set.47], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pwm_fan_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_fan_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_create_pwm_cooling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_pwm_cool_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.npcm7xx_pwm_config_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.npcm7xx_pwm_config_set.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_pwm_fan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm7xx_pwm_fan_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_pwm_fan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm7xx_pwm_fan_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_pwm_fan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pwm_port.i = alloca i32, align 4
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 832, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call2) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %call.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_pwm_fan_probe, %do.end16)) #10
          to label %if.then13 [label %do.end16], !srcloc !104

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug187, ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %call2) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.end5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end22:                                         ; preds = %do.end16
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %pwm_clk = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %pwm_clk, align 4
  %cmp.i241 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  %8 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm_clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call33 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.12) #10
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end39

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %call40 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call33) #10
  %fan_base = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %fan_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call40, ptr %fan_base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm7xx_pwm_fan_probe, %do.end58)) #10
          to label %if.then55 [label %do.end58], !srcloc !104

if.then55:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug188, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull %call33) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %if.end39
  %12 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fan_base, align 4
  %cmp.i242 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then61, label %if.end64

if.then61:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end64:                                         ; preds = %do.end58
  %call65 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  %fan_clk = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %fan_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call65, ptr %fan_clk, align 4
  %cmp.i243 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #13
  %16 = ptrtoint ptr %fan_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fan_clk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end64
  %19 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwm_clk, align 4
  %call.i244 = tail call i32 @clk_get_rate(ptr noundef %20) #10
  %pwm_clk_freq.i = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %pwm_clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i244, ptr %pwm_clk_freq.i, align 4
  %div48.i = lshr i32 %call.i244, 8
  %add.i = add nuw nsw i32 %div48.i, 12500
  %div3.i = udiv i32 %add.i, 25000
  %22 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 2) #10
  %dec.i = add nsw i32 %22, -1
  %shl.i = shl nuw nsw i32 %dec.i, 8
  %or.i = or i32 %shl.i, %dec.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #10, !srcloc !106
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 1145307136) #10, !srcloc !106
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 143132672) #10, !srcloc !106
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 -16777216) #10, !srcloc !106
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %add.ptr22.1.i = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.1.i, i32 -16777216) #10, !srcloc !106
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %add.ptr22.2.i = getelementptr i8, ptr %35, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.2.i, i32 -16777216) #10, !srcloc !106
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %add.ptr22.3.i = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.3.i, i32 -16777216) #10, !srcloc !106
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %39, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %23) #10, !srcloc !106
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %add.ptr9.1.i = getelementptr i8, ptr %41, i32 4100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i, i32 1145307136) #10, !srcloc !106
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %add.ptr13.1.i = getelementptr i8, ptr %43, i32 4104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.1.i, i32 143132672) #10, !srcloc !106
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %add.ptr20.152.i = getelementptr i8, ptr %45, i32 4108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.152.i, i32 -16777216) #10, !srcloc !106
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %add.ptr22.1.1.i = getelementptr i8, ptr %47, i32 4120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.1.1.i, i32 -16777216) #10, !srcloc !106
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %add.ptr22.2.1.i = getelementptr i8, ptr %49, i32 4132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.2.1.i, i32 -16777216) #10, !srcloc !106
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr22.3.1.i = getelementptr i8, ptr %51, i32 4144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.3.1.i, i32 -16777216) #10, !srcloc !106
  %and.i = and i32 %dec.i, 15
  %add26.i = add nuw nsw i32 %and.i, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end74
  %md.093.i = phi i32 [ 0, %if.end74 ], [ %inc55.i, %for.body.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fan_base, align 4
  %mul.i = shl i32 %md.093.i, 12
  %add.ptr.i = getelementptr i8, ptr %53, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 0) #10, !srcloc !108
  %54 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fan_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %55, i32 18
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 0) #10, !srcloc !108
  %56 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fan_base, align 4
  %add.ptr8.i245 = getelementptr i8, ptr %57, i32 16
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i245, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 63) #10, !srcloc !108
  %58 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fan_base, align 4
  %add.ptr12.i246 = getelementptr i8, ptr %59, i32 8
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i246, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 -1) #10, !srcloc !108
  %60 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fan_base, align 4
  %add.ptr16.i = getelementptr i8, ptr %61, i32 12
  %add.ptr17.i = getelementptr i8, ptr %add.ptr16.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i, i8 100) #10, !srcloc !108
  %62 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fan_base, align 4
  %add.ptr20.i247 = getelementptr i8, ptr %63, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i247, i16 -1) #10, !srcloc !110
  %64 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fan_base, align 4
  %add.ptr24.i = getelementptr i8, ptr %65, i32 6
  %add.ptr25.i = getelementptr i8, ptr %add.ptr24.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25.i, i16 -1) #10, !srcloc !110
  %66 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fan_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %67, i32 24
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29.i, i8 68) #10, !srcloc !108
  %68 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fan_base, align 4
  %add.ptr32.i = getelementptr i8, ptr %69, i32 20
  %add.ptr33.i = getelementptr i8, ptr %add.ptr32.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33.i, i16 -81) #10, !srcloc !110
  %70 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fan_base, align 4
  %add.ptr36.i = getelementptr i8, ptr %71, i32 22
  %add.ptr37.i = getelementptr i8, ptr %add.ptr36.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37.i, i16 -81) #10, !srcloc !110
  %72 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fan_base, align 4
  %add.ptr40.i = getelementptr i8, ptr %73, i32 26
  %add.ptr41.i = getelementptr i8, ptr %add.ptr40.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 0) #10, !srcloc !108
  %74 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fan_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %75, i32 28
  %add.ptr45.i = getelementptr i8, ptr %add.ptr44.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45.i, i8 0) #10, !srcloc !108
  %mul49.i = shl nuw i32 %md.093.i, 1
  %arrayidx.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %mul49.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %arrayidx.i, align 4
  %fan_pls_per_rev.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %mul49.i, i32 1
  %77 = ptrtoint ptr %fan_pls_per_rev.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %fan_pls_per_rev.i, align 1
  %fan_cnt.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %mul49.i, i32 2
  %78 = ptrtoint ptr %fan_cnt.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %fan_cnt.i, align 2
  %add.1.i = or i32 %mul49.i, 1
  %arrayidx.1.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %add.1.i
  %79 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %arrayidx.1.i, align 4
  %fan_pls_per_rev.1.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %add.1.i, i32 1
  %80 = ptrtoint ptr %fan_pls_per_rev.1.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %fan_pls_per_rev.1.i, align 1
  %fan_cnt.1.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %add.1.i, i32 2
  %81 = ptrtoint ptr %fan_cnt.1.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %fan_cnt.1.i, align 2
  %inc55.i = add nuw nsw i32 %md.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc55.i, 8
  br i1 %exitcond.not.i, label %npcm7xx_fan_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

npcm7xx_fan_init.exit:                            ; preds = %for.body.i
  %82 = ptrtoint ptr %fan_clk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fan_clk, align 4
  %call.i248 = tail call i32 @clk_get_rate(ptr noundef %83) #10
  %div91.i = lshr i32 %call.i248, 8
  %input_clk_freq.i = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 11
  %84 = ptrtoint ptr %input_clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div91.i, ptr %input_clk_freq.i, align 4
  %arrayidx = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 6, i32 0
  tail call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.20, ptr noundef nonnull @npcm7xx_pwm_fan_probe.__key) #10
  %arrayidx.1 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__mutex_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.20, ptr noundef nonnull @npcm7xx_pwm_fan_probe.__key) #10
  %div27.i = udiv i32 %div48.i, %add26.i
  br label %do.body82

do.body82:                                        ; preds = %for.inc107.do.body82_crit_edge, %npcm7xx_fan_init.exit
  %i.0272 = phi i32 [ %inc108, %for.inc107.do.body82_crit_edge ], [ 0, %npcm7xx_fan_init.exit ]
  %arrayidx83 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 7, i32 %i.0272
  call void @__raw_spin_lock_init(ptr noundef %arrayidx83, ptr noundef nonnull @.str.22, ptr noundef nonnull @npcm7xx_pwm_fan_probe.__key.21, i16 noundef signext 3) #10
  %call87 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0272) #10
  %arrayidx88 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 8, i32 %i.0272
  %85 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call87, ptr %arrayidx88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp91 = icmp slt i32 %call87, 0
  br i1 %cmp91, label %do.body82.cleanup_crit_edge, label %if.end95

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end95:                                         ; preds = %do.body82
  %call96 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.23, i32 noundef %i.0272)
  %86 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx88, align 4
  %call.i249 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %87, ptr noundef nonnull @npcm7xx_fan_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %name, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool101.not = icmp eq i32 %call.i249, 0
  br i1 %tobool101.not, label %for.inc107, label %do.end105

do.end105:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %i.0272) #13
  br label %cleanup

for.inc107:                                       ; preds = %if.end95
  %inc108 = add nuw nsw i32 %i.0272, 1
  %exitcond.not = icmp eq i32 %inc108, 8
  br i1 %exitcond.not, label %for.end109, label %for.inc107.do.body82_crit_edge

for.inc107.do.body82_crit_edge:                   ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body82

for.end109:                                       ; preds = %for.inc107
  %call110 = call ptr @of_get_next_child(ptr noundef %2, ptr noundef null) #10
  %cmp112.not273 = icmp eq ptr %call110, null
  br i1 %cmp112.not273, label %for.end109.for.end123_crit_edge, label %for.end109.for.body113_crit_edge

for.end109.for.body113_crit_edge:                 ; preds = %for.end109
  br label %for.body113

for.end109.for.end123_crit_edge:                  ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.body113:                                      ; preds = %for.inc121.for.body113_crit_edge, %for.end109.for.body113_crit_edge
  %child.0274 = phi ptr [ %call122, %for.inc121.for.body113_crit_edge ], [ %call110, %for.end109.for.body113_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_port.i) #10
  %88 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %pwm_port.i, align 4, !annotation !111
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0274, ptr noundef nonnull @.str.38, ptr noundef nonnull %pwm_port.i, i32 noundef 1, i32 noundef 0) #10
  %89 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body113.npcm7xx_en_pwm_fan.exit_crit_edge

for.body113.npcm7xx_en_pwm_fan.exit_crit_edge:    ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #12
  br label %npcm7xx_en_pwm_fan.exit

if.end.i:                                         ; preds = %for.body113
  %90 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pwm_port.i, align 4
  %arrayidx.i250 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 9, i32 %91
  %92 = ptrtoint ptr %arrayidx.i250 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %arrayidx.i250, align 1
  %call1.i = call fastcc i32 @npcm7xx_pwm_config_set(ptr noundef %call.i, i32 noundef %91, i16 noundef zeroext 255) #10
  %call.i.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0274, ptr noundef nonnull @.str.39, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i251 = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i251, label %if.then3.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %93 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pwm_port.i, align 4
  %conv.i = trunc i32 %call.i.i to i8
  %call.i.i59.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i59.i, null
  br i1 %tobool.not.i.i, label %if.then3.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, label %if.end.i.i

if.then3.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %npcm7xx_en_pwm_fan.exit.thread

if.end.i.i:                                       ; preds = %if.then3.i
  %conv.i.i = and i32 %call.i.i, 255
  %call.i52.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %conv.i.i, i32 noundef 3520) #10
  %cooling_levels.i.i = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %call.i.i59.i, i32 0, i32 4
  %95 = ptrtoint ptr %cooling_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i52.i.i, ptr %cooling_levels.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call.i52.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, label %if.end5.i.i

if.end.i.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %npcm7xx_en_pwm_fan.exit.thread

if.end5.i.i:                                      ; preds = %if.end.i.i
  %sub.i.i = add i8 %conv.i, -1
  %max_state.i.i = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %call.i.i59.i, i32 0, i32 5
  %96 = ptrtoint ptr %max_state.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %sub.i.i, ptr %max_state.i.i, align 4
  %call.i53.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.0274, ptr noundef nonnull @.str.39, ptr noundef nonnull %call.i52.i.i, i32 noundef %conv.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i53.i.i)
  %tobool11.not.i.i = icmp sgt i32 %call.i53.i.i, -1
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #13
  br label %npcm7xx_en_pwm_fan.exit.thread

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %call14.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i.i59.i, i32 noundef 20, ptr noundef nonnull @.str.43, ptr noundef nonnull %child.0274, i32 noundef %94) #10
  %call17.i.i = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %dev1, ptr noundef nonnull %child.0274, ptr noundef nonnull %call.i.i59.i, ptr noundef nonnull %call.i.i59.i, ptr noundef nonnull @npcm7xx_pwm_cool_ops) #10
  %tcdev.i.i = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %call.i.i59.i, i32 0, i32 2
  %97 = ptrtoint ptr %tcdev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call17.i.i, ptr %tcdev.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call17.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %npcm7xx_create_pwm_cooling.exit.i, label %npcm7xx_create_pwm_cooling.exit.thread64.i

npcm7xx_create_pwm_cooling.exit.thread64.i:       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data24.i.i = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %call.i.i59.i, i32 0, i32 1
  %98 = ptrtoint ptr %data24.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i, ptr %data24.i.i, align 4
  %pwm_port25.i.i = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %call.i.i59.i, i32 0, i32 3
  %99 = ptrtoint ptr %pwm_port25.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %94, ptr %pwm_port25.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 14, i32 %94
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i.i59.i, ptr %arrayidx.i.i, align 4
  br label %if.end8.i

npcm7xx_create_pwm_cooling.exit.i:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %call17.i.i to i32
  br label %npcm7xx_en_pwm_fan.exit

if.end8.i:                                        ; preds = %npcm7xx_create_pwm_cooling.exit.thread64.i, %if.end.i.if.end8.i_crit_edge
  %call.i60.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0274, ptr noundef nonnull @.str.40, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60.i)
  %cmp10.i = icmp slt i32 %call.i60.i, 1
  br i1 %cmp10.i, label %if.end8.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, label %if.end13.i

if.end8.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %npcm7xx_en_pwm_fan.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %call.i60.i, i32 noundef 3520) #10
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %if.end13.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, label %if.end17.i

if.end13.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %npcm7xx_en_pwm_fan.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %call.i61.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.0274, ptr noundef nonnull @.str.40, ptr noundef nonnull %call5.i.i.i, i32 noundef %call.i60.i, i32 noundef 0) #10
  %102 = call i32 @llvm.smin.i32(i32 %call.i61.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61.i)
  %tobool19.not.i = icmp sgt i32 %call.i61.i, -1
  br i1 %tobool19.not.i, label %if.end17.i.for.body.i252_crit_edge, label %if.end17.i.npcm7xx_en_pwm_fan.exit_crit_edge

if.end17.i.npcm7xx_en_pwm_fan.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %npcm7xx_en_pwm_fan.exit

if.end17.i.for.body.i252_crit_edge:               ; preds = %if.end17.i
  br label %for.body.i252

for.body.i252:                                    ; preds = %for.body.i252.for.body.i252_crit_edge, %if.end17.i.for.body.i252_crit_edge
  %conv2269.i = phi i32 [ %conv22.i, %for.body.i252.for.body.i252_crit_edge ], [ 0, %if.end17.i.for.body.i252_crit_edge ]
  %ch.068.i = phi i8 [ %inc.i, %for.body.i252.for.body.i252_crit_edge ], [ 0, %if.end17.i.for.body.i252_crit_edge ]
  %arrayidx25.i = getelementptr i8, ptr %call5.i.i.i, i32 %conv2269.i
  %103 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx25.i, align 1
  %idxprom26.i = zext i8 %104 to i32
  %arrayidx27.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 %idxprom26.i
  %105 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %arrayidx27.i, align 1
  %arrayidx29.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 13, i32 %idxprom26.i
  %106 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx29.i, align 4
  %inc.i = add i8 %ch.068.i, 1
  %conv22.i = zext i8 %inc.i to i32
  %cmp23.i = icmp sgt i32 %call.i60.i, %conv22.i
  br i1 %cmp23.i, label %for.body.i252.for.body.i252_crit_edge, label %npcm7xx_en_pwm_fan.exit.thread260

for.body.i252.for.body.i252_crit_edge:            ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i252

npcm7xx_en_pwm_fan.exit.thread260:                ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_port.i) #10
  br label %for.inc121

npcm7xx_en_pwm_fan.exit.thread:                   ; preds = %if.end13.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, %if.end8.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, %do.end.i.i, %if.end.i.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge, %if.then3.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge
  %retval.0.i253.ph = phi i32 [ %call.i53.i.i, %do.end.i.i ], [ -12, %if.then3.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge ], [ -12, %if.end.i.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge ], [ -12, %if.end13.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge ], [ -22, %if.end8.i.npcm7xx_en_pwm_fan.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_port.i) #10
  br label %do.end119

npcm7xx_en_pwm_fan.exit:                          ; preds = %if.end17.i.npcm7xx_en_pwm_fan.exit_crit_edge, %npcm7xx_create_pwm_cooling.exit.i, %for.body113.npcm7xx_en_pwm_fan.exit_crit_edge
  %retval.0.i253 = phi i32 [ %89, %for.body113.npcm7xx_en_pwm_fan.exit_crit_edge ], [ %101, %npcm7xx_create_pwm_cooling.exit.i ], [ %102, %if.end17.i.npcm7xx_en_pwm_fan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_port.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i253)
  %tobool115.not = icmp eq i32 %retval.0.i253, 0
  br i1 %tobool115.not, label %npcm7xx_en_pwm_fan.exit.for.inc121_crit_edge, label %npcm7xx_en_pwm_fan.exit.do.end119_crit_edge

npcm7xx_en_pwm_fan.exit.do.end119_crit_edge:      ; preds = %npcm7xx_en_pwm_fan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

npcm7xx_en_pwm_fan.exit.for.inc121_crit_edge:     ; preds = %npcm7xx_en_pwm_fan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

do.end119:                                        ; preds = %npcm7xx_en_pwm_fan.exit.do.end119_crit_edge, %npcm7xx_en_pwm_fan.exit.thread
  %retval.0.i253259 = phi i32 [ %retval.0.i253.ph, %npcm7xx_en_pwm_fan.exit.thread ], [ %retval.0.i253, %npcm7xx_en_pwm_fan.exit.do.end119_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #13
  call void @of_node_put(ptr noundef nonnull %child.0274) #10
  br label %cleanup

for.inc121:                                       ; preds = %npcm7xx_en_pwm_fan.exit.for.inc121_crit_edge, %npcm7xx_en_pwm_fan.exit.thread260
  %call122 = call ptr @of_get_next_child(ptr noundef %2, ptr noundef nonnull %child.0274) #10
  %cmp112.not = icmp eq ptr %call122, null
  br i1 %cmp112.not, label %for.inc121.for.end123_crit_edge, label %for.inc121.for.body113_crit_edge

for.inc121.for.body113_crit_edge:                 ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body113

for.inc121.for.end123_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.end123:                                       ; preds = %for.inc121.for.end123_crit_edge, %for.end109.for.end123_crit_edge
  %call124 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @npcm7xx_chip_info, ptr noundef null) #10
  %cmp.i254 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %do.end129, label %for.body134.preheader

for.body134.preheader:                            ; preds = %for.end123
  %arrayidx135 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 0
  %107 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx135, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool136.not = icmp eq i8 %108, 0
  br i1 %tobool136.not, label %for.cond132, label %for.body134.preheader.if.then137_crit_edge

for.body134.preheader.if.then137_crit_edge:       ; preds = %for.body134.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

do.end129:                                        ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #13
  %109 = ptrtoint ptr %call124 to i32
  br label %cleanup

for.cond132:                                      ; preds = %for.body134.preheader
  %arrayidx135.1 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 1
  %110 = ptrtoint ptr %arrayidx135.1 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx135.1, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool136.not.1 = icmp eq i8 %111, 0
  br i1 %tobool136.not.1, label %for.cond132.1, label %for.cond132.if.then137_crit_edge

for.cond132.if.then137_crit_edge:                 ; preds = %for.cond132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.1:                                    ; preds = %for.cond132
  %arrayidx135.2 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 2
  %112 = ptrtoint ptr %arrayidx135.2 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx135.2, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool136.not.2 = icmp eq i8 %113, 0
  br i1 %tobool136.not.2, label %for.cond132.2, label %for.cond132.1.if.then137_crit_edge

for.cond132.1.if.then137_crit_edge:               ; preds = %for.cond132.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.2:                                    ; preds = %for.cond132.1
  %arrayidx135.3 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 3
  %114 = ptrtoint ptr %arrayidx135.3 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx135.3, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool136.not.3 = icmp eq i8 %115, 0
  br i1 %tobool136.not.3, label %for.cond132.3, label %for.cond132.2.if.then137_crit_edge

for.cond132.2.if.then137_crit_edge:               ; preds = %for.cond132.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.3:                                    ; preds = %for.cond132.2
  %arrayidx135.4 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 4
  %116 = ptrtoint ptr %arrayidx135.4 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx135.4, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool136.not.4 = icmp eq i8 %117, 0
  br i1 %tobool136.not.4, label %for.cond132.4, label %for.cond132.3.if.then137_crit_edge

for.cond132.3.if.then137_crit_edge:               ; preds = %for.cond132.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.4:                                    ; preds = %for.cond132.3
  %arrayidx135.5 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 5
  %118 = ptrtoint ptr %arrayidx135.5 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx135.5, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool136.not.5 = icmp eq i8 %119, 0
  br i1 %tobool136.not.5, label %for.cond132.5, label %for.cond132.4.if.then137_crit_edge

for.cond132.4.if.then137_crit_edge:               ; preds = %for.cond132.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.5:                                    ; preds = %for.cond132.4
  %arrayidx135.6 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 6
  %120 = ptrtoint ptr %arrayidx135.6 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx135.6, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool136.not.6 = icmp eq i8 %121, 0
  br i1 %tobool136.not.6, label %for.cond132.6, label %for.cond132.5.if.then137_crit_edge

for.cond132.5.if.then137_crit_edge:               ; preds = %for.cond132.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.6:                                    ; preds = %for.cond132.5
  %arrayidx135.7 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 7
  %122 = ptrtoint ptr %arrayidx135.7 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx135.7, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool136.not.7 = icmp eq i8 %123, 0
  br i1 %tobool136.not.7, label %for.cond132.7, label %for.cond132.6.if.then137_crit_edge

for.cond132.6.if.then137_crit_edge:               ; preds = %for.cond132.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.7:                                    ; preds = %for.cond132.6
  %arrayidx135.8 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 8
  %124 = ptrtoint ptr %arrayidx135.8 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx135.8, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool136.not.8 = icmp eq i8 %125, 0
  br i1 %tobool136.not.8, label %for.cond132.8, label %for.cond132.7.if.then137_crit_edge

for.cond132.7.if.then137_crit_edge:               ; preds = %for.cond132.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.8:                                    ; preds = %for.cond132.7
  %arrayidx135.9 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 9
  %126 = ptrtoint ptr %arrayidx135.9 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx135.9, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool136.not.9 = icmp eq i8 %127, 0
  br i1 %tobool136.not.9, label %for.cond132.9, label %for.cond132.8.if.then137_crit_edge

for.cond132.8.if.then137_crit_edge:               ; preds = %for.cond132.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.9:                                    ; preds = %for.cond132.8
  %arrayidx135.10 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 10
  %128 = ptrtoint ptr %arrayidx135.10 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx135.10, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool136.not.10 = icmp eq i8 %129, 0
  br i1 %tobool136.not.10, label %for.cond132.10, label %for.cond132.9.if.then137_crit_edge

for.cond132.9.if.then137_crit_edge:               ; preds = %for.cond132.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.10:                                   ; preds = %for.cond132.9
  %arrayidx135.11 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 11
  %130 = ptrtoint ptr %arrayidx135.11 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx135.11, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool136.not.11 = icmp eq i8 %131, 0
  br i1 %tobool136.not.11, label %for.cond132.11, label %for.cond132.10.if.then137_crit_edge

for.cond132.10.if.then137_crit_edge:              ; preds = %for.cond132.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.11:                                   ; preds = %for.cond132.10
  %arrayidx135.12 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 12
  %132 = ptrtoint ptr %arrayidx135.12 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx135.12, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool136.not.12 = icmp eq i8 %133, 0
  br i1 %tobool136.not.12, label %for.cond132.12, label %for.cond132.11.if.then137_crit_edge

for.cond132.11.if.then137_crit_edge:              ; preds = %for.cond132.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.12:                                   ; preds = %for.cond132.11
  %arrayidx135.13 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 13
  %134 = ptrtoint ptr %arrayidx135.13 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx135.13, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool136.not.13 = icmp eq i8 %135, 0
  br i1 %tobool136.not.13, label %for.cond132.13, label %for.cond132.12.if.then137_crit_edge

for.cond132.12.if.then137_crit_edge:              ; preds = %for.cond132.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.13:                                   ; preds = %for.cond132.12
  %arrayidx135.14 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 14
  %136 = ptrtoint ptr %arrayidx135.14 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx135.14, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool136.not.14 = icmp eq i8 %137, 0
  br i1 %tobool136.not.14, label %for.cond132.14, label %for.cond132.13.if.then137_crit_edge

for.cond132.13.if.then137_crit_edge:              ; preds = %for.cond132.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.14:                                   ; preds = %for.cond132.13
  %arrayidx135.15 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 10, i32 15
  %138 = ptrtoint ptr %arrayidx135.15 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx135.15, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool136.not.15 = icmp eq i8 %139, 0
  br i1 %tobool136.not.15, label %for.cond132.14.do.end150_crit_edge, label %for.cond132.14.if.then137_crit_edge

for.cond132.14.if.then137_crit_edge:              ; preds = %for.cond132.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.cond132.14.do.end150_crit_edge:               ; preds = %for.cond132.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end150

if.then137:                                       ; preds = %for.cond132.14.if.then137_crit_edge, %for.cond132.13.if.then137_crit_edge, %for.cond132.12.if.then137_crit_edge, %for.cond132.11.if.then137_crit_edge, %for.cond132.10.if.then137_crit_edge, %for.cond132.9.if.then137_crit_edge, %for.cond132.8.if.then137_crit_edge, %for.cond132.7.if.then137_crit_edge, %for.cond132.6.if.then137_crit_edge, %for.cond132.5.if.then137_crit_edge, %for.cond132.4.if.then137_crit_edge, %for.cond132.3.if.then137_crit_edge, %for.cond132.2.if.then137_crit_edge, %for.cond132.1.if.then137_crit_edge, %for.cond132.if.then137_crit_edge, %for.body134.preheader.if.then137_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %140, 20
  %fan_timer = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 12
  %expires = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %call.i, i32 0, i32 12, i32 1
  %141 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add, ptr %expires, align 4
  call void @init_timer_key(ptr noundef %fan_timer, ptr noundef nonnull @npcm7xx_fan_polling, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @npcm7xx_pwm_fan_probe.__key.33) #10
  call void @add_timer(ptr noundef %fan_timer) #10
  br label %do.end150

do.end150:                                        ; preds = %if.then137, %for.cond132.14.do.end150_crit_edge
  %142 = ptrtoint ptr %input_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %input_clk_freq.i, align 4
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %div27.i, i32 noundef %143) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %do.end129, %do.end119, %do.end105, %do.body82.cleanup_crit_edge, %do.end71, %if.then61, %do.end38, %do.end29, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then19 ], [ %10, %do.end29 ], [ %14, %if.then61 ], [ %18, %do.end71 ], [ %call.i249, %do.end105 ], [ %retval.0.i253259, %do.end119 ], [ %109, %do.end129 ], [ 0, %do.end150 ], [ -19, %do.end38 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call87, %do.body82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_fan_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fan_irq = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %fan_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fan_irq, align 4
  %sub = sub i32 %irq, %1
  %arrayidx2 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %dev_id, i32 0, i32 7, i32 %sub
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx2) #10
  %fan_base = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fan_base, align 4
  %mul = shl i32 %sub, 12
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 14
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.not = icmp eq i8 %4, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv11 = trunc i32 %sub to i8
  tail call fastcc void @npcm7xx_check_cmp(ptr noundef %dev_id, i8 noundef zeroext %conv11, i8 noundef zeroext 0, i8 noundef zeroext %4)
  tail call fastcc void @npcm7xx_check_cmp(ptr noundef %dev_id, i8 noundef zeroext %conv11, i8 noundef zeroext 1, i8 noundef zeroext %4)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx2, i32 noundef %call3) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_fan_polling(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -620
  %fan_select = getelementptr i8, ptr %t, i32 208
  %0 = ptrtoint ptr %fan_select to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp60 = icmp ult i8 %1, 8
  br i1 %cmp60, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %1 to i32
  %fan_base = getelementptr i8, ptr %t, i32 -616
  %fan_present = getelementptr i8, ptr %t, i32 -20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ %conv, %for.body.lr.ph ], [ %add21, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fan_base, align 4
  %mul = shl nuw nsw i32 %i.061, 12
  %add.ptr2 = getelementptr i8, ptr %3, i32 16
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 63) #10, !srcloc !108
  %mul4 = shl nuw nsw i32 %i.061, 1
  %arrayidx = getelementptr [16 x i8], ptr %fan_present, i32 0, i32 %mul4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fan_base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 -1) #10, !srcloc !110
  %idxprom.i = and i32 %mul4, 254
  %arrayidx.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %add.ptr, i32 0, i32 13, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp4.not.i = icmp eq i8 %9, -1
  br i1 %cmp4.not.i, label %if.then.if.end_crit_edge, label %do.body6.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %add.ptr, i32 0, i32 7, i32 %i.061
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx10.i) #10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fan_base, align 4
  %mul.i = shl nuw nsw i32 %i.061, 12
  %add.ptr.i = getelementptr i8, ptr %12, i32 18
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.i) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %14 = or i8 %13, 17
  %15 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fan_base, align 4
  %add.ptr30.i = getelementptr i8, ptr %16, i32 18
  %add.ptr31.i = getelementptr i8, ptr %add.ptr30.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 %14) #10, !srcloc !108
  %17 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fan_base, align 4
  %add.ptr35.i = getelementptr i8, ptr %18, i32 10
  %add.ptr36.i = getelementptr i8, ptr %add.ptr35.i, i32 %mul.i
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr36.i) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %20 = or i8 %19, 1
  %21 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fan_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %22, i32 10
  %add.ptr45.i = getelementptr i8, ptr %add.ptr44.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45.i, i8 %20) #10, !srcloc !108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx10.i, i32 noundef %call11.i) #10
  br label %if.end

if.end:                                           ; preds = %do.body6.i, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  %add = or i32 %mul4, 1
  %arrayidx12 = getelementptr [16 x i8], ptr %fan_present, i32 0, i32 %add
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %if.end
  %25 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fan_base, align 4
  %add.ptr17 = getelementptr i8, ptr %26, i32 6
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 -1) #10, !srcloc !110
  %add.i = and i32 %mul4, 254
  %idxprom.i48 = or i32 %add.i, 1
  %arrayidx.i49 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %add.ptr, i32 0, i32 13, i32 %idxprom.i48
  %27 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp4.not.i50 = icmp eq i8 %28, -1
  br i1 %cmp4.not.i50, label %if.then14.for.inc_crit_edge, label %do.body6.i58

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body6.i58:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i52 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %add.ptr, i32 0, i32 7, i32 %i.061
  %call11.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx10.i52) #10
  %29 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx.i49, align 4
  %30 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fan_base, align 4
  %mul.i55 = shl nuw nsw i32 %i.061, 12
  %add.ptr.i56 = getelementptr i8, ptr %31, i32 18
  %add.ptr19.i57 = getelementptr i8, ptr %add.ptr.i56, i32 %mul.i55
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.i57) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %33 = or i8 %32, 34
  %34 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fan_base, align 4
  %add.ptr52.i = getelementptr i8, ptr %35, i32 18
  %add.ptr53.i = getelementptr i8, ptr %add.ptr52.i, i32 %mul.i55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53.i, i8 %33) #10, !srcloc !108
  %36 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fan_base, align 4
  %add.ptr57.i = getelementptr i8, ptr %37, i32 10
  %add.ptr58.i = getelementptr i8, ptr %add.ptr57.i, i32 %mul.i55
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58.i) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %39 = or i8 %38, 8
  %40 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fan_base, align 4
  %add.ptr66.i = getelementptr i8, ptr %41, i32 10
  %add.ptr67.i = getelementptr i8, ptr %add.ptr66.i, i32 %mul.i55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67.i, i8 %39) #10, !srcloc !108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx10.i52, i32 noundef %call11.i53) #10
  br label %for.inc

for.inc:                                          ; preds = %do.body6.i58, %if.then14.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %add21 = add nuw nsw i32 %i.061, 4
  %cmp = icmp ult i32 %i.061, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %42 = ptrtoint ptr %fan_select to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fan_select, align 4
  %inc = add i8 %43, 1
  %44 = and i8 %inc, 3
  store i8 %44, ptr %fan_select, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add26 = add i32 %45, 20
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %46 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add26, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm7xx_check_cmp(ptr nocapture noundef %data, i8 noundef zeroext %fan, i8 noundef zeroext %cmp, i8 noundef zeroext %flag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %fan to i32
  %shl = shl i8 %fan, 1
  %add = add i8 %shl, %cmp
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cmp)
  %cmp4 = icmp eq i8 %cmp, 0
  %. = select i1 %cmp4, i32 16, i32 32
  %.69 = select i1 %cmp4, i8 17, i8 34
  %.70 = select i1 %cmp4, i8 1, i8 8
  %conv6 = zext i8 %flag to i32
  %and = and i32 %., %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else41, label %if.then8

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fan_base = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan_base, align 4
  %mul = shl nuw nsw i32 %conv, 12
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 18
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %neg = xor i8 %.69, -1
  %and13 = and i8 %2, %neg
  %3 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fan_base, align 4
  %add.ptr18 = getelementptr i8, ptr %4, i32 %mul
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %and13) #10, !srcloc !108
  %5 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fan_base, align 4
  %add.ptr23 = getelementptr i8, ptr %6, i32 %mul
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %.69) #10, !srcloc !108
  %7 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fan_base, align 4
  %add.ptr28 = getelementptr i8, ptr %8, i32 %mul
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 10
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %neg33 = xor i8 %.70, -1
  %and34 = and i8 %9, %neg33
  %10 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fan_base, align 4
  %add.ptr39 = getelementptr i8, ptr %11, i32 %mul
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 %and34) #10, !srcloc !108
  %idxprom = zext i8 %add to i32
  %fan_cnt = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 13, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %fan_cnt to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %fan_cnt, align 2
  br label %if.end48

if.else41:                                        ; preds = %entry
  %.68 = select i1 %cmp4, i32 1, i32 2
  %and44 = and i32 %.68, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else41.if.end48_crit_edge, label %if.then46

if.else41.if.end48_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %if.else41
  %fan_base.i = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %fan_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fan_base.i, align 4
  %mul.i = shl nuw nsw i32 %conv, 12
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  br i1 %cmp4, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #10, !srcloc !115
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  br label %if.end.i

if.else.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #10, !srcloc !115
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %fan_cap.0.i = phi i16 [ %18, %if.else.i ], [ %16, %if.then.i ]
  %19 = ptrtoint ptr %fan_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fan_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %20, i32 %mul.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 %.69) #10, !srcloc !108
  %idxprom.i = zext i8 %add to i32
  %arrayidx.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 13, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %if.end.i.if.end73.i_crit_edge [
    i8 0, label %if.then19.i
    i8 1, label %if.then35.i
    i8 2, label %if.then53.i
  ]

if.end.i.if.end73.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx.i, align 4
  %fan_cnt_tmp.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 13, i32 %idxprom.i, i32 3
  %25 = ptrtoint ptr %fan_cnt_tmp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %fan_cnt_tmp.i, align 4
  br label %if.end48

if.then35.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = xor i16 %fan_cap.0.i, -1
  %sub.i = zext i16 %26 to i32
  %fan_cnt_tmp40.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 13, i32 %idxprom.i, i32 3
  %27 = ptrtoint ptr %fan_cnt_tmp40.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fan_cnt_tmp40.i, align 4
  %add.i = add i32 %28, %sub.i
  store i32 %add.i, ptr %fan_cnt_tmp40.i, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx.i, align 4
  br label %if.end48

if.then53.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = xor i16 %fan_cap.0.i, -1
  %sub55.i = zext i16 %30 to i32
  %fan_cnt_tmp59.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 13, i32 %idxprom.i, i32 3
  %31 = ptrtoint ptr %fan_cnt_tmp59.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fan_cnt_tmp59.i, align 4
  %add60.i = add i32 %32, %sub55.i
  store i32 %add60.i, ptr %fan_cnt_tmp59.i, align 4
  %div140.i = lshr i32 %add60.i, 1
  %conv65.i = trunc i32 %div140.i to i16
  %fan_cnt.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 13, i32 %idxprom.i, i32 2
  %33 = ptrtoint ptr %fan_cnt.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv65.i, ptr %fan_cnt.i, align 2
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then53.i, %if.end.i.if.end73.i_crit_edge
  %35 = ptrtoint ptr %fan_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fan_base.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %36, i32 %mul.i
  %add.ptr78.i = getelementptr i8, ptr %add.ptr77.i, i32 18
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr78.i) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %neg.i = xor i8 %.69, -1
  %and.i = and i8 %37, %neg.i
  %38 = ptrtoint ptr %fan_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fan_base.i, align 4
  %add.ptr86.i = getelementptr i8, ptr %39, i32 %mul.i
  %add.ptr87.i = getelementptr i8, ptr %add.ptr86.i, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.i, i8 %and.i) #10, !srcloc !108
  %40 = ptrtoint ptr %fan_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fan_base.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %41, i32 %mul.i
  %add.ptr92.i = getelementptr i8, ptr %add.ptr91.i, i32 10
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr92.i) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %neg96.i = xor i8 %.70, -1
  %and97.i = and i8 %42, %neg96.i
  %43 = ptrtoint ptr %fan_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fan_base.i, align 4
  %add.ptr102.i = getelementptr i8, ptr %44, i32 %mul.i
  %add.ptr103.i = getelementptr i8, ptr %add.ptr102.i, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103.i, i8 %and97.i) #10, !srcloc !108
  br label %if.end48

if.end48:                                         ; preds = %if.end73.i, %if.then35.i, %if.then19.i, %if.else41.if.end48_crit_edge, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @npcm7xx_pwm_config_set(ptr noundef %data, i32 noundef %channel, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %channel, 4
  %0 = mul i32 %div, 4
  %rem.decomposed = sub i32 %channel, %0
  %arrayidx = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 6, i32 %div
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  %conv = zext i16 %val to i32
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %mul = shl i32 %div, 12
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 16
  %mul2 = mul nsw i32 %rem.decomposed, 12
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %mul2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !106
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 %mul
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !117
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem.decomposed)
  %8 = icmp ult i32 %rem.decomposed, 4
  br i1 %8, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.npcm7xx_pwm_config_set, i32 0, i32 %rem.decomposed
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep47 = getelementptr inbounds [4 x i32], ptr @switch.table.npcm7xx_pwm_config_set.47, i32 0, i32 %rem.decomposed
  %10 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %val)
  %cmp = icmp eq i16 %val, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %switch.load, -1
  %and = and i32 %7, %neg
  %or = or i32 %and, %switch.load48
  br label %if.end

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %or15 = or i32 %switch.load, %7
  %neg16 = xor i32 %switch.load48, -1
  %and17 = and i32 %or15, %neg16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp_buf.0 = phi i32 [ %or, %if.then ], [ %and17, %if.else ]
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 %mul
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %tmp_buf.0) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #10, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @npcm7xx_pwm_cz_get_max_state(ptr nocapture noundef readonly %tcdev, ptr nocapture noundef writeonly %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %tcdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_state = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_state, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @npcm7xx_pwm_cz_get_cur_state(ptr nocapture noundef readonly %tcdev, ptr nocapture noundef writeonly %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %tcdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %cur_state = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cur_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_state, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_pwm_cz_set_cur_state(ptr nocapture noundef readonly %tcdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %tcdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_state = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_state, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %state)
  %cmp = icmp ult i32 %conv, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = trunc i32 %state to i8
  %cur_state = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cur_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %cur_state, align 1
  %data = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %pwm_port = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pwm_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwm_port, align 4
  %cooling_levels = getelementptr inbounds %struct.npcm7xx_cooling_device, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %cooling_levels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cooling_levels, align 4
  %idxprom = and i32 %state, 255
  %arrayidx = getelementptr i8, ptr %10, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %12 to i16
  %call = tail call fastcc i32 @npcm7xx_pwm_config_set(ptr noundef %6, i32 noundef %8, i16 noundef zeroext %conv4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @npcm7xx_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %type, label %entry.return_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 9, i32 %channel
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i6 = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %data, i32 0, i32 10, i32 %channel
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %sw.bb
  %arrayidx.i6.sink = phi ptr [ %arrayidx.i6, %sw.bb1 ], [ %arrayidx.i, %sw.bb ]
  %.sink11 = phi i32 [ 1, %sw.bb1 ], [ 0, %sw.bb ]
  %.sink = phi i16 [ 292, %sw.bb1 ], [ 420, %sw.bb ]
  %1 = ptrtoint ptr %arrayidx.i6.sink to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i6.sink, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i7 = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink11, i32 %attr)
  %cond.i8 = icmp eq i32 %.sink11, %attr
  %..i9 = select i1 %cond.i8, i16 %.sink, i16 0
  %retval.0.i10 = select i1 %tobool.not.i7, i16 0, i16 %..i9
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ %retval.0.i10, %return.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %type, label %entry.return_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i = icmp eq i32 %attr, 0
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %div.i = sdiv i32 %channel, 4
  %3 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %channel, %3
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %mul.i = shl i32 %div.i, 12
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %mul2.i = mul nsw i32 %rem.i.decomposed, 12
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !117
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i8 = icmp eq i32 %attr, 1
  br i1 %cond.i8, label %sw.bb.i9, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i9:                                         ; preds = %sw.bb1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %val, align 4
  %fan_cnt.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %9, i32 0, i32 13, i32 %channel, i32 2
  %11 = ptrtoint ptr %fan_cnt.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fan_cnt.i, align 2
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i = icmp eq i16 %12, 0
  br i1 %cmp.i, label %sw.bb.i9.return_crit_edge, label %land.lhs.true.i

sw.bb.i9.return_crit_edge:                        ; preds = %sw.bb.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %sw.bb.i9
  %fan_pls_per_rev.i = getelementptr %struct.npcm7xx_pwm_fan_data, ptr %9, i32 0, i32 13, i32 %channel, i32 1
  %13 = ptrtoint ptr %fan_pls_per_rev.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fan_pls_per_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp15.not.i = icmp eq i8 %14, 0
  br i1 %cmp15.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then17.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv14.i = zext i8 %14 to i32
  %input_clk_freq.i = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, ptr %9, i32 0, i32 11
  %15 = ptrtoint ptr %input_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %input_clk_freq.i, align 4
  %mul.i10 = mul i32 %16, 60
  %mul26.i = mul nuw nsw i32 %conv14.i, %conv.i
  %div.i11 = udiv i32 %mul.i10, %mul26.i
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then17.i, %sw.bb.i
  %div.i11.sink = phi i32 [ %div.i11, %if.then17.i ], [ %7, %sw.bb.i ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i11.sink, ptr %val, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %land.lhs.true.i.return_crit_edge, %sw.bb.i9.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ 0, %sw.bb.i9.return_crit_edge ], [ 0, %land.lhs.true.i.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cond = icmp eq i32 %type, 8
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i = icmp eq i32 %attr, 0
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %2 = icmp ugt i32 %val, 255
  br i1 %2, label %sw.bb.i.return_crit_edge, label %if.end.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %val to i16
  %call2.i = tail call fastcc i32 @npcm7xx_pwm_config_set(ptr noundef %1, i32 noundef %channel, i16 noundef zeroext %conv.i) #10
  br label %return

return:                                           ; preds = %if.end.i, %sw.bb.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ %call2.i, %if.end.i ], [ -95, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_npcm750_pwm_fan__189_1031_npcm7xx_pwm_fan_driver_init6, !1, !"__initcall__kmod_npcm750_pwm_fan__189_1031_npcm7xx_pwm_fan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1031, i32 1}
!2 = !{ptr @__exitcall_npcm7xx_pwm_fan_driver_exit, !1, !"__exitcall_npcm7xx_pwm_fan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description190, !4, !"__UNIQUE_ID_description190", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1033, i32 1}
!5 = !{ptr @__UNIQUE_ID_author191, !6, !"__UNIQUE_ID_author191", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1034, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1035, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1026, i32 11}
!12 = !{ptr @npcm7xx_pwm_fan_driver, !13, !"npcm7xx_pwm_fan_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1023, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 926, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 928, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @npcm7xx_pwm_fan_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 933, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug187, !25, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 939, i32 3}
!30 = !{ptr @npcm7xx_pwm_fan_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 943, i32 59}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 945, i32 3}
!36 = !{ptr @npcm7xx_pwm_fan_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 950, i32 2}
!40 = !{ptr @npcm7xx_pwm_fan_probe.__UNIQUE_ID_ddebug188, !39, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 956, i32 3}
!43 = !{ptr @npcm7xx_pwm_fan_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @npcm7xx_pwm_fan_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 964, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @npcm7xx_pwm_fan_probe.__key.21, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 967, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 973, i32 17}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 977, i32 4}
!55 = !{ptr @npcm7xx_pwm_fan_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 985, i32 4}
!59 = !{ptr @npcm7xx_pwm_fan_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 995, i32 3}
!63 = !{ptr @npcm7xx_pwm_fan_probe._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @npcm7xx_pwm_fan_probe.__key.33, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1004, i32 4}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1011, i32 2}
!70 = !{ptr @npcm7xx_pwm_fan_probe._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @npcm7xx_pwm_fan_probe._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 871, i32 36}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 879, i32 42}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 887, i32 46}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 843, i32 3}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @npcm7xx_create_pwm_cooling._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @npcm7xx_create_pwm_cooling._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 846, i32 44}
!85 = !{ptr @npcm7xx_pwm_cool_ops, !86, !"npcm7xx_pwm_cool_ops", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 816, i32 48}
!87 = !{ptr @npcm7xx_chip_info, !88, !"npcm7xx_chip_info", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 668, i32 37}
!89 = !{ptr @npcm7xx_hwmon_ops, !90, !"npcm7xx_hwmon_ops", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 662, i32 31}
!91 = !{ptr @npcm7xx_info, !92, !"npcm7xx_info", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 632, i32 41}
!93 = !{ptr @of_pwm_fan_match_table, !94, !"of_pwm_fan_match_table", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/npcm750-pwm-fan.c", i32 1017, i32 34}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2148749100, i64 2148749105, i64 2148749118, i64 2148749162, i64 2148749196, i64 2148749217}
!105 = !{i64 2152477798}
!106 = !{i64 4935676}
!107 = !{i64 2152476824}
!108 = !{i64 4935479}
!109 = !{i64 2152477248}
!110 = !{i64 4935056}
!111 = !{!"auto-init"}
!112 = !{i8 0, i8 2}
!113 = !{i64 4935874}
!114 = !{i64 2152475219}
!115 = !{i64 4935256}
!116 = !{i64 2152475831}
!117 = !{i64 4936094}
!118 = !{i64 2152476443}
