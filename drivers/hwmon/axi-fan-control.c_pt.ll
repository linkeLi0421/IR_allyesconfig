; ModuleID = '/llk/IR_all_yes/drivers/hwmon/axi-fan-control.c_pt.bc'
source_filename = "../drivers/hwmon/axi-fan-control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.axi_fan_control_data = type { ptr, ptr, i32, i32, i32, i8, i8, i8 }

@__initcall__kmod_axi_fan_control__191_546_axi_fan_control_driver_init6 = internal global ptr @axi_fan_control_driver_init, section ".initcall6.init", align 4
@axi_fan_control_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axi_fan_control_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axi_fan_control_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axi_fan_control_driver_exit = internal global ptr @axi_fan_control_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [52 x i8] c"axi_fan_control.author=Nuno Sa <nuno.sa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [71 x i8] c"axi_fan_control.description=Analog Devices Fan Control HDL CORE driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [51 x i8] c"axi_fan_control.file=drivers/hwmon/axi-fan-control\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [28 x i8] c"axi_fan_control.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axi_fan_control_driver\00", [41 x i8] zeroinitializer }, align 32
@axi_fan_control_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,axi-fan-control-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @version_1_0_0 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axi_fan_control\00", [16 x i8] zeroinitializer }, align 32
@axi_fan_control_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_get failed with %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axi_fan_control_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hwmon/axi-fan-control.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axi_fan_control_probe._entry_ptr = internal global ptr @axi_fan_control_probe._entry, section ".printk_index", align 4
@axi_fan_control_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Major version mismatch. Expected %d.%.2d.%c, Reported %d.%.2d.%c\0A\00", [62 x i8] zeroinitializer }, align 32
@axi_fan_control_probe._entry_ptr.9 = internal global ptr @axi_fan_control_probe._entry.7, section ".printk_index", align 4
@axi_fan_control_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request an irq, %d\00", [35 x i8] zeroinitializer }, align 32
@axi_fan_control_probe._entry_ptr.12 = internal global ptr @axi_fan_control_probe._entry.10, section ".printk_index", align 4
@axi_fan_control_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize device\0A\00", [35 x i8] zeroinitializer }, align 32
@axi_fan_control_probe._entry_ptr.15 = internal global ptr @axi_fan_control_probe._entry.13, section ".printk_index", align 4
@axi_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @axi_fan_control_hwmon_ops, ptr @axi_fan_control_info }, [24 x i8] zeroinitializer }, align 32
@axi_fan_control_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @axi_fan_control_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pulses-per-revolution\00", [42 x i8] zeroinitializer }, align 32
@axi_fan_control_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @axi_fan_control_is_visible, ptr @axi_fan_control_read, ptr @axi_fan_control_read_labels, ptr @axi_fan_control_write }, [16 x i8] zeroinitializer }, align 32
@axi_fan_control_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.20, ptr @.compoundliteral.22, ptr @.compoundliteral.24, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FAN\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYSMON4\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2054, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.21 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2097154, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.23 }, [24 x i8] zeroinitializer }, align 32
@axi_fan_control_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @axi_fan_control_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@axi_fan_control_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 256 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 260 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 264 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 268 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 272 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 276 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 280 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_fan_control_show, ptr @axi_fan_control_store }, i32 284 }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point2_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point3_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point4_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@version_1_0_0 = internal constant { i32, [28 x i8] } { i32 65633, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 11]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 11]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"axi_fan_control_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 539, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 541, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"axi_fan_control_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 452, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 464, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 482, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 501, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 520, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 526, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"axi_chip_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 415, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"axi_fan_control_groups\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 342, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 375, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"axi_fan_control_hwmon_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 408, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"axi_fan_control_info\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 401, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 220, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 223, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"axi_fan_control_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 448, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"axi_fan_control_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 437, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp_hyst\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp_hyst\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp_hyst\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp_hyst\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 421, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 86, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 423, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 425, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 427, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 429, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 431, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 433, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 435, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"version_1_0_0\00", align 1
@___asan_gen_.175 = private constant [35 x i8] c"../drivers/hwmon/axi-fan-control.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 450, i32 18 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_axi_fan_control_driver_exit, ptr @__initcall__kmod_axi_fan_control__191_546_axi_fan_control_driver_init6, ptr @axi_fan_control_driver_exit, ptr @axi_fan_control_probe._entry, ptr @axi_fan_control_probe._entry.10, ptr @axi_fan_control_probe._entry.13, ptr @axi_fan_control_probe._entry.7, ptr @axi_fan_control_probe._entry_ptr, ptr @axi_fan_control_probe._entry_ptr.12, ptr @axi_fan_control_probe._entry_ptr.15, ptr @axi_fan_control_probe._entry_ptr.9, ptr @axi_fan_control_driver, ptr @.str, ptr @axi_fan_control_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @axi_chip_info, ptr @axi_fan_control_groups, ptr @.str.16, ptr @.str.17, ptr @axi_fan_control_hwmon_ops, ptr @axi_fan_control_info, ptr @.str.18, ptr @.str.19, ptr @.compoundliteral, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @axi_fan_control_group, ptr @axi_fan_control_attrs, ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @version_1_0_0], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_fan_control_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_1_0_0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axi_fan_control_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axi_fan_control_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @axi_fan_control_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @axi_fan_control_of_match, ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %cmp.i140 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call.i141 = tail call i32 @clk_prepare(ptr noundef %call14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %call14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call14) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end.i
  %call.i142 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @axi_fan_control_clk_disable, ptr noundef %call14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end29, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %call14) #9
  tail call void @clk_unprepare(ptr noundef %call14) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @clk_get_rate(ptr noundef %call14) #9
  %clk_rate = getelementptr inbounds %struct.axi_fan_control_data, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call30, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !94
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %shr = lshr i32 %9, 16
  %and = and i32 %shr, 255
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr36 = lshr i32 %13, 16
  %and37 = and i32 %shr36, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and37)
  %cmp.not = icmp eq i32 %and, %and37
  br i1 %cmp.not, label %if.end56, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %shr47 = lshr i32 %13, 8
  %and48 = and i32 %shr47, 255
  %and50 = and i32 %13, 255
  %shr53 = lshr i32 %9, 8
  %and54 = and i32 %shr53, 255
  %and55 = and i32 %9, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %and37, i32 noundef %and48, i32 noundef %and50, i32 noundef %and, i32 noundef %and54, i32 noundef %and55) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end34
  %call57 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.axi_fan_control_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call57, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp59 = icmp slt i32 %call57, 0
  br i1 %cmp59, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %driver_override = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 9
  %15 = ptrtoint ptr %driver_override to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_override, align 8
  %call65 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call57, ptr noundef null, ptr noundef nonnull @axi_fan_control_irq_handler, i32 noundef 8196, ptr noundef %16, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call65) #12
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call75 = tail call fastcc i32 @axi_fan_control_init(ptr noundef nonnull %call.i, ptr noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end82:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i, ptr noundef nonnull @axi_chip_info, ptr noundef nonnull @axi_fan_control_groups) #9
  %hdev = getelementptr inbounds %struct.axi_fan_control_data, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call84, ptr %hdev, align 4
  %cmp.i.i = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call84 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %20, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %do.end80, %do.end70, %if.end56.cleanup_crit_edge, %do.end41, %if.end29.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then3.i, %if.end20.cleanup_crit_edge, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %4, %do.end ], [ -19, %do.end41 ], [ %call65, %do.end70 ], [ %call75, %do.end80 ], [ %spec.select.i, %if.end82 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i142, %devm_add_action_or_reset.exit ], [ -22, %if.end29.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i141, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axi_fan_control_clk_disable(ptr noundef %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %clk) #9
  tail call void @clk_unprepare(ptr noundef %clk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_pwm_req = getelementptr inbounds %struct.axi_fan_control_data, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %hw_pwm_req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hw_pwm_req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %hw_pwm_req4 = getelementptr inbounds %struct.axi_fan_control_data, ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %hw_pwm_req4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_pwm_req4, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %update_tacho_params = getelementptr inbounds %struct.axi_fan_control_data, ptr %data, i32 0, i32 6
  %7 = ptrtoint ptr %update_tacho_params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %update_tacho_params, align 1
  br label %if.end9

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %hw_pwm_req4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hw_pwm_req4, align 4
  %hdev = getelementptr inbounds %struct.axi_fan_control_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  tail call void @sysfs_notify(ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.16) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6, %if.end.if.end9_crit_edge
  %and10 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end20_crit_edge, label %if.then12

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %if.end9
  %update_tacho_params13 = getelementptr inbounds %struct.axi_fan_control_data, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %update_tacho_params13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %update_tacho_params13, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %if.then12.if.end20_crit_edge, label %if.then15

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add.ptr.i44 = getelementptr i8, ptr %14, i32 196
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #9, !srcloc !94
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %mul = mul i32 %16, 25
  %add = add i32 %mul, 50
  %div17 = udiv i32 %add, 100
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.ptr.i45 = getelementptr i8, ptr %18, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %15) #9, !srcloc !98
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.i46 = getelementptr i8, ptr %20, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %div17) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %21) #9, !srcloc !98
  %22 = ptrtoint ptr %update_tacho_params13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %update_tacho_params13, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then12.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %and21 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %fan_fault = getelementptr inbounds %struct.axi_fan_control_data, ptr %data, i32 0, i32 7
  %23 = ptrtoint ptr %fan_fault to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %fan_fault, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %add.ptr.i47 = getelementptr i8, ptr %25, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %and25 = shl i32 %3, 24
  %26 = and i32 %and25, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %26) #9, !srcloc !98
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axi_fan_control_init(ptr noundef %ctl, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppr = getelementptr inbounds %struct.axi_fan_control_data, ptr %ctl, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.17, ptr noundef %ppr, i32 noundef 1, i32 noundef 0) #9
  %0 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ppr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ppr, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end8_crit_edge
    i32 2, label %if.end.if.end8_crit_edge17
    i32 4, label %if.end.if.end8_crit_edge18
  ]

