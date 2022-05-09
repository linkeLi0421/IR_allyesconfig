; ModuleID = '/llk/IR_all_yes/drivers/hwmon/aspeed-pwm-tacho.c_pt.bc'
source_filename = "../drivers/hwmon/aspeed-pwm-tacho.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pwm_port_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.aspeed_pwm_tacho_data = type { ptr, ptr, i32, [8 x i8], [16 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i16], [8 x i8], [8 x i8], [16 x i8], [8 x ptr], [3 x ptr] }
%struct.aspeed_cooling_device = type { [16 x i8], ptr, ptr, i32, ptr, i8, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_aspeed_pwm_tacho__170_968_aspeed_pwm_tacho_driver_init6 = internal global ptr @aspeed_pwm_tacho_driver_init, section ".initcall6.init", align 4
@aspeed_pwm_tacho_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_pwm_tacho_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_tacho_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_pwm_tacho_driver_exit = internal global ptr @aspeed_pwm_tacho_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [83 x i8] c"aspeed_pwm_tacho.author=Jaghathiswari Rankappagounder Natarajan <jaghu@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [68 x i8] c"aspeed_pwm_tacho.description=ASPEED PWM and Fan Tacho device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [53 x i8] c"aspeed_pwm_tacho.file=drivers/hwmon/aspeed-pwm-tacho\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"aspeed_pwm_tacho.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed_pwm_tacho\00", [47 x i8] zeroinitializer }, align 32
@of_pwm_tacho_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-pwm-tacho\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-pwm-tacho\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@aspeed_pwm_tacho_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aspeed_pwm_tacho_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @regmap_aspeed_pwm_tacho_reg_read, ptr @regmap_aspeed_pwm_tacho_reg_write, ptr null, i8 1, i32 120, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"aspeed_pwm_tacho:908:(&aspeed_pwm_tacho_regmap_config)->lock\00", [35 x i8] zeroinitializer }, align 32
@aspeed_pwm_tacho_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"missing or invalid reset controller device tree entry\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_pwm_tacho_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hwmon/aspeed-pwm-tacho.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_pwm_tacho_probe._entry_ptr = internal global ptr @aspeed_pwm_tacho_probe._entry, section ".printk_index", align 4
@pwm_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pwm_is_visible, ptr null, ptr @pwm_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fan_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @fan_dev_is_visible, ptr null, ptr @fan_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cooling-levels\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,fan-tach-ch\00", [45 x i8] zeroinitializer }, align 32
@pwm_port_params = internal constant { [8 x %struct.pwm_port_params], [64 x i8] } { [8 x %struct.pwm_port_params] [%struct.pwm_port_params { i32 256, i32 0, i32 12, i32 3, i32 4112, i32 0, i32 8, i32 8, i32 65535 }, %struct.pwm_port_params { i32 512, i32 0, i32 13, i32 4, i32 8224, i32 16, i32 24, i32 8, i32 -65536 }, %struct.pwm_port_params { i32 1024, i32 0, i32 14, i32 5, i32 16448, i32 0, i32 8, i32 12, i32 65535 }, %struct.pwm_port_params { i32 2048, i32 0, i32 15, i32 6, i32 32896, i32 16, i32 24, i32 12, i32 -65536 }, %struct.pwm_port_params { i32 256, i32 64, i32 12, i32 3, i32 4112, i32 0, i32 8, i32 72, i32 65535 }, %struct.pwm_port_params { i32 512, i32 64, i32 13, i32 4, i32 8224, i32 16, i32 24, i32 72, i32 -65536 }, %struct.pwm_port_params { i32 1024, i32 64, i32 14, i32 5, i32 16448, i32 0, i32 8, i32 76, i32 65535 }, %struct.pwm_port_params { i32 2048, i32 64, i32 15, i32 6, i32 32896, i32 16, i32 24, i32 76, i32 -65536 }], [64 x i8] zeroinitializer }, align 32
@aspeed_create_pwm_cooling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 825, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Property 'cooling-levels' cannot be read.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed_create_pwm_cooling\00", [38 x i8] zeroinitializer }, align 32
@aspeed_create_pwm_cooling._entry_ptr = internal global ptr @aspeed_create_pwm_cooling._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pOFn%d\00", [24 x i8] zeroinitializer }, align 32
@aspeed_pwm_cool_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @aspeed_pwm_cz_get_max_state, ptr @aspeed_pwm_cz_get_cur_state, ptr @aspeed_pwm_cz_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pwm_dev_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm7, ptr @sensor_dev_attr_pwm8, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm7 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm8 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm8\00", [27 x i8] zeroinitializer }, align 32
@fan_dev_attrs = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan9_input, ptr @sensor_dev_attr_fan10_input, ptr @sensor_dev_attr_fan11_input, ptr @sensor_dev_attr_fan12_input, ptr @sensor_dev_attr_fan13_input, ptr @sensor_dev_attr_fan14_input, ptr @sensor_dev_attr_fan15_input, ptr @sensor_dev_attr_fan16_input, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan13_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan14_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan15_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan16_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan9_input\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan10_input\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan11_input\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan12_input\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan13_input\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan14_input\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan15_input\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan16_input\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"aspeed_pwm_tacho_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 960, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 963, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"of_pwm_tacho_match_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 953, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"aspeed_pwm_tacho_regmap_config\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 364, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 907, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 914, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"pwm_dev_group\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 662, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"fan_dev_group\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 703, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 851, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 858, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 867, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"pwm_port_params\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 255, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 825, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 828, i32 42 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"aspeed_pwm_cool_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 797, i32 48 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"pwm_dev_attrs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 650, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm4\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm5\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm6\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm7\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm8\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 642, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 602, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 643, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 644, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 645, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 646, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 647, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 648, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 649, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"fan_dev_attrs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 683, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_input\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_input\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan9_input\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan10_input\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan11_input\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan12_input\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan13_input\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan14_input\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan15_input\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan16_input\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 667, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 617, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 668, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 669, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 670, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 671, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 672, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 673, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 674, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 675, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 676, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 677, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 678, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 679, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 680, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 681, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.262 = private constant [36 x i8] c"../drivers/hwmon/aspeed-pwm-tacho.c\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 682, i32 8 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_aspeed_pwm_tacho_driver_exit, ptr @__initcall__kmod_aspeed_pwm_tacho__170_968_aspeed_pwm_tacho_driver_init6, ptr @aspeed_create_pwm_cooling._entry, ptr @aspeed_create_pwm_cooling._entry_ptr, ptr @aspeed_pwm_tacho_driver_exit, ptr @aspeed_pwm_tacho_probe._entry, ptr @aspeed_pwm_tacho_probe._entry_ptr, ptr @aspeed_pwm_tacho_driver, ptr @.str, ptr @of_pwm_tacho_match_table, ptr @aspeed_pwm_tacho_probe._key, ptr @aspeed_pwm_tacho_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pwm_dev_group, ptr @fan_dev_group, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pwm_port_params, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @aspeed_pwm_cool_ops, ptr @pwm_dev_attrs, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm7, ptr @sensor_dev_attr_pwm8, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @fan_dev_attrs, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan9_input, ptr @sensor_dev_attr_fan10_input, ptr @sensor_dev_attr_fan11_input, ptr @sensor_dev_attr_fan12_input, ptr @sensor_dev_attr_fan13_input, ptr @sensor_dev_attr_fan14_input, ptr @sensor_dev_attr_fan15_input, ptr @sensor_dev_attr_fan16_input, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pwm_tacho_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pwm_tacho_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pwm_tacho_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pwm_tacho_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pwm_tacho_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_port_params to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_create_pwm_cooling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pwm_cool_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_dev_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_dev_attrs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan13_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan14_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan15_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan16_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_pwm_tacho_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_pwm_tacho_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_pwm_tacho_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_pwm_tacho_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_pwm_tacho_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pwm_port.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef %call, ptr noundef nonnull @aspeed_pwm_tacho_regmap_config, ptr noundef nonnull @aspeed_pwm_tacho_probe._key, ptr noundef nonnull @.str.1) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i97 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call.i98 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %rst = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i98, ptr %rst, align 4
  %cmp.i99 = icmp ugt ptr %call.i98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call22 = tail call i32 @reset_control_deassert(ptr noundef %call.i98) #10
  %call.i100 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @aspeed_pwm_tacho_remove, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i, label %if.end26, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 4
  %call.i.i = tail call i32 @reset_control_assert(ptr noundef %10) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 32, i32 noundef 0) #10
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 96, i32 noundef 0) #10
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #10
  %cmp.i101 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.end26.cleanup_crit_edge, label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %call35 = tail call i32 @clk_get_rate(ptr noundef %call31) #10
  %clk_freq = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call35, ptr %clk_freq, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call.i.i102 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i.i103 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %type_pwm_clock_division_h.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %type_pwm_clock_division_h.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %type_pwm_clock_division_h.i, align 1
  %type_pwm_clock_division_l.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %type_pwm_clock_division_l.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 5, ptr %type_pwm_clock_division_l.i, align 2
  %type_pwm_clock_unit.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %type_pwm_clock_unit.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 95, ptr %type_pwm_clock_unit.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 4, i32 noundef 65535, i32 noundef 24325, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call.i.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %type_fan_tach_clock_division.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %type_fan_tach_clock_division.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %type_fan_tach_clock_division.i, align 1
  %type_fan_tach_unit.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %type_fan_tach_unit.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 528, ptr %type_fan_tach_unit.i, align 4
  %type_fan_tach_mode.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %type_fan_tach_mode.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %type_fan_tach_mode.i, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call.i.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 16, i32 noundef -65474, i32 noundef 34603040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call.i1.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 20, i32 noundef -1, i32 noundef 34603008, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call38 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %cmp.not119 = icmp eq ptr %call38, null
  br i1 %cmp.not119, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34.for.body_crit_edge
  %child.0120 = phi ptr [ %call43, %for.inc.for.body_crit_edge ], [ %call38, %if.end34.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_port.i) #10
  %32 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %pwm_port.i, align 4, !annotation !141
  %call.i.i.i104 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0120, ptr noundef nonnull @.str.7, ptr noundef nonnull %pwm_port.i, i32 noundef 1, i32 noundef 0) #10
  %33 = call i32 @llvm.smin.i32(i32 %call.i.i.i104, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i104)
  %tobool.not.i105 = icmp sgt i32 %call.i.i.i104, -1
  br i1 %tobool.not.i105, label %if.end.i, label %for.body.aspeed_create_fan.exit_crit_edge

