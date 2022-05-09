; ModuleID = '/llk/IR_all_yes/drivers/hwmon/mlxreg-fan.c_pt.bc'
source_filename = "../drivers/hwmon/mlxreg-fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlxreg_core_platform_data = type { ptr, ptr, i32, i32, i32, [32 x i8], i32 }
%struct.mlxreg_fan = type { ptr, ptr, ptr, [14 x %struct.mlxreg_fan_tacho], [4 x %struct.mlxreg_fan_pwm], i32, i32, i32 }
%struct.mlxreg_fan_tacho = type { i8, i32, i32, i32 }
%struct.mlxreg_fan_pwm = type { ptr, i8, i32, [11 x i8], ptr }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_mlxreg_fan__170_639_mlxreg_fan_driver_init6 = internal global ptr @mlxreg_fan_driver_init, section ".initcall6.init", align 4
@mlxreg_fan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxreg_fan_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxreg_fan_driver_exit = internal global ptr @mlxreg_fan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [56 x i8] c"mlxreg_fan.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [43 x i8] c"mlxreg_fan.description=Mellanox FAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [41 x i8] c"mlxreg_fan.file=drivers/hwmon/mlxreg-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"mlxreg_fan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [37 x i8] c"mlxreg_fan.alias=platform:mlxreg-fan\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlxreg-fan\00", [21 x i8] zeroinitializer }, align 32
@mlxreg_fan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get platform data.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlxreg_fan_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hwmon/mlxreg-fan.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxreg_fan_probe._entry_ptr = internal global ptr @mlxreg_fan_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlxreg_fan\00", [21 x i8] zeroinitializer }, align 32
@mlxreg_fan_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @mlxreg_fan_hwmon_hwmon_ops, ptr @mlxreg_fan_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@mlxreg_fan_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@mlxreg_fan_probe._entry_ptr.9 = internal global ptr @mlxreg_fan_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tacho\00", [26 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"too many tacho entries: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlxreg_fan_config\00", [46 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr = internal global ptr @mlxreg_fan_config._entry, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"too many pwm entries: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr.16 = internal global ptr @mlxreg_fan_config._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"conf\00", [27 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"duplicate conf entry: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr.20 = internal global ptr @mlxreg_fan_config._entry.18, section ".printk_index", align 4
@mlxreg_fan_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid conf entry params: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr.23 = internal global ptr @mlxreg_fan_config._entry.21, section ".printk_index", align 4
@mlxreg_fan_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.12, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid label: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr.26 = internal global ptr @mlxreg_fan_config._entry.24, section ".printk_index", align 4
@mlxreg_fan_config._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.12, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to query capability register 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr.29 = internal global ptr @mlxreg_fan_config._entry.27, section ".printk_index", align 4
@mlxreg_fan_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.12, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Configuration is invalid: drawers num %d tachos num %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlxreg_fan_config._entry_ptr.32 = internal global ptr @mlxreg_fan_config._entry.30, section ".printk_index", align 4
@mlxreg_fan_connect_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.33, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlxreg_fan_connect_verify\00", [38 x i8] zeroinitializer }, align 32
@mlxreg_fan_connect_verify._entry_ptr = internal global ptr @mlxreg_fan_connect_verify._entry, section ".printk_index", align 4
@mlxreg_pwm_connect_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to query pwm register 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlxreg_pwm_connect_verify\00", [38 x i8] zeroinitializer }, align 32
@mlxreg_pwm_connect_verify._entry_ptr = internal global ptr @mlxreg_pwm_connect_verify._entry, section ".printk_index", align 4
@mlxreg_fan_speed_divider_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.36, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlxreg_fan_speed_divider_get\00", [35 x i8] zeroinitializer }, align 32
@mlxreg_fan_speed_divider_get._entry_ptr = internal global ptr @mlxreg_fan_speed_divider_get._entry, section ".printk_index", align 4
@mlxreg_fan_hwmon_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @mlxreg_fan_is_visible, ptr @mlxreg_fan_read, ptr null, ptr @mlxreg_fan_write }, [16 x i8] zeroinitializer }, align 32
@mlxreg_fan_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.37, ptr @.compoundliteral.39, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [15 x i32], [36 x i8] } { [15 x i32] [i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.38 }, [24 x i8] zeroinitializer }, align 32
@mlxreg_fan_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.42, ptr @.str.43, ptr @.str.44], [16 x i8] zeroinitializer }, align 32
@mlxreg_fan_cooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @mlxreg_fan_get_max_state, ptr @mlxreg_fan_get_cur_state, ptr @mlxreg_fan_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mlxreg_fan_cooling_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register cooling device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlxreg_fan_cooling_config\00", [38 x i8] zeroinitializer }, align 32
@mlxreg_fan_cooling_config._entry_ptr = internal global ptr @mlxreg_fan_cooling_config._entry, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlxreg_fan1\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlxreg_fan2\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlxreg_fan3\00", [20 x i8] zeroinitializer }, align 32
@mlxreg_fan_get_cur_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to query PWM duty\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxreg_fan_get_cur_state\00", [39 x i8] zeroinitializer }, align 32
@mlxreg_fan_get_cur_state._entry_ptr = internal global ptr @mlxreg_fan_get_cur_state._entry, section ".printk_index", align 4
@mlxreg_fan_set_cur_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.47, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxreg_fan_set_cur_state\00", [39 x i8] zeroinitializer }, align 32
@mlxreg_fan_set_cur_state._entry_ptr = internal global ptr @mlxreg_fan_set_cur_state._entry, section ".printk_index", align 4
@mlxreg_fan_set_cur_state._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to write PWM duty\0A\00", [38 x i8] zeroinitializer }, align 32
@mlxreg_fan_set_cur_state._entry_ptr.50 = internal global ptr @mlxreg_fan_set_cur_state._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 11]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"mlxreg_fan_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 632, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 634, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 602, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 617, i32 50 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"mlxreg_fan_hwmon_chip_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 303, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 622, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 469, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 471, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 491, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 493, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 510, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 512, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 518, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 534, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 546, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 553, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 409, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 425, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 441, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"mlxreg_fan_hwmon_hwmon_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 297, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant [22 x i8] c"mlxreg_fan_hwmon_info\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 273, i32 41 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"mlxreg_fan_name\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 266, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"mlxreg_fan_cooling_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 395, i32 48 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 578, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 268, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 269, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 270, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 326, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 370, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [30 x i8] c"../drivers/hwmon/mlxreg-fan.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 389, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mlxreg_fan_driver_exit, ptr @__initcall__kmod_mlxreg_fan__170_639_mlxreg_fan_driver_init6, ptr @mlxreg_fan_config._entry, ptr @mlxreg_fan_config._entry.14, ptr @mlxreg_fan_config._entry.18, ptr @mlxreg_fan_config._entry.21, ptr @mlxreg_fan_config._entry.24, ptr @mlxreg_fan_config._entry.27, ptr @mlxreg_fan_config._entry.30, ptr @mlxreg_fan_config._entry_ptr, ptr @mlxreg_fan_config._entry_ptr.16, ptr @mlxreg_fan_config._entry_ptr.20, ptr @mlxreg_fan_config._entry_ptr.23, ptr @mlxreg_fan_config._entry_ptr.26, ptr @mlxreg_fan_config._entry_ptr.29, ptr @mlxreg_fan_config._entry_ptr.32, ptr @mlxreg_fan_connect_verify._entry, ptr @mlxreg_fan_connect_verify._entry_ptr, ptr @mlxreg_fan_cooling_config._entry, ptr @mlxreg_fan_cooling_config._entry_ptr, ptr @mlxreg_fan_driver_exit, ptr @mlxreg_fan_get_cur_state._entry, ptr @mlxreg_fan_get_cur_state._entry_ptr, ptr @mlxreg_fan_probe._entry, ptr @mlxreg_fan_probe._entry.7, ptr @mlxreg_fan_probe._entry_ptr, ptr @mlxreg_fan_probe._entry_ptr.9, ptr @mlxreg_fan_set_cur_state._entry, ptr @mlxreg_fan_set_cur_state._entry.48, ptr @mlxreg_fan_set_cur_state._entry_ptr, ptr @mlxreg_fan_set_cur_state._entry_ptr.50, ptr @mlxreg_fan_speed_divider_get._entry, ptr @mlxreg_fan_speed_divider_get._entry_ptr, ptr @mlxreg_pwm_connect_verify._entry, ptr @mlxreg_pwm_connect_verify._entry_ptr, ptr @mlxreg_fan_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlxreg_fan_hwmon_chip_info, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mlxreg_fan_hwmon_hwmon_ops, ptr @mlxreg_fan_hwmon_info, ptr @.compoundliteral, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @mlxreg_fan_name, ptr @mlxreg_fan_cooling_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_connect_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_pwm_connect_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_speed_divider_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_hwmon_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_cooling_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_get_cur_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_set_cur_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_fan_set_cur_state._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_fan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxreg_fan_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_fan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxreg_fan_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_fan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regval.i526.i = alloca i32, align 4
  %regval.i519.i = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 360, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %regmap7 = getelementptr inbounds %struct.mlxreg_fan, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %regmap7, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %samples.i = getelementptr inbounds %struct.mlxreg_fan, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %samples.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 44, ptr %samples.i, align 4
  %divider.i = getelementptr inbounds %struct.mlxreg_fan, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %divider.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1132, ptr %divider.i, align 4
  %counter.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp563.i = icmp sgt i32 %11, 0
  br i1 %cmp563.i, label %if.end5.for.body.i_crit_edge, label %if.end5.for.end.i_crit_edge