if.end.if.end8_crit_edge18:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.if.end8_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge17, %if.end.if.end8_crit_edge18
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -251658241) #9, !srcloc !98
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 16777216) #9, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @axi_fan_control_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb1
    i32 1, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %attr, label %sw.default.i [
    i32 1, label %sw.bb.return_crit_edge
    i32 11, label %sw.bb.return_crit_edge7
    i32 2, label %sw.bb.return_crit_edge8
  ]

sw.bb.return_crit_edge8:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.return_crit_edge7:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i = icmp eq i32 %attr, 0
  %..i = select i1 %cond.i, i16 420, i16 0
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %switch.selectcmp.case1.i = icmp eq i32 %attr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %switch.selectcmp.case2.i = icmp eq i32 %attr, 21
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %2 = select i1 %switch.selectcmp.i, i16 292, i16 0
  br label %return

return:                                           ; preds = %sw.bb3, %sw.bb1, %sw.default.i, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge7, %sw.bb.return_crit_edge8, %entry.return_crit_edge
  %retval.0 = phi i16 [ %2, %sw.bb3 ], [ %..i, %sw.bb1 ], [ 0, %entry.return_crit_edge ], [ 0, %sw.default.i ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb.return_crit_edge7 ], [ 292, %sw.bb.return_crit_edge8 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb1
    i32 1, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 11, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %fan_fault.i = getelementptr inbounds %struct.axi_fan_control_data, ptr %2, i32 0, i32 7
  %4 = ptrtoint ptr %fan_fault.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fan_fault.i, align 2
  %conv.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %val, align 4
  store i8 0, ptr %fan_fault.i, align 2
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 196
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %sw.bb2.i.axi_fan_control_get_fan_rpm.exit.i_crit_edge, label %if.end.i.i

sw.bb2.i.axi_fan_control_get_fan_rpm.exit.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_fan_control_get_fan_rpm.exit.i

if.end.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %clk_rate.i.i = getelementptr inbounds %struct.axi_fan_control_data, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %clk_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate.i.i, align 4
  %mul.i.i = mul i32 %12, 60
  %ppr.i.i = getelementptr inbounds %struct.axi_fan_control_data, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %ppr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ppr.i.i, align 4
  %mul1.i.i = mul i32 %14, %10
  %div7.i.i = lshr i32 %mul1.i.i, 1
  %add.i.i = add i32 %div7.i.i, %mul.i.i
  %div2.i.i = udiv i32 %add.i.i, %mul1.i.i
  br label %axi_fan_control_get_fan_rpm.exit.i

axi_fan_control_get_fan_rpm.exit.i:               ; preds = %if.end.i.i, %sw.bb2.i.axi_fan_control_get_fan_rpm.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %div2.i.i, %if.end.i.i ], [ 0, %sw.bb2.i.axi_fan_control_get_fan_rpm.exit.i_crit_edge ]
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.i, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i = icmp eq i32 %attr, 0
  br i1 %cond.i, label %sw.bb.i16, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i16:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i11 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i11, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i.i.i12 = getelementptr i8, ptr %19, i32 132
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i12) #9, !srcloc !94
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %23, i32 192
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #9, !srcloc !94
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %mul.i.i13 = mul i32 %21, 255
  %div5.i.i = lshr i32 %25, 1
  %add.i.i14 = add i32 %div5.i.i, %mul.i.i13
  %div2.i.i15 = udiv i32 %add.i.i14, %25
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div2.i.i15, ptr %val, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i18 = icmp eq i32 %attr, 1
  br i1 %cond.i18, label %sw.bb.i20, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i20:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i19, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 200
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !94
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %mul.i = mul i32 %32, 501374
  %shr.i = ashr i32 %mul.i, 16
  %sub.i = add nsw i32 %shr.i, -273677
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i, ptr %val, align 4
  br label %return