for.body.aspeed_create_fan.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit

if.end.i:                                         ; preds = %for.body
  %34 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pwm_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp.i106 = icmp ugt i32 %35, 7
  br i1 %cmp.i106, label %if.end.i.aspeed_create_fan.exit.thread_crit_edge, label %if.end2.i

if.end.i.aspeed_create_fan.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %35 to i8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %arrayidx.i.i.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %35
  %ctrl_reg.i.i.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %35, i32 1
  %38 = ptrtoint ptr %ctrl_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrl_reg.i.i.i, align 4
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %arrayidx.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 3, i32 %35
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 11, i32 %35
  %43 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %type_mask.i.i.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %35, i32 4
  %46 = ptrtoint ptr %type_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type_mask.i.i.i, align 4
  %call.i.i18.i.i = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %39, i32 noundef %47, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %arrayidx5.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 12, i32 %35
  %48 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %arrayidx5.i.i, align 1
  call fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr noundef %call.i, i8 noundef zeroext %conv.i, i8 noundef zeroext -1) #10
  %call.i.i107 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0120, ptr noundef nonnull @.str.8, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp4.i = icmp sgt i32 %call.i.i107, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end2.i.if.end12.i_crit_edge

if.end2.i.if.end12.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.end2.i
  %49 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pwm_port.i, align 4
  %conv7.i = trunc i32 %call.i.i107 to i8
  %call.i.i49.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i49.i, null
  br i1 %tobool.not.i.i, label %if.then6.i.aspeed_create_fan.exit.thread_crit_edge, label %if.end.i.i