if.end5.for.end.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %configured.0.off0583.i = phi i1 [ %configured.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end5.for.body.i_crit_edge ]
  %data.0576.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.end5.for.body.i_crit_edge ]
  %i.0575.i = phi i32 [ %inc119.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %pwm_num.0571.i = phi i32 [ %pwm_num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %tacho_avail.0567.i = phi i32 [ %tacho_avail.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %tacho_num.0564.i = phi i32 [ %tacho_num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %call.i41 = call ptr @strnstr(ptr noundef %data.0576.i, ptr noundef nonnull @.str.10, i32 noundef 32) #7
  %tobool.not.i = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i, label %if.else26.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %tacho_num.0564.i)
  %cmp2.i = icmp eq i32 %tacho_num.0564.i, 14
  br i1 %cmp2.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %data.0576.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %capability.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 4
  %14 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capability.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not.i = icmp eq i32 %15, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then7.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #7
  %16 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !121
  %17 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap7, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %15, ptr noundef nonnull %regval.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i, label %mlxreg_fan_connect_verify.exit.i

mlxreg_fan_connect_verify.exit.i:                 ; preds = %if.then7.i
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capability.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i, label %mlxreg_fan_connect_verify.exit.i.cleanup_crit_edge, label %mlxreg_fan_connect_verify.exit.i.if.end15.i_crit_edge

mlxreg_fan_connect_verify.exit.i.if.end15.i_crit_edge: ; preds = %mlxreg_fan_connect_verify.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

mlxreg_fan_connect_verify.exit.i.cleanup_crit_edge: ; preds = %mlxreg_fan_connect_verify.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %if.then7.i
  %23 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regval.i.i, align 4
  %bit.i.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 3
  %25 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bit.i.i, align 4
  %and.i.i = and i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.i.not.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #7
  br i1 %tobool2.i.not.i, label %if.then12.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %tacho_num.0564.i, 1
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.else.i.if.end15.i_crit_edge, %mlxreg_fan_connect_verify.exit.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %reg.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 1
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg.i, align 4
  %arrayidx.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 3, i32 %tacho_num.0564.i
  %reg16.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 3, i32 %tacho_num.0564.i, i32 1
  %29 = ptrtoint ptr %reg16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %reg16.i, align 4
  %mask.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 2
  %30 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask.i, align 4
  %mask19.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 3, i32 %tacho_num.0564.i, i32 2
  %32 = ptrtoint ptr %mask19.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mask19.i, align 4
  %reg_prsnt.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 5
  %33 = ptrtoint ptr %reg_prsnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_prsnt.i, align 4
  %prsnt.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 3, i32 %tacho_num.0564.i, i32 3
  %35 = ptrtoint ptr %prsnt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %prsnt.i, align 4
  %inc23.i = add i32 %tacho_num.0564.i, 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx.i, align 4
  %inc25.i = add i32 %tacho_avail.0567.i, 1
  br label %for.inc.i

if.else26.i:                                      ; preds = %for.body.i
  %call29.i = call ptr @strnstr(ptr noundef %data.0576.i, ptr noundef nonnull @.str.13, i32 noundef 32) #7
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.else59.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else26.i
  %37 = zext i32 %pwm_num.0571.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pwm_num.0571.i, label %if.then42.i [
    i32 14, label %do.end36.i
    i32 0, label %if.then31.i.if.end51.i_crit_edge
  ]

if.then31.i.if.end51.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

do.end36.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.15, ptr noundef %data.0576.i) #10
  br label %cleanup

if.then42.i:                                      ; preds = %if.then31.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i519.i) #7
  %40 = ptrtoint ptr %regval.i519.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %regval.i519.i, align 4, !annotation !121
  %41 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap7, align 4
  %reg.i.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 1
  %43 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg.i.i, align 4
  %call.i521.i = call i32 @regmap_read(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %regval.i519.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i521.i)
  %tobool.not.i522.i = icmp eq i32 %call.i521.i, 0
  br i1 %tobool.not.i522.i, label %if.else46.i, label %mlxreg_pwm_connect_verify.exit.i

mlxreg_pwm_connect_verify.exit.i:                 ; preds = %if.then42.i
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %47 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.34, i32 noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i519.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i521.i)
  %cmp44.i = icmp slt i32 %call.i521.i, 0
  br i1 %cmp44.i, label %mlxreg_pwm_connect_verify.exit.i.cleanup_crit_edge, label %mlxreg_pwm_connect_verify.exit.i.if.end51.i_crit_edge