return:                                           ; preds = %sw.bb.i20, %sw.bb3.return_crit_edge, %sw.bb.i16, %sw.bb1.return_crit_edge, %axi_fan_control_get_fan_rpm.exit.i, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ 0, %axi_fan_control_get_fan_rpm.exit.i ], [ 0, %sw.bb.i ], [ -524, %sw.bb.return_crit_edge ], [ 0, %sw.bb.i16 ], [ -524, %sw.bb1.return_crit_edge ], [ 0, %sw.bb.i20 ], [ -524, %sw.bb3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @axi_fan_control_read_labels(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %sw.bb1 ], [ @.str.18, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %.str.19.sink, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cond = icmp eq i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i = icmp eq i32 %attr, 0
  %or.cond = and i1 %cond, %cond.i
  br i1 %or.cond, label %sw.bb.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %6 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #9
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 255) #9
  %mul.i.i = mul i32 %5, %7
  %add.i.i = add i32 %mul.i.i, 127
  %div8.i.i = udiv i32 %add.i.i, 255
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %9, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %div8.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %10) #9, !srcloc !98
  br label %return

return:                                           ; preds = %sw.bb.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
if.end187:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !94
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %conv = zext i32 %7 to i64
  %mul = mul nuw nsw i64 %conv, 509314
  %add = add nuw nsw i64 %mul, 32767
  %8 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 281479271743489, i64 %add, i64 281479271743489) #13, !srcloc !99
  %9 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 281479271743489, i64 %add, i64 %8) #13, !srcloc !100
  %extract.t274 = trunc i64 %9 to i32
  %conv191 = add i32 %extract.t274, -280230
  %call192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv191)
  ret i32 %call192
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_fan_control_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !101
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end191, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end191:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %add = add i32 %4, 280230
  %conv = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv, 65535
  %add3 = add nuw nsw i64 %mul, 254657
  %5 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8952201849347926570, i64 %add3, i32 0) #13, !srcloc !102
  %asmresult.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i = extractvalue { i64, i32 } %5, 1
  %6 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8952201849347926570, i64 %add3, i64 %asmresult.i, i32 %asmresult4.i) #13, !srcloc !103
  %asmresult10.i = extractvalue { i64, i32 } %6, 0
  %extract280 = lshr i64 %asmresult10.i, 18
  %extract.t281 = trunc i64 %extract280 to i32
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %extract.t281, ptr %temp, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @arm_heavy_mb() #9
  %12 = call i32 @llvm.bswap.i32(i32 %extract.t281) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end191 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_axi_fan_control__191_546_axi_fan_control_driver_init6, !1, !"__initcall__kmod_axi_fan_control__191_546_axi_fan_control_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/axi-fan-control.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_axi_fan_control_driver_exit, !1, !"__exitcall_axi_fan_control_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author192, !4, !"__UNIQUE_ID_author192", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/axi-fan-control.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_description193, !6, !"__UNIQUE_ID_description193", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/axi-fan-control.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_file194, !8, !"__UNIQUE_ID_file194", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/axi-fan-control.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_license195, !8, !"__UNIQUE_ID_license195", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/axi-fan-control.c", i32 541, i32 11}