if.then6.i.aspeed_create_fan.exit.thread_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit.thread

if.end.i.i:                                       ; preds = %if.then6.i
  %conv.i.i = and i32 %call.i.i107, 255
  %call.i52.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %conv.i.i, i32 noundef 3520) #10
  %cooling_levels.i.i = getelementptr inbounds %struct.aspeed_cooling_device, ptr %call.i.i49.i, i32 0, i32 4
  %51 = ptrtoint ptr %cooling_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i52.i.i, ptr %cooling_levels.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call.i52.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.aspeed_create_fan.exit.thread_crit_edge, label %if.end5.i.i

if.end.i.i.aspeed_create_fan.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit.thread

if.end5.i.i:                                      ; preds = %if.end.i.i
  %sub.i.i = add i8 %conv7.i, -1
  %max_state.i.i = getelementptr inbounds %struct.aspeed_cooling_device, ptr %call.i.i49.i, i32 0, i32 5
  %52 = ptrtoint ptr %max_state.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %sub.i.i, ptr %max_state.i.i, align 4
  %call.i53.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.0120, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i52.i.i, i32 noundef %conv.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i53.i.i)
  %tobool11.not.i.i = icmp sgt i32 %call.i53.i.i, -1
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  br label %aspeed_create_fan.exit.thread

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %call14.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i.i49.i, i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef nonnull %child.0120, i32 noundef %50) #10
  %call17.i.i = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %dev1, ptr noundef nonnull %child.0120, ptr noundef nonnull %call.i.i49.i, ptr noundef nonnull %call.i.i49.i, ptr noundef nonnull @aspeed_pwm_cool_ops) #10
  %tcdev.i.i = getelementptr inbounds %struct.aspeed_cooling_device, ptr %call.i.i49.i, i32 0, i32 2
  %53 = ptrtoint ptr %tcdev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call17.i.i, ptr %tcdev.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call17.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %aspeed_create_pwm_cooling.exit.i, label %aspeed_create_pwm_cooling.exit.thread55.i