mlxreg_pwm_connect_verify.exit.i.if.end51.i_crit_edge: ; preds = %mlxreg_pwm_connect_verify.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

mlxreg_pwm_connect_verify.exit.i.cleanup_crit_edge: ; preds = %mlxreg_pwm_connect_verify.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else46.i:                                      ; preds = %if.then42.i
  %49 = ptrtoint ptr %regval.i519.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regval.i519.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %50)
  %cmp.i.not.i = icmp eq i32 %50, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i519.i) #7
  br i1 %cmp.i.not.i, label %if.else46.i.for.inc.i_crit_edge, label %if.else46.i.if.end51.i_crit_edge

if.else46.i.if.end51.i_crit_edge:                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.else46.i.for.inc.i_crit_edge:                  ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end51.i:                                       ; preds = %if.else46.i.if.end51.i_crit_edge, %mlxreg_pwm_connect_verify.exit.i.if.end51.i_crit_edge, %if.then31.i.if.end51.i_crit_edge
  %reg52.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 1
  %51 = ptrtoint ptr %reg52.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg52.i, align 4
  %reg54.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %pwm_num.0571.i, i32 2
  %53 = ptrtoint ptr %reg54.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %reg54.i, align 4
  %connected57.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %pwm_num.0571.i, i32 1
  %54 = ptrtoint ptr %connected57.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %connected57.i, align 4
  %inc58.i = add i32 %pwm_num.0571.i, 1
  br label %for.inc.i