!12 = !{ptr @axi_fan_control_driver, !13, !"axi_fan_control_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/axi-fan-control.c", i32 539, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/axi-fan-control.c", i32 464, i32 21}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/axi-fan-control.c", i32 482, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @axi_fan_control_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @axi_fan_control_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/axi-fan-control.c", i32 501, i32 3}
!26 = !{ptr @axi_fan_control_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @axi_fan_control_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/axi-fan-control.c", i32 520, i32 3}
!30 = !{ptr @axi_fan_control_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @axi_fan_control_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/axi-fan-control.c", i32 526, i32 3}
!34 = !{ptr @axi_fan_control_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @axi_fan_control_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/axi-fan-control.c", i32 342, i32 41}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/axi-fan-control.c", i32 375, i32 33}
!40 = !{ptr @axi_chip_info, !41, !"axi_chip_info", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/axi-fan-control.c", i32 415, i32 37}
!42 = !{ptr @axi_fan_control_hwmon_ops, !43, !"axi_fan_control_hwmon_ops", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/axi-fan-control.c", i32 408, i32 31}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/axi-fan-control.c", i32 220, i32 10}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/axi-fan-control.c", i32 223, i32 10}
!48 = !{ptr @axi_fan_control_info, !49, !"axi_fan_control_info", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/axi-fan-control.c", i32 401, i32 41}
!50 = !{ptr @axi_fan_control_groups, !51, !"axi_fan_control_groups", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/axi-fan-control.c", i32 448, i32 1}
!52 = !{ptr @axi_fan_control_group, !51, !"axi_fan_control_group", i1 false, i1 false}
!53 = !{ptr @axi_fan_control_attrs, !54, !"axi_fan_control_attrs", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/axi-fan-control.c", i32 437, i32 26}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/axi-fan-control.c", i32 421, i32 8}
!57 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, !56, !"sensor_dev_attr_pwm1_auto_point1_temp_hyst", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/axi-fan-control.c", i32 86, i32 22}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/axi-fan-control.c", i32 423, i32 8}
!62 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !61, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/axi-fan-control.c", i32 425, i32 8}
!65 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst, !64, !"sensor_dev_attr_pwm1_auto_point2_temp_hyst", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/axi-fan-control.c", i32 427, i32 8}
!68 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !67, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/axi-fan-control.c", i32 429, i32 8}
!71 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst, !70, !"sensor_dev_attr_pwm1_auto_point3_temp_hyst", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/axi-fan-control.c", i32 431, i32 8}
!74 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp, !73, !"sensor_dev_attr_pwm1_auto_point3_temp", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/axi-fan-control.c", i32 433, i32 8}
!77 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst, !76, !"sensor_dev_attr_pwm1_auto_point4_temp_hyst", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/axi-fan-control.c", i32 435, i32 8}
!80 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp, !79, !"sensor_dev_attr_pwm1_auto_point4_temp", i1 false, i1 false}
!81 = !{ptr @axi_fan_control_of_match, !82, !"axi_fan_control_of_match", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/axi-fan-control.c", i32 452, i32 34}
!83 = !{ptr @version_1_0_0, !84, !"version_1_0_0", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/axi-fan-control.c", i32 450, i32 18}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 4923087}
!95 = !{i64 2152463436}
!96 = !{i8 0, i8 2}
!97 = !{i64 2152464791}
!98 = !{i64 4922669}
!99 = !{i64 1158480, i64 1158507}
!100 = !{i64 1158820, i64 1158847, i64 1158881, i64 1158902}
!101 = !{!"auto-init"}
!102 = !{i64 1158597, i64 1158624, i64 1158646, i64 1158674}
!103 = !{i64 1159005, i64 1159032, i64 1159065, i64 1159086, i64 1159113, i64 1159139}