aspeed_create_pwm_cooling.exit.thread55.i:        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv24.i.i = getelementptr inbounds %struct.aspeed_cooling_device, ptr %call.i.i49.i, i32 0, i32 1
  %54 = ptrtoint ptr %priv24.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %priv24.i.i, align 4
  %pwm_port25.i.i = getelementptr inbounds %struct.aspeed_cooling_device, ptr %call.i.i49.i, i32 0, i32 3
  %55 = ptrtoint ptr %pwm_port25.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %pwm_port25.i.i, align 4
  %arrayidx.i50.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 14, i32 %50
  %56 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i49.i, ptr %arrayidx.i50.i, align 4
  br label %if.end12.i

aspeed_create_pwm_cooling.exit.i:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %call17.i.i to i32
  br label %aspeed_create_fan.exit

if.end12.i:                                       ; preds = %aspeed_create_pwm_cooling.exit.thread55.i, %if.end2.i.if.end12.i_crit_edge
  %call.i51.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0120, ptr noundef nonnull @.str.9, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51.i)
  %cmp14.i = icmp slt i32 %call.i51.i, 1
  br i1 %cmp14.i, label %if.end12.i.aspeed_create_fan.exit.thread_crit_edge, label %if.end17.i

if.end12.i.aspeed_create_fan.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit.thread

if.end17.i:                                       ; preds = %if.end12.i
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %call.i51.i, i32 noundef 3520) #10
  %tobool19.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool19.not.i, label %if.end17.i.aspeed_create_fan.exit.thread_crit_edge, label %if.end21.i

if.end17.i.aspeed_create_fan.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit.thread

if.end21.i:                                       ; preds = %if.end17.i
  %call.i52.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.0120, ptr noundef nonnull @.str.9, ptr noundef nonnull %call5.i.i.i, i32 noundef %call.i51.i, i32 noundef 0) #10
  %58 = call i32 @llvm.smin.i32(i32 %call.i52.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i52.i)
  %tobool23.not.i = icmp sgt i32 %call.i52.i, -1
  br i1 %tobool23.not.i, label %aspeed_create_fan.exit.thread111, label %if.end21.i.aspeed_create_fan.exit_crit_edge

if.end21.i.aspeed_create_fan.exit_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_create_fan.exit

aspeed_create_fan.exit.thread111:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %pwm_port.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pwm_port.i, align 4
  %conv26.i = trunc i32 %60 to i8
  call fastcc void @aspeed_create_fan_tach_channel(ptr noundef %call.i, ptr noundef nonnull %call5.i.i.i, i32 noundef %call.i51.i, i8 noundef zeroext %conv26.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_port.i) #10
  br label %for.inc

aspeed_create_fan.exit.thread:                    ; preds = %if.end17.i.aspeed_create_fan.exit.thread_crit_edge, %if.end12.i.aspeed_create_fan.exit.thread_crit_edge, %do.end.i.i, %if.end.i.i.aspeed_create_fan.exit.thread_crit_edge, %if.then6.i.aspeed_create_fan.exit.thread_crit_edge, %if.end.i.aspeed_create_fan.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i53.i.i, %do.end.i.i ], [ -12, %if.then6.i.aspeed_create_fan.exit.thread_crit_edge ], [ -12, %if.end.i.i.aspeed_create_fan.exit.thread_crit_edge ], [ -12, %if.end17.i.aspeed_create_fan.exit.thread_crit_edge ], [ -22, %if.end12.i.aspeed_create_fan.exit.thread_crit_edge ], [ -22, %if.end.i.aspeed_create_fan.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_port.i) #10
  br label %if.then41