if.else59.i:                                      ; preds = %if.else26.i
  %call62.i = call ptr @strnstr(ptr noundef %data.0576.i, ptr noundef nonnull @.str.17, i32 noundef 32) #7
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %do.end112.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.else59.i
  br i1 %configured.0.off0583.i, label %do.end69.i, label %if.end73.i

do.end69.i:                                       ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.19, ptr noundef %data.0576.i) #10
  br label %cleanup

if.end73.i:                                       ; preds = %if.then64.i
  %mask74.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 2
  %57 = ptrtoint ptr %mask74.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool75.not.i = icmp eq i32 %58, 0
  br i1 %tobool75.not.i, label %land.lhs.true.i, label %if.end87.thread.i

land.lhs.true.i:                                  ; preds = %if.end73.i
  %bit.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 3
  %59 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool76.not.i = icmp eq i32 %60, 0
  br i1 %tobool76.not.i, label %land.lhs.true77.i, label %land.lhs.true.i.if.end87.i_crit_edge

land.lhs.true.i.if.end87.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

land.lhs.true77.i:                                ; preds = %land.lhs.true.i
  %capability78.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 4
  %61 = ptrtoint ptr %capability78.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %capability78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool79.not.i = icmp eq i32 %62, 0
  br i1 %tobool79.not.i, label %do.end83.i, label %land.lhs.true77.i.if.end87.i_crit_edge

land.lhs.true77.i.if.end87.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

do.end83.i:                                       ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.22, ptr noundef %data.0576.i) #10
  br label %cleanup

if.end87.i:                                       ; preds = %land.lhs.true77.i.if.end87.i_crit_edge, %land.lhs.true.i.if.end87.i_crit_edge
  %capability88.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 4
  %65 = ptrtoint ptr %capability88.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %capability88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool89.not.i = icmp eq i32 %66, 0
  br i1 %tobool89.not.i, label %if.end87.i.if.end101.i_crit_edge, label %if.end87.i.if.then90.i_crit_edge

if.end87.i.if.then90.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i

if.end87.i.if.end101.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

if.end87.thread.i:                                ; preds = %if.end73.i
  %capability88544.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 4
  %67 = ptrtoint ptr %capability88544.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %capability88544.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool89.not545.i = icmp eq i32 %68, 0
  br i1 %tobool89.not545.i, label %if.then98.i, label %if.end87.thread.i.if.then90.i_crit_edge

if.end87.thread.i.if.then90.i_crit_edge:          ; preds = %if.end87.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i

if.then90.i:                                      ; preds = %if.end87.thread.i.if.then90.i_crit_edge, %if.end87.i.if.then90.i_crit_edge
  %69 = phi i32 [ %68, %if.end87.thread.i.if.then90.i_crit_edge ], [ %66, %if.end87.i.if.then90.i_crit_edge ]
  %capability88546.i = phi ptr [ %capability88544.i, %if.end87.thread.i.if.then90.i_crit_edge ], [ %capability88.i, %if.end87.i.if.then90.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i526.i) #7
  %70 = ptrtoint ptr %regval.i526.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %regval.i526.i, align 4, !annotation !121
  %71 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap7, align 4
  %call.i529.i = call i32 @regmap_read(ptr noundef %72, i32 noundef %69, ptr noundef nonnull %regval.i526.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i529.i)
  %tobool.not.i530.i = icmp eq i32 %call.i529.i, 0
  br i1 %tobool.not.i530.i, label %if.end.i532.i, label %mlxreg_fan_speed_divider_get.exit.i

if.end.i532.i:                                    ; preds = %if.then90.i
  %73 = ptrtoint ptr %regval.i526.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %regval.i526.i, align 4
  %75 = add i32 %74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %75)
  %76 = icmp ult i32 %75, 64
  br i1 %76, label %if.then3.i.i, label %if.end.i532.i.mlxreg_fan_speed_divider_get.exit.thread.i_crit_edge

if.end.i532.i.mlxreg_fan_speed_divider_get.exit.thread.i_crit_edge: ; preds = %if.end.i532.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_fan_speed_divider_get.exit.thread.i

if.then3.i.i:                                     ; preds = %if.end.i532.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nuw nsw i32 %74, 283
  %77 = ptrtoint ptr %divider.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i.i, ptr %divider.i, align 4
  br label %mlxreg_fan_speed_divider_get.exit.thread.i

mlxreg_fan_speed_divider_get.exit.thread.i:       ; preds = %if.then3.i.i, %if.end.i532.i.mlxreg_fan_speed_divider_get.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i526.i) #7
  br label %for.inc.i

mlxreg_fan_speed_divider_get.exit.i:              ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %80 = ptrtoint ptr %capability88546.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %capability88546.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.28, i32 noundef %81) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i526.i) #7
  br label %cleanup

if.then98.i:                                      ; preds = %if.end87.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %samples.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %58, ptr %samples.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then98.i, %if.end87.i.if.end101.i_crit_edge
  %bit102.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0576.i, i32 0, i32 3
  %83 = ptrtoint ptr %bit102.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bit102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool103.not.i = icmp eq i32 %84, 0
  br i1 %tobool103.not.i, label %if.end101.i.for.inc.i_crit_edge, label %if.then104.i