aspeed_create_fan.exit:                           ; preds = %if.end21.i.aspeed_create_fan.exit_crit_edge, %aspeed_create_pwm_cooling.exit.i, %for.body.aspeed_create_fan.exit_crit_edge
  %retval.0.i = phi i32 [ %33, %for.body.aspeed_create_fan.exit_crit_edge ], [ %57, %aspeed_create_pwm_cooling.exit.i ], [ %58, %if.end21.i.aspeed_create_fan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_port.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool40.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool40.not, label %aspeed_create_fan.exit.for.inc_crit_edge, label %aspeed_create_fan.exit.if.then41_crit_edge

aspeed_create_fan.exit.if.then41_crit_edge:       ; preds = %aspeed_create_fan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

aspeed_create_fan.exit.for.inc_crit_edge:         ; preds = %aspeed_create_fan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then41:                                        ; preds = %aspeed_create_fan.exit.if.then41_crit_edge, %aspeed_create_fan.exit.thread
  %retval.0.i110 = phi i32 [ %retval.0.i.ph, %aspeed_create_fan.exit.thread ], [ %retval.0.i, %aspeed_create_fan.exit.if.then41_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0120) #10
  br label %cleanup

for.inc:                                          ; preds = %aspeed_create_fan.exit.for.inc_crit_edge, %aspeed_create_fan.exit.thread111
  %call43 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0120) #10
  %cmp.not = icmp eq ptr %call43, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end34.for.end_crit_edge
  %groups = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 15
  %61 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pwm_dev_group, ptr %groups, align 4
  %arrayidx45 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 15, i32 1
  %62 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @fan_dev_group, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %call.i, i32 0, i32 15, i32 2
  %63 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx47, align 4
  %call49 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef %groups) #10
  %cmp.i.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %call49 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %64, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then41, %if.end26.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %4, %if.then10 ], [ %8, %do.end ], [ %retval.0.i110, %if.then41 ], [ %spec.select.i, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i100, %devm_add_action_or_reset.exit ], [ -19, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_pwm_tacho_remove(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_aspeed_pwm_tacho_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 %reg
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !142
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_aspeed_pwm_tacho_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr = getelementptr i8, ptr %context, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #10, !srcloc !145
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_create_fan_tach_channel(ptr nocapture noundef %priv, ptr nocapture noundef readonly %fan_tach_ch, i32 noundef %count, i8 noundef zeroext %pwm_source) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp19 = icmp sgt i32 %count, 0
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv.i16 = zext i8 %pwm_source to i32
  %and.i = and i32 %conv.i16, 3
  %and3.i = lshr i32 %conv.i16, 2
  %0 = and i32 %and3.i, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv21 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.body.for.body_crit_edge ]
  %val.020 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %fan_tach_ch, i32 %conv21
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %conv.i = zext i8 %2 to i32
  %shl.i = shl i32 65536, %conv.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %arrayidx3 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %priv, i32 0, i32 4, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %priv, i32 0, i32 13, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %pwm_source, ptr %arrayidx5, align 1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %shl.i17 = shl i32 %and.i, %mul.i
  %shl6.i = shl nuw i32 %0, %mul.i
  %shl9.i = shl i32 3, %mul.i
  %call.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 32, i32 noundef %shl9.i, i32 noundef %shl.i17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %shl12.i = shl nuw i32 1, %mul.i
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 96, i32 noundef %shl12.i, i32 noundef %shl6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %inc = add i8 %val.020, 1
  %conv = zext i8 %inc to i32
  %cmp = icmp slt i32 %conv, %count
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr nocapture noundef readonly %priv, i8 noundef zeroext %index, i8 noundef zeroext %fan_ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr %struct.aspeed_pwm_tacho_data, ptr %priv, i32 0, i32 11, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom1 = zext i8 %1 to i32
  %arrayidx2 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %priv, i32 0, i32 5, i32 %idxprom1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv3, 1
  %conv5 = zext i8 %fan_ctrl to i32
  %mul = mul nuw nsw i32 %add, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %mul)
  %4 = icmp ult i32 %mul, 255
  br i1 %4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom
  %ctrl_reg.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl_reg.i, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div.lhs.trunc = trunc i32 %mul to i16
  %div36 = udiv i16 %div.lhs.trunc, 255
  %div.zext = zext i16 %div36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div.zext)
  %cmp12 = icmp eq i32 %add, %div.zext
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %13 = and i16 %div36, 255
  %14 = zext i16 %13 to i32
  %conv1.i = select i1 %cmp12, i32 0, i32 %14
  %duty_ctrl_fall_point.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom, i32 6
  %15 = ptrtoint ptr %duty_ctrl_fall_point.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %duty_ctrl_fall_point.i, align 4
  %shl4.i = shl i32 %conv1.i, %16
  %duty_ctrl_reg.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom, i32 7
  %17 = ptrtoint ptr %duty_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %duty_ctrl_reg.i, align 4
  %duty_ctrl_rise_fall_mask.i = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom, i32 8
  %19 = ptrtoint ptr %duty_ctrl_rise_fall_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %duty_ctrl_rise_fall_mask.i, align 4
  %call.i.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %18, i32 noundef %20, i32 noundef %shl4.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %arrayidx.i33 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom
  %ctrl_reg.i34 = getelementptr [8 x %struct.pwm_port_params], ptr @pwm_port_params, i32 0, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %ctrl_reg.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl_reg.i34, align 4
  %25 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i33, align 4
  %call.i.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_pwm_cz_get_max_state(ptr nocapture noundef readonly %tcdev, ptr nocapture noundef writeonly %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %tcdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_state = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 5
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
define internal i32 @aspeed_pwm_cz_get_cur_state(ptr nocapture noundef readonly %tcdev, ptr nocapture noundef writeonly %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %tcdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %cur_state = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 6
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
define internal i32 @aspeed_pwm_cz_set_cur_state(ptr nocapture noundef readonly %tcdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %tcdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_state = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 5
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
  %cur_state = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cur_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %cur_state, align 1
  %cooling_levels = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %cooling_levels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cooling_levels, align 4
  %idxprom = and i32 %state, 255
  %arrayidx = getelementptr i8, ptr %6, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %priv = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %pwm_port = getelementptr inbounds %struct.aspeed_cooling_device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %pwm_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pwm_port, align 4
  %arrayidx4 = getelementptr %struct.aspeed_pwm_tacho_data, ptr %10, i32 0, i32 12, i32 %12
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %8, ptr %arrayidx4, align 1
  %14 = load ptr, ptr %priv, align 4
  %15 = load i32, ptr %pwm_port, align 4
  %conv7 = trunc i32 %15 to i8
  %16 = load ptr, ptr %cooling_levels, align 4
  %17 = load i8, ptr %cur_state, align 1
  %idxprom10 = zext i8 %17 to i32
  %arrayidx11 = getelementptr i8, ptr %16, i32 %idxprom10
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11, align 1
  tail call fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr noundef %14, i8 noundef zeroext %conv7, i8 noundef zeroext %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pwm_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.aspeed_pwm_tacho_data, ptr %1, i32 0, i32 3, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %fan_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fan_ctrl) #10
  %4 = ptrtoint ptr %fan_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fan_ctrl, align 4, !annotation !141
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %fan_ctrl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fan_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fan_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 12, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp7 = icmp eq i32 %6, %conv
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %conv11 = trunc i32 %6 to i8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %arrayidx, align 1
  %conv14 = trunc i32 %1 to i8
  %11 = ptrtoint ptr %fan_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fan_ctrl, align 4
  %conv15 = trunc i32 %12 to i8
  call fastcc void @aspeed_set_pwm_port_fan_ctrl(ptr noundef %3, i8 noundef zeroext %conv14, i8 noundef zeroext %conv15)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fan_ctrl) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @fan_dev_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.aspeed_pwm_tacho_data, ptr %1, i32 0, i32 4, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !141
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 40, i32 noundef 0) #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %conv.i = and i32 %1, 255
  %shl.i = shl nuw i32 1, %conv.i
  %call2.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 40, i32 noundef %shl.i) #10
  %arrayidx.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 13, i32 %conv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %idxprom4.i = zext i8 %10 to i32
  %arrayidx5.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 11, i32 %idxprom4.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %clk_freq.i.i = getelementptr inbounds %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %clk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_freq.i.i, align 4
  %idxprom.i.i = zext i8 %12 to i32
  %arrayidx.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 5, i32 %idxprom.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 6, i32 %idxprom.i.i
  %17 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2.i.i, align 1
  %arrayidx5.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 7, i32 %idxprom.i.i
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 0
  %mul.i.i = shl i8 %20, 1
  %narrow.i.i = select i1 %cmp.i.i, i8 1, i8 %mul.i.i
  %div_l.0.i.i = zext i8 %narrow.i.i to i32
  %conv.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %arrayidx11.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 10, i32 %idxprom.i.i
  %21 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx11.i.i, align 2
  %arrayidx13.i.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 8, i32 %idxprom.i.i
  %23 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %24 to i32
  %mul15.i.i = shl nuw nsw i32 %conv14.i.i, 1
  %shl16.i.i = shl i32 4, %mul15.i.i
  %conv18.i.i = zext i8 %16 to i32
  %conv19.i.i = and i32 %shl.i.i, 255
  %mul20.i.i = mul nuw nsw i32 %conv19.i.i, %conv18.i.i
  %conv23.i.i = and i32 %shl16.i.i, 252
  %conv25.i.i = zext i16 %22 to i32
  %mul22.i.i = mul nuw i32 %mul20.i.i, %conv25.i.i
  %mul24.i.i = mul i32 %mul22.i.i, %div_l.0.i.i
  %mul26.i.i = mul i32 %mul24.i.i, %conv23.i.i
  %div.i.i = udiv i32 %14, %mul26.i.i
  %div.i = udiv i32 1000, %div.i.i
  %call8.i = tail call i64 @ktime_get() #10
  %narrow.i = mul nuw nsw i32 %div.i, 1000000
  %mul.i97.i = zext i32 %narrow.i to i64
  %add.i.i = add i64 %call8.i, %mul.i97.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 546) #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %call18110.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 44, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18110.i)
  %tobool.not111.i = icmp eq i32 %call18110.i, 0
  br i1 %tobool.not111.i, label %lor.lhs.false.lr.ph.i, label %entry.aspeed_get_fan_tach_ch_rpm.exit_crit_edge

entry.aspeed_get_fan_tach_ch_rpm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_get_fan_tach_ch_rpm.exit

lor.lhs.false.lr.ph.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %div.i.i)
  %tobool22.not.i = icmp ugt i32 %div.i.i, 1000
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then32.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.lr.ph.i
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool19.not.i = icmp sgt i32 %28, -1
  br i1 %tobool19.not.i, label %if.end21.i, label %lor.lhs.false.i.if.end42.i_crit_edge

lor.lhs.false.i.if.end42.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.end21.i:                                       ; preds = %lor.lhs.false.i
  br i1 %tobool22.not.i, label %if.end21.i.if.then32.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.then32.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %call23.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call23.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call23.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.if.then32.i_crit_edge

land.lhs.true.i.if.then32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.then32.i:                                      ; preds = %land.lhs.true.i.if.then32.i_crit_edge, %if.end21.i.if.then32.i_crit_edge
  call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #10
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 44, ptr noundef nonnull %val.i) #10
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %if.then32.i.lor.lhs.false.i_crit_edge, label %if.then32.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge

if.then32.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_get_fan_tach_ch_rpm.exit

if.then32.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %call29.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 44, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool34.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool34.not.i, label %lor.rhs.i, label %for.end.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge

for.end.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aspeed_get_fan_tach_ch_rpm.exit