if.end101.i.for.inc.i_crit_edge:                  ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %divider.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %divider.i, align 4
  br label %for.inc.i

do.end112.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.25, ptr noundef %data.0576.i) #10
  br label %cleanup

for.inc.i:                                        ; preds = %if.then104.i, %if.end101.i.for.inc.i_crit_edge, %mlxreg_fan_speed_divider_get.exit.thread.i, %if.end51.i, %if.else46.i.for.inc.i_crit_edge, %if.end15.i, %if.then12.i
  %tacho_num.1.i = phi i32 [ %inc23.i, %if.end15.i ], [ %inc.i, %if.then12.i ], [ %tacho_num.0564.i, %if.end51.i ], [ %tacho_num.0564.i, %if.else46.i.for.inc.i_crit_edge ], [ %tacho_num.0564.i, %if.end101.i.for.inc.i_crit_edge ], [ %tacho_num.0564.i, %if.then104.i ], [ %tacho_num.0564.i, %mlxreg_fan_speed_divider_get.exit.thread.i ]
  %tacho_avail.1.i = phi i32 [ %inc25.i, %if.end15.i ], [ %tacho_avail.0567.i, %if.then12.i ], [ %tacho_avail.0567.i, %if.end51.i ], [ %tacho_avail.0567.i, %if.else46.i.for.inc.i_crit_edge ], [ %tacho_avail.0567.i, %if.end101.i.for.inc.i_crit_edge ], [ %tacho_avail.0567.i, %if.then104.i ], [ %tacho_avail.0567.i, %mlxreg_fan_speed_divider_get.exit.thread.i ]
  %pwm_num.1.i = phi i32 [ %pwm_num.0571.i, %if.end15.i ], [ %pwm_num.0571.i, %if.then12.i ], [ %inc58.i, %if.end51.i ], [ %pwm_num.0571.i, %if.else46.i.for.inc.i_crit_edge ], [ %pwm_num.0571.i, %if.end101.i.for.inc.i_crit_edge ], [ %pwm_num.0571.i, %if.then104.i ], [ %pwm_num.0571.i, %mlxreg_fan_speed_divider_get.exit.thread.i ]
  %configured.1.off0.i = phi i1 [ %configured.0.off0583.i, %if.end15.i ], [ %configured.0.off0583.i, %if.then12.i ], [ %configured.0.off0583.i, %if.end51.i ], [ %configured.0.off0583.i, %if.else46.i.for.inc.i_crit_edge ], [ true, %if.end101.i.for.inc.i_crit_edge ], [ true, %if.then104.i ], [ true, %mlxreg_fan_speed_divider_get.exit.thread.i ]
  %inc119.i = add nuw nsw i32 %i.0575.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %data.0576.i, i32 1
  %88 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %counter.i, align 4
  %cmp.i = icmp slt i32 %inc119.i, %89
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end5.for.end.i_crit_edge
  %tacho_avail.0.lcssa.i = phi i32 [ 0, %if.end5.for.end.i_crit_edge ], [ %tacho_avail.1.i, %for.inc.i.for.end.i_crit_edge ]
  %capability120.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 6
  %90 = ptrtoint ptr %capability120.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %capability120.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool121.not.i = icmp eq i32 %91, 0
  br i1 %tobool121.not.i, label %for.end.i.if.end11_crit_edge, label %if.then122.i

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then122.i:                                     ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %92 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %regval.i, align 4, !annotation !121
  %93 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap7, align 4
  %call124.i = call i32 @regmap_read(ptr noundef %94, i32 noundef %91, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %cond.false.i, label %do.end129.i

do.end129.i:                                      ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %97 = ptrtoint ptr %capability120.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %capability120.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.28, i32 noundef %98) #10
  br label %cleanup.thread.i

cond.false.i:                                     ; preds = %if.then122.i
  %99 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regval.i, align 4
  %call.i533.i = call i32 @__sw_hweight32(i32 noundef %100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tacho_avail.0.lcssa.i)
  %tobool414.not.i = icmp eq i32 %tacho_avail.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i533.i)
  %tobool415.not.i = icmp eq i32 %call.i533.i, 0
  %or.cond.i = select i1 %tobool414.not.i, i1 true, i1 %tobool415.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tacho_avail.0.lcssa.i, i32 %call.i533.i)
  %cmp417.i = icmp slt i32 %tacho_avail.0.lcssa.i, %call.i533.i
  %or.cond518.i = select i1 %or.cond.i, i1 true, i1 %cmp417.i
  br i1 %or.cond518.i, label %do.end422.i, label %cleanup.i

do.end422.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.31, i32 noundef %call.i533.i, i32 noundef %tacho_avail.0.lcssa.i) #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end422.i, %do.end129.i
  %retval.0.ph.i = phi i32 [ -22, %do.end422.i ], [ %call124.i, %do.end129.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

cleanup.i:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = sdiv i32 %tacho_avail.0.lcssa.i, %call.i533.i
  %tachos_per_drwr.i = getelementptr inbounds %struct.mlxreg_fan, ptr %call.i, i32 0, i32 5
  %103 = ptrtoint ptr %tachos_per_drwr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div.i, ptr %tachos_per_drwr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %if.end11

if.end11:                                         ; preds = %cleanup.i, %for.end.i.if.end11_crit_edge
  %call12 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxreg_fan_hwmon_chip_info, ptr noundef null) #7
  %cmp.i42 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %do.end17, label %if.end11.for.body.i44_crit_edge

if.end11.for.body.i44_crit_edge:                  ; preds = %if.end11
  br label %for.body.i44

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %104 = ptrtoint ptr %call12 to i32
  br label %cleanup

for.body.i44:                                     ; preds = %for.inc22.i.for.body.i44_crit_edge, %if.end11.for.body.i44_crit_edge
  %i.050.i = phi i32 [ %inc23.i49, %for.inc22.i.for.body.i44_crit_edge ], [ 0, %if.end11.for.body.i44_crit_edge ]
  %105 = mul nuw nsw i32 %i.050.i, 28
  %106 = add nuw nsw i32 %105, 248
  %uglygep.i = getelementptr i8, ptr %call.i, i32 %106
  %connected.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 1
  %107 = ptrtoint ptr %connected.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %connected.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i43 = icmp eq i8 %108, 0
  br i1 %tobool.not.i43, label %for.body.i44.for.inc22.i_crit_edge, label %if.end.i47

for.body.i44.for.inc22.i_crit_edge:               ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22.i

if.end.i47:                                       ; preds = %for.body.i44
  %arrayidx.i45 = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i
  %109 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i, ptr %arrayidx.i45, align 4
  %arrayidx3.i = getelementptr [4 x ptr], ptr @mlxreg_fan_name, i32 0, i32 %i.050.i
  %110 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx3.i, align 4
  %call.i46 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %dev1, ptr noundef null, ptr noundef %111, ptr noundef %arrayidx.i45, ptr noundef nonnull @mlxreg_fan_cooling_ops) #7
  %cdev.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 4
  %112 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i46, ptr %cdev.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i48, label %for.body12.preheader.i

for.body12.preheader.i:                           ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 514, ptr %uglygep.i, align 1
  %arrayidx18.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 2
  %114 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 2, ptr %arrayidx18.i, align 1
  %arrayidx18.1.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 3
  %115 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %arrayidx18.1.i, align 1
  %arrayidx18.2.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 4
  %116 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 4, ptr %arrayidx18.2.i, align 1
  %arrayidx18.3.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 5
  %117 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 5, ptr %arrayidx18.3.i, align 1
  %arrayidx18.4.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 6
  %118 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 6, ptr %arrayidx18.4.i, align 1
  %arrayidx18.5.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 7
  %119 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 7, ptr %arrayidx18.5.i, align 1
  %arrayidx18.6.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 8
  %120 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 8, ptr %arrayidx18.6.i, align 1
  %arrayidx18.7.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 9
  %121 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 9, ptr %arrayidx18.7.i, align 1
  %arrayidx18.8.i = getelementptr %struct.mlxreg_fan, ptr %call.i, i32 0, i32 4, i32 %i.050.i, i32 3, i32 10
  %122 = ptrtoint ptr %arrayidx18.8.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 10, ptr %arrayidx18.8.i, align 1
  br label %for.inc22.i

cleanup.i48:                                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #10
  %123 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cdev.i, align 4
  %125 = ptrtoint ptr %124 to i32
  br label %cleanup

for.inc22.i:                                      ; preds = %for.body12.preheader.i, %for.body.i44.for.inc22.i_crit_edge
  %inc23.i49 = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i49, 4
  br i1 %exitcond.not.i, label %for.inc22.i.cleanup_crit_edge, label %for.inc22.i.for.body.i44_crit_edge

for.inc22.i.for.body.i44_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i44

for.inc22.i.cleanup_crit_edge:                    ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc22.i.cleanup_crit_edge, %cleanup.i48, %do.end17, %cleanup.thread.i, %do.end112.i, %mlxreg_fan_speed_divider_get.exit.i, %do.end83.i, %do.end69.i, %mlxreg_pwm_connect_verify.exit.i.cleanup_crit_edge, %do.end36.i, %mlxreg_fan_connect_verify.exit.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %104, %do.end17 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %125, %cleanup.i48 ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %call.i529.i, %mlxreg_fan_speed_divider_get.exit.i ], [ -22, %do.end112.i ], [ -22, %do.end83.i ], [ -22, %do.end69.i ], [ -22, %do.end36.i ], [ -22, %do.end.i ], [ 0, %for.inc22.i.cleanup_crit_edge ], [ %call.i521.i, %mlxreg_pwm_connect_verify.exit.i.cleanup_crit_edge ], [ %call.i.i, %mlxreg_fan_connect_verify.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlxreg_fan_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %type, label %entry.sw.epilog12_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb2
  ]

entry.sw.epilog12_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.mlxreg_fan, ptr %data, i32 0, i32 3, i32 %channel
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %switch.selectcmp.case1 = icmp eq i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %attr)
  %switch.selectcmp.case2 = icmp eq i32 %attr, 11
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %3 = select i1 %switch.selectcmp, i16 292, i16 0
  br label %return