lor.rhs.i:                                        ; preds = %for.end.i
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool36.i = icmp slt i32 %.pr.i, 0
  br i1 %tobool36.i, label %lor.rhs.i.if.end42.i_crit_edge, label %aspeed_get_fan_tach_ch_rpm.exit.thread

lor.rhs.i.if.end42.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

aspeed_get_fan_tach_ch_rpm.exit.thread:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup

if.end42.i:                                       ; preds = %lor.rhs.i.if.end42.i_crit_edge, %lor.lhs.false.i.if.end42.i_crit_edge
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %and43.i = and i32 %35, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %cmp58.i = icmp eq i32 %and43.i, 0
  br i1 %cmp58.i, label %aspeed_get_fan_tach_ch_rpm.exit.thread12, label %if.end61.i

aspeed_get_fan_tach_ch_rpm.exit.thread12:         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %if.end

if.end61.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %clk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clk_freq.i.i, align 4
  %arrayidx48.i = getelementptr %struct.aspeed_pwm_tacho_data, ptr %3, i32 0, i32 9, i32 %idxprom.i.i
  %38 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx48.i, align 1
  %40 = lshr i8 %39, 1
  %.lobit.i = and i8 %40, 1
  %conv54.i = zext i8 %.lobit.i to i32
  %shl55.i = shl nuw nsw i32 4, %conv54.i
  %41 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx13.i.i, align 1
  %conv46.i = zext i8 %42 to i32
  %mul56.i = shl nuw nsw i32 %conv46.i, 1
  %shl57.i = shl i32 %shl55.i, %mul56.i
  %mul62.i = mul i32 %37, 60
  %mul63.i = shl nuw nsw i32 %and43.i, 1
  %mul64.i = mul i32 %mul63.i, %shl57.i
  %div65.i = udiv i32 %mul62.i, %mul64.i
  br label %aspeed_get_fan_tach_ch_rpm.exit