sw.bb2:                                           ; preds = %entry
  %connected4 = getelementptr %struct.mlxreg_fan, ptr %data, i32 0, i32 4, i32 %channel, i32 1
  %4 = ptrtoint ptr %connected4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %connected4, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %sw.bb2.return_crit_edge, label %if.end7

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond = icmp eq i32 %attr, 0
  br i1 %cond, label %if.end7.return_crit_edge, label %if.end7.sw.epilog12_crit_edge

if.end7.sw.epilog12_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog12:                                      ; preds = %if.end7.sw.epilog12_crit_edge, %entry.sw.epilog12_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog12, %if.end7.return_crit_edge, %sw.bb2.return_crit_edge, %if.end, %sw.bb.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog12 ], [ 0, %sw.bb.return_crit_edge ], [ %3, %if.end ], [ 0, %sw.bb2.return_crit_edge ], [ 420, %if.end7.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_fan_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !121
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb2
    i32 11, label %sw.bb21
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %prsnt = getelementptr %struct.mlxreg_fan, ptr %1, i32 0, i32 3, i32 %channel, i32 3
  %5 = ptrtoint ptr %prsnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prsnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb2.if.end12_crit_edge, label %land.lhs.true

sw.bb2.if.end12_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %sw.bb2
  %tachos_per_drwr = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %tachos_per_drwr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tachos_per_drwr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %regmap = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %10, i32 noundef %6, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = ptrtoint ptr %tachos_per_drwr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tachos_per_drwr, align 4
  %div = sdiv i32 %channel, %12
  %shl = shl nuw i32 1, %div
  %13 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval, align 4
  %and = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %sw.bb2.if.end12_crit_edge
  %regmap13 = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap13, align 4
  %reg = getelementptr %struct.mlxreg_fan, ptr %1, i32 0, i32 3, i32 %channel, i32 1
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %call14 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval, align 4
  %samples = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %samples to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %samples, align 4
  %add = add i32 %22, %20
  %divider = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %divider, align 4
  %mul = mul i32 %add, %24
  %div1873 = lshr i32 %mul, 1
  %add19 = add nuw i32 %div1873, 1500000000
  %div20 = udiv i32 %add19, %mul
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %sw.bb
  %regmap22 = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap22, align 4
  %reg23 = getelementptr %struct.mlxreg_fan, ptr %1, i32 0, i32 3, i32 %channel, i32 1
  %27 = ptrtoint ptr %reg23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg23, align 4
  %call24 = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regval, align 4
  %mask = getelementptr %struct.mlxreg_fan, ptr %1, i32 0, i32 3, i32 %channel, i32 2
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp = icmp eq i32 %30, %32
  %conv = zext i1 %cmp to i32
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond = icmp eq i32 %attr, 0
  br i1 %cond, label %sw.bb31, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb31:                                          ; preds = %sw.bb28
  %regmap32 = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap32, align 4
  %reg33 = getelementptr %struct.mlxreg_fan, ptr %1, i32 0, i32 4, i32 %channel, i32 2
  %35 = ptrtoint ptr %reg33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg33, align 4
  %call34 = call i32 @regmap_read(ptr noundef %34, i32 noundef %36, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %regval, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end37, %if.end27, %if.end17, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %38, %if.end37 ], [ %conv, %if.end27 ], [ %div20, %if.end17 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb31.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call24, %sw.bb21.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call34, %sw.bb31.cleanup_crit_edge ], [ -95, %sw.bb28.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_fan_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cond = icmp eq i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond7 = icmp eq i32 %attr, 0
  %or.cond11 = and i1 %cond, %cond7
  br i1 %or.cond11, label %sw.bb1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %2 = add i32 %val, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -205, i32 %2)
  %3 = icmp ult i32 %2, -205
  br i1 %3, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.mlxreg_fan, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_fan, ptr %1, i32 0, i32 4, i32 %channel, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef %val) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxreg_fan_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_fan_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %regval, align 4, !annotation !121
  %regmap = getelementptr inbounds %struct.mlxreg_fan, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.mlxreg_fan_pwm, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval, align 4
  %mul = mul i32 %12, 10
  %add = add i32 %mul, 127
  %div2 = udiv i32 %add, 255
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_fan_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %regval, align 4, !annotation !121
  %5 = add i32 %state, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %6 = icmp ult i32 %5, 9
  br i1 %6, label %for.body7.preheader, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

for.body7.preheader:                              ; preds = %entry
  %sub = add nsw i32 %state, -10
  %conv = trunc i32 %sub to i8
  %uglygep = getelementptr i8, ptr %1, i32 12
  %7 = zext i8 %conv to i32
  %8 = call ptr @memset(ptr %uglygep, i32 %7, i32 %sub)
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %i.185 = phi i32 [ %inc12, %for.body7.for.body7_crit_edge ], [ %sub, %for.body7.preheader ]
  %conv8 = trunc i32 %i.185 to i8
  %arrayidx10 = getelementptr %struct.mlxreg_fan_pwm, ptr %1, i32 0, i32 3, i32 %i.185
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv8, ptr %arrayidx10, align 1
  %inc12 = add nsw i32 %i.185, 1
  %cmp5 = icmp slt i32 %i.185, 10
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.end13

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end13:                                        ; preds = %for.body7
  %regmap = getelementptr inbounds %struct.mlxreg_fan, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.mlxreg_fan_pwm, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.end13.cleanup.sink.split_crit_edge

for.end13.cleanup.sink.split_crit_edge:           ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.end13
  %14 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval, align 4
  %mul = mul i32 %15, 10
  %add = add i32 %mul, 127
  %div15 = udiv i32 %add, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div15)
  %cmp16 = icmp ult i32 %sub, %div15
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %config.0 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ 1, %if.end.if.end20_crit_edge ]
  %state.addr.0 = phi i32 [ %state, %entry.if.end20_crit_edge ], [ %div15, %if.end.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %state.addr.0)
  %cmp21 = icmp ugt i32 %state.addr.0, 10
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %arrayidx26 = getelementptr %struct.mlxreg_fan_pwm, ptr %1, i32 0, i32 3, i32 %state.addr.0
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %17 to i16
  %regmap28 = getelementptr inbounds %struct.mlxreg_fan, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap28, align 4
  %reg29 = getelementptr inbounds %struct.mlxreg_fan_pwm, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %reg29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg29, align 4
  %mul31 = mul nuw i16 %conv27, 255
  %add35 = add nuw i16 %mul31, 5
  %div3681 = udiv i16 %add35, 10
  %div36.zext = zext i16 %div3681 to i32
  %call37 = call i32 @regmap_write(ptr noundef %19, i32 noundef %21, i32 noundef %div36.zext) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end24.cleanup_crit_edge, label %if.end24.cleanup.sink.split_crit_edge

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %for.end13.cleanup.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.45, %for.end13.cleanup.sink.split_crit_edge ], [ @.str.49, %if.end24.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %for.end13.cleanup.sink.split_crit_edge ], [ %call37, %if.end24.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.49.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ %config.0, %if.end24.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_mlxreg_fan__170_639_mlxreg_fan_driver_init6, !1, !"__initcall__kmod_mlxreg_fan__170_639_mlxreg_fan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 639, i32 1}
!2 = !{ptr @__exitcall_mlxreg_fan_driver_exit, !1, !"__exitcall_mlxreg_fan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 641, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 642, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 643, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 644, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 634, i32 14}
!14 = !{ptr @mlxreg_fan_driver, !15, !"mlxreg_fan_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 632, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 602, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlxreg_fan_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlxreg_fan_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 617, i32 50}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 622, i32 3}
!28 = !{ptr @mlxreg_fan_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlxreg_fan_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 469, i32 28}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 471, i32 5}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlxreg_fan_config._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlxreg_fan_config._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 491, i32 35}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 493, i32 5}
!41 = !{ptr @mlxreg_fan_config._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlxreg_fan_config._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 510, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 512, i32 5}
!47 = !{ptr @mlxreg_fan_config._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlxreg_fan_config._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 518, i32 5}
!51 = !{ptr @mlxreg_fan_config._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mlxreg_fan_config._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 534, i32 4}
!55 = !{ptr @mlxreg_fan_config._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mlxreg_fan_config._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 546, i32 4}
!59 = !{ptr @mlxreg_fan_config._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mlxreg_fan_config._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 553, i32 4}
!63 = !{ptr @mlxreg_fan_config._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mlxreg_fan_config._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 409, i32 3}
!67 = !{ptr @mlxreg_fan_connect_verify._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mlxreg_fan_connect_verify._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 425, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mlxreg_pwm_connect_verify._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mlxreg_pwm_connect_verify._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 441, i32 3}
!76 = !{ptr @mlxreg_fan_speed_divider_get._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mlxreg_fan_speed_divider_get._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mlxreg_fan_hwmon_chip_info, !79, !"mlxreg_fan_hwmon_chip_info", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 303, i32 37}
!80 = !{ptr @mlxreg_fan_hwmon_hwmon_ops, !81, !"mlxreg_fan_hwmon_hwmon_ops", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 297, i32 31}
!82 = !{ptr @mlxreg_fan_hwmon_info, !83, !"mlxreg_fan_hwmon_info", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 273, i32 41}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 578, i32 4}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mlxreg_fan_cooling_config._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mlxreg_fan_cooling_config._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 268, i32 2}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 269, i32 2}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 270, i32 2}
!95 = !{ptr @mlxreg_fan_name, !96, !"mlxreg_fan_name", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 266, i32 14}
!97 = !{ptr @mlxreg_fan_cooling_ops, !98, !"mlxreg_fan_cooling_ops", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 395, i32 48}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 326, i32 3}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mlxreg_fan_get_cur_state._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mlxreg_fan_get_cur_state._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 370, i32 4}
!106 = !{ptr @mlxreg_fan_set_cur_state._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mlxreg_fan_set_cur_state._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/mlxreg-fan.c", i32 389, i32 3}
!110 = !{ptr @mlxreg_fan_set_cur_state._entry.48, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mlxreg_fan_set_cur_state._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i8 0, i8 2}