aspeed_get_fan_tach_ch_rpm.exit:                  ; preds = %if.end61.i, %for.end.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge, %if.then32.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge, %entry.aspeed_get_fan_tach_ch_rpm.exit_crit_edge
  %retval.0.i = phi i32 [ %div65.i, %if.end61.i ], [ %call18110.i, %entry.aspeed_get_fan_tach_ch_rpm.exit_crit_edge ], [ %call29.i, %for.end.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge ], [ %call18.i, %if.then32.i.aspeed_get_fan_tach_ch_rpm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %aspeed_get_fan_tach_ch_rpm.exit.cleanup_crit_edge, label %aspeed_get_fan_tach_ch_rpm.exit.if.end_crit_edge

aspeed_get_fan_tach_ch_rpm.exit.if.end_crit_edge: ; preds = %aspeed_get_fan_tach_ch_rpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

aspeed_get_fan_tach_ch_rpm.exit.cleanup_crit_edge: ; preds = %aspeed_get_fan_tach_ch_rpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %aspeed_get_fan_tach_ch_rpm.exit.if.end_crit_edge, %aspeed_get_fan_tach_ch_rpm.exit.thread12
  %retval.0.i15 = phi i32 [ 0, %aspeed_get_fan_tach_ch_rpm.exit.thread12 ], [ %retval.0.i, %aspeed_get_fan_tach_ch_rpm.exit.if.end_crit_edge ]
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i15)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %aspeed_get_fan_tach_ch_rpm.exit.cleanup_crit_edge, %aspeed_get_fan_tach_ch_rpm.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ %retval.0.i, %aspeed_get_fan_tach_ch_rpm.exit.cleanup_crit_edge ], [ -110, %aspeed_get_fan_tach_ch_rpm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !82, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_aspeed_pwm_tacho__170_968_aspeed_pwm_tacho_driver_init6, !1, !"__initcall__kmod_aspeed_pwm_tacho__170_968_aspeed_pwm_tacho_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 968, i32 1}
!2 = !{ptr @__exitcall_aspeed_pwm_tacho_driver_exit, !1, !"__exitcall_aspeed_pwm_tacho_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 970, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 971, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 972, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 963, i32 11}
!12 = !{ptr @aspeed_pwm_tacho_driver, !13, !"aspeed_pwm_tacho_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 960, i32 31}
!14 = !{ptr @aspeed_pwm_tacho_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 907, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 914, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aspeed_pwm_tacho_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @aspeed_pwm_tacho_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @aspeed_pwm_tacho_regmap_config, !26, !"aspeed_pwm_tacho_regmap_config", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 364, i32 35}
!27 = distinct !{null, !28, !"type_params", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 211, i32 33}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 851, i32 36}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 858, i32 42}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 867, i32 44}
!35 = !{ptr @pwm_port_params, !36, !"pwm_port_params", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 255, i32 37}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 825, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @aspeed_create_pwm_cooling._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @aspeed_create_pwm_cooling._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 828, i32 42}
!44 = !{ptr @aspeed_pwm_cool_ops, !45, !"aspeed_pwm_cool_ops", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 797, i32 48}
!46 = !{ptr @pwm_dev_group, !47, !"pwm_dev_group", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 662, i32 37}
!48 = !{ptr @pwm_dev_attrs, !49, !"pwm_dev_attrs", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 650, i32 26}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 642, i32 8}
!52 = !{ptr @sensor_dev_attr_pwm1, !51, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 602, i32 22}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 643, i32 8}
!57 = !{ptr @sensor_dev_attr_pwm2, !56, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 644, i32 8}
!60 = !{ptr @sensor_dev_attr_pwm3, !59, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 645, i32 8}
!63 = !{ptr @sensor_dev_attr_pwm4, !62, !"sensor_dev_attr_pwm4", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 646, i32 8}
!66 = !{ptr @sensor_dev_attr_pwm5, !65, !"sensor_dev_attr_pwm5", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 647, i32 8}
!69 = !{ptr @sensor_dev_attr_pwm6, !68, !"sensor_dev_attr_pwm6", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 648, i32 8}
!72 = !{ptr @sensor_dev_attr_pwm7, !71, !"sensor_dev_attr_pwm7", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 649, i32 8}
!75 = !{ptr @sensor_dev_attr_pwm8, !74, !"sensor_dev_attr_pwm8", i1 false, i1 false}
!76 = !{ptr @fan_dev_group, !77, !"fan_dev_group", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 703, i32 37}
!78 = !{ptr @fan_dev_attrs, !79, !"fan_dev_attrs", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 683, i32 26}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 667, i32 8}
!82 = !{ptr @sensor_dev_attr_fan1_input, !81, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 617, i32 22}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 668, i32 8}
!87 = !{ptr @sensor_dev_attr_fan2_input, !86, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 669, i32 8}
!90 = !{ptr @sensor_dev_attr_fan3_input, !89, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 670, i32 8}
!93 = !{ptr @sensor_dev_attr_fan4_input, !92, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 671, i32 8}
!96 = !{ptr @sensor_dev_attr_fan5_input, !95, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 672, i32 8}
!99 = !{ptr @sensor_dev_attr_fan6_input, !98, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 673, i32 8}
!102 = !{ptr @sensor_dev_attr_fan7_input, !101, !"sensor_dev_attr_fan7_input", i1 false, i1 false}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 674, i32 8}
!105 = !{ptr @sensor_dev_attr_fan8_input, !104, !"sensor_dev_attr_fan8_input", i1 false, i1 false}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 675, i32 8}
!108 = !{ptr @sensor_dev_attr_fan9_input, !107, !"sensor_dev_attr_fan9_input", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 676, i32 8}
!111 = !{ptr @sensor_dev_attr_fan10_input, !110, !"sensor_dev_attr_fan10_input", i1 false, i1 false}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 677, i32 8}
!114 = !{ptr @sensor_dev_attr_fan11_input, !113, !"sensor_dev_attr_fan11_input", i1 false, i1 false}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 678, i32 8}
!117 = !{ptr @sensor_dev_attr_fan12_input, !116, !"sensor_dev_attr_fan12_input", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 679, i32 8}
!120 = !{ptr @sensor_dev_attr_fan13_input, !119, !"sensor_dev_attr_fan13_input", i1 false, i1 false}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 680, i32 8}
!123 = !{ptr @sensor_dev_attr_fan14_input, !122, !"sensor_dev_attr_fan14_input", i1 false, i1 false}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 681, i32 8}
!126 = !{ptr @sensor_dev_attr_fan15_input, !125, !"sensor_dev_attr_fan15_input", i1 false, i1 false}
!127 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 682, i32 8}
!129 = !{ptr @sensor_dev_attr_fan16_input, !128, !"sensor_dev_attr_fan16_input", i1 false, i1 false}
!130 = !{ptr @of_pwm_tacho_match_table, !131, !"of_pwm_tacho_match_table", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/aspeed-pwm-tacho.c", i32 953, i32 34}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
!142 = !{i64 4882343}
!143 = !{i64 2152751629}
!144 = !{i64 2152751003}
!145 = !{i64 4881925}
!146 = !{i8 0, i8 2}
