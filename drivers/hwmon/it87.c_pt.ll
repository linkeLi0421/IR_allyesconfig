; ModuleID = '/llk/IR_all_yes/drivers/hwmon/it87.c_pt.bc'
source_filename = "../drivers/hwmon/it87.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.it87_devices = type { ptr, ptr, i32, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.it87_sio_data = type { i32, i32, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8 }
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
%struct.it87_data = type { [7 x ptr], i32, i32, i32, i8, i8, i16, ptr, %struct.mutex, i8, i32, i16, i16, i16, [13 x [3 x i8]], i8, i8, [6 x [2 x i16]], i8, [6 x [4 x i8]], i8, i8, [3 x i8], i8, i8, i8, i32, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x [4 x i8]], [6 x [5 x i8]] }

@__param_str_force_id = internal constant [14 x i8] c"it87.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype183 = internal constant [30 x i8] c"it87.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id184 = internal constant [51 x i8] c"it87.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@it87_pdev = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@it87_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @it87_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it87_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author224 = internal constant [60 x i8] c"it87.author=Chris Gauthron, Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [68 x i8] c"it87.description=IT8705F/IT871xF/IT872xF hardware monitoring driver\00", section ".modinfo", align 1
@__param_str_update_vbat = internal constant [17 x i8] c"it87.update_vbat\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@update_vbat = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_update_vbat = internal constant %struct.kernel_param { ptr @__param_str_update_vbat, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @update_vbat } }, section "__param", align 4
@__UNIQUE_ID_update_vbattype226 = internal constant [31 x i8] c"it87.parmtype=update_vbat:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_update_vbat227 = internal constant [67 x i8] c"it87.parm=update_vbat:Update vbat if set else return powerup value\00", section ".modinfo", align 1
@__param_str_fix_pwm_polarity = internal constant [22 x i8] c"it87.fix_pwm_polarity\00", align 1
@fix_pwm_polarity = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_fix_pwm_polarity = internal constant %struct.kernel_param { ptr @__param_str_fix_pwm_polarity, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @fix_pwm_polarity } }, section "__param", align 4
@__UNIQUE_ID_fix_pwm_polaritytype228 = internal constant [36 x i8] c"it87.parmtype=fix_pwm_polarity:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fix_pwm_polarity229 = internal constant [73 x i8] c"it87.parm=fix_pwm_polarity:Force PWM polarity to active high (DANGEROUS)\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [29 x i8] c"it87.file=drivers/hwmon/it87\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [17 x i8] c"it87.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_it87__232_3368_sm_it87_init6 = internal global ptr @sm_it87_init, section ".initcall6.init", align 4
@__exitcall_sm_it87_exit = internal global ptr @sm_it87_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"it87\00", [27 x i8] zeroinitializer }, align 32
@it87_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @it87_resume, ptr null, ptr @it87_resume, ptr null, ptr @it87_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@it87_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3048, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"it87_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/it87.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@it87_probe._entry_ptr = internal global ptr @it87_probe._entry, section ".printk_index", align 4
@it87_devices = internal constant { [20 x %struct.it87_devices], [64 x i8] } { [20 x %struct.it87_devices] [%struct.it87_devices { ptr @.str, ptr @.str.11, i32 4, i8 0, i8 0 }, %struct.it87_devices { ptr @.str.12, ptr @.str.11, i32 516, i8 0, i8 0 }, %struct.it87_devices { ptr @.str.13, ptr @.str.11, i32 66456, i8 0, i8 0 }, %struct.it87_devices { ptr @.str.14, ptr @.str.11, i32 66520, i8 0, i8 4 }, %struct.it87_devices { ptr @.str.15, ptr @.str.11, i32 66520, i8 0, i8 4 }, %struct.it87_devices { ptr @.str.16, ptr @.str.11, i32 67067, i8 5, i8 2 }, %struct.it87_devices { ptr @.str.17, ptr @.str.11, i32 66875, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.18, ptr @.str.11, i32 5242, i8 7, i8 2 }, %struct.it87_devices { ptr @.str.19, ptr @.str.20, i32 66619, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.21, ptr @.str.20, i32 66619, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.22, ptr @.str.11, i32 65752, i8 0, i8 4 }, %struct.it87_devices { ptr @.str.23, ptr @.str.11, i32 65752, i8 0, i8 4 }, %struct.it87_devices { ptr @.str.24, ptr @.str.25, i32 65752, i8 0, i8 4 }, %struct.it87_devices { ptr @.str.26, ptr @.str.20, i32 66619, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.27, ptr @.str.20, i32 66619, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.28, ptr @.str.20, i32 5242, i8 7, i8 2 }, %struct.it87_devices { ptr @.str.29, ptr @.str.20, i32 74811, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.30, ptr @.str.20, i32 494651, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.31, ptr @.str.20, i32 353595, i8 7, i8 0 }, %struct.it87_devices { ptr @.str.32, ptr @.str.20, i32 494651, i8 7, i8 0 }], [64 x i8] zeroinitializer }, align 32
@it87_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@it87_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 3098, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Detected broken BIOS defaults, disabling PWM interface\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@it87_probe._entry_ptr.10 = internal global ptr @it87_probe._entry.7, section ".printk_index", align 4
@it87_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @it87_is_visible, ptr null, ptr @it87_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@it87_group_in = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @it87_in_is_visible, ptr null, ptr @it87_attributes_in, ptr null }, [44 x i8] zeroinitializer }, align 32
@it87_group_temp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @it87_temp_is_visible, ptr null, ptr @it87_attributes_temp, ptr null }, [44 x i8] zeroinitializer }, align 32
@it87_group_fan = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @it87_fan_is_visible, ptr null, ptr @it87_attributes_fan, ptr null }, [44 x i8] zeroinitializer }, align 32
@it87_group_pwm = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @it87_pwm_is_visible, ptr null, ptr @it87_attributes_pwm, ptr null }, [44 x i8] zeroinitializer }, align 32
@it87_group_auto_pwm = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @it87_auto_pwm_is_visible, ptr null, ptr @it87_attributes_auto_pwm, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8712\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8716\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8718\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8720\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8721\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8728\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8732\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8771\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8772\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8781\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8782\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8783\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"E/F\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8786\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8790\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8792\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8603\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8620\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8622\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it8628\00", [25 x i8] zeroinitializer }, align 32
@IT87_REG_PWM = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\15\16\17\7F\A7\AF", [26 x i8] zeroinitializer }, align 32
@it87_check_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 3011, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Reconfiguring PWM to active high polarity\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"it87_check_pwm\00", [17 x i8] zeroinitializer }, align 32
@it87_check_pwm._entry_ptr = internal global ptr @it87_check_pwm._entry, section ".printk_index", align 4
@it87_check_pwm._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 3022, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PWM configuration is too broken to be fixed\0A\00", [51 x i8] zeroinitializer }, align 32
@it87_check_pwm._entry_ptr.37 = internal global ptr @it87_check_pwm._entry.35, section ".printk_index", align 4
@it87_check_pwm._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 3028, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PWM configuration looks sane, won't touch\0A\00", [53 x i8] zeroinitializer }, align 32
@it87_check_pwm._entry_ptr.40 = internal global ptr @it87_check_pwm._entry.38, section ".printk_index", align 4
@it87_check_tachometers_16bit_mode.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 2, i8 -45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"it87_check_tachometers_16bit_mode\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Setting fan1-3 to 16-bit mode\0A\00", [33 x i8] zeroinitializer }, align 32
@it87_attributes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_alarms, ptr @sensor_dev_attr_intrusion0_alarm, ptr @dev_attr_vrm, ptr @dev_attr_cpu0_vid, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_in9_label, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_intrusion0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr @clear_intrusion }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@IT87_REG_VIN = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" !\22#$%&'(/,-.", [19 x i8] zeroinitializer }, align 32
@IT87_REG_FAN_MIN = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\10\11\12\84\86N", [26 x i8] zeroinitializer }, align 32
@IT87_REG_FAN = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0D\0E\0F\80\82L", [26 x i8] zeroinitializer }, align 32
@IT87_REG_FANX = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\18\19\1A\81\83M", [26 x i8] zeroinitializer }, align 32
@IT87_REG_FANX_MIN = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1B\1C\1D\85\87O", [26 x i8] zeroinitializer }, align 32
@IT87_REG_TEMP_OFFSET = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VWY", [29 x i8] zeroinitializer }, align 32
@IT87_REG_PWM_DUTY = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cks{\A3\AB", [26 x i8] zeroinitializer }, align 32
@IT87_REG_AUTO_BASE = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"`hpx\A0\A8", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intrusion0_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_label\00", [22 x i8] zeroinitializer }, align 32
@show_label.labels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+5V\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5VSB\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Vbat\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVCC\00", [27 x i8] zeroinitializer }, align 32
@show_label.labels_it8721 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.52, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+3.3V\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3VSB\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_label\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_label\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_label\00", [22 x i8] zeroinitializer }, align 32
@it87_attributes_in = internal global { [46 x ptr], [40 x i8] } { [46 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_beep, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_beep, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_beep, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in12_input, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 12 }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_input\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_input\00", [21 x i8] zeroinitializer }, align 32
@it87_attributes_temp = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_beep, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_beep, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp6_input, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr @set_temp_type }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr @set_temp_type }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr @set_temp_type }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@set_temp_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1061, ptr @.str.116, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Sensor type 2 is deprecated, please use 4 instead\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_temp_type\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@set_temp_type._entry_ptr = internal global ptr @set_temp_type._entry, section ".printk_index", align 4
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@it87_attributes_fan = internal global { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan4_beep, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan5_beep, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan6_beep, ptr null], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @set_fan_div }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @set_fan_div }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @set_fan_div }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @set_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan4_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan5_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan6_beep\00", [22 x i8] zeroinitializer }, align 32
@it87_attributes_pwm = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm4_enable, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm4_freq, ptr @sensor_dev_attr_pwm4_auto_channels_temp, ptr @sensor_dev_attr_pwm5_enable, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_freq, ptr @sensor_dev_attr_pwm5_auto_channels_temp, ptr @sensor_dev_attr_pwm6_enable, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_freq, ptr @sensor_dev_attr_pwm6_auto_channels_temp, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @set_pwm_freq }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_temp_map, ptr @set_pwm_temp_map }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @set_pwm_freq }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_temp_map, ptr @set_pwm_temp_map }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_temp_map, ptr @set_pwm_temp_map }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_temp_map, ptr @set_pwm_temp_map }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_temp_map, ptr @set_pwm_temp_map }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_temp_map, ptr @set_pwm_temp_map }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@check_trip_points._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Inconsistent trip points, not switching to automatic mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_trip_points\00", [46 x i8] zeroinitializer }, align 32
@check_trip_points._entry_ptr = internal global ptr @check_trip_points._entry, section ".printk_index", align 4
@check_trip_points._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.3, i32 1290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adjust the trip points and try again\0A\00", [58 x i8] zeroinitializer }, align 32
@check_trip_points._entry_ptr.170 = internal global ptr @check_trip_points._entry.168, section ".printk_index", align 4
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@pwm_freq = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 48000000, i32 24000000, i32 12000000, i32 8000000, i32 6000000, i32 3000000, i32 1500000, i32 750000], [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm4_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm4_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm4_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm5_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm5_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm5_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm6_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm6_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm6_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@it87_attributes_auto_pwm = internal global { [52 x ptr], [48 x i8] } { [52 x ptr] [ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_start, ptr @sensor_dev_attr_pwm1_auto_slope, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point3_pwm, ptr @sensor_dev_attr_pwm2_auto_point4_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point3_temp, ptr @sensor_dev_attr_pwm2_auto_point4_temp, ptr @sensor_dev_attr_pwm2_auto_start, ptr @sensor_dev_attr_pwm2_auto_slope, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point3_pwm, ptr @sensor_dev_attr_pwm3_auto_point4_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point3_temp, ptr @sensor_dev_attr_pwm3_auto_point4_temp, ptr @sensor_dev_attr_pwm3_auto_start, ptr @sensor_dev_attr_pwm3_auto_slope, ptr @sensor_dev_attr_pwm4_auto_point1_temp, ptr @sensor_dev_attr_pwm4_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm4_auto_point2_temp, ptr @sensor_dev_attr_pwm4_auto_point3_temp, ptr @sensor_dev_attr_pwm4_auto_start, ptr @sensor_dev_attr_pwm4_auto_slope, ptr @sensor_dev_attr_pwm5_auto_point1_temp, ptr @sensor_dev_attr_pwm5_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm5_auto_point2_temp, ptr @sensor_dev_attr_pwm5_auto_point3_temp, ptr @sensor_dev_attr_pwm5_auto_start, ptr @sensor_dev_attr_pwm5_auto_slope, ptr @sensor_dev_attr_pwm6_auto_point1_temp, ptr @sensor_dev_attr_pwm6_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm6_auto_point2_temp, ptr @sensor_dev_attr_pwm6_auto_point3_temp, ptr @sensor_dev_attr_pwm6_auto_start, ptr @sensor_dev_attr_pwm6_auto_slope, ptr null], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.197, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.198, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_start = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_slope = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm_slope, ptr @set_auto_pwm_slope }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point3_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point4_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.208, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr null }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.209, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.210, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.211, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point4_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_start = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.214, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_slope = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.215, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm_slope, ptr @set_auto_pwm_slope }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.216, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point3_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point4_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr null }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.221, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.222, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.223, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point4_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.224, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_start = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.225, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_slope = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.226, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm_slope, ptr @set_auto_pwm_slope }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.227, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.228, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.229, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.230, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_start = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.231, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_slope = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.232, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm_slope, ptr @set_auto_pwm_slope }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.233, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.234, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.235, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_start = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_auto_slope = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.238, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm_slope, ptr @set_auto_pwm_slope }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.239, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.240, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.241, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.242, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_temp, ptr @set_auto_temp }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_start = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.243, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm, ptr @set_auto_pwm }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_auto_slope = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.244, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_auto_pwm_slope, ptr @set_auto_pwm_slope }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm1_auto_start\00", [16 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm1_auto_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm2_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm2_auto_start\00", [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm2_auto_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm3_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm3_auto_start\00", [16 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm3_auto_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm4_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm4_auto_start\00", [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm4_auto_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm5_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm5_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm5_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm5_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm5_auto_start\00", [16 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm5_auto_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm6_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm6_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm6_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm6_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm6_auto_start\00", [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm6_auto_slope\00", [16 x i8] zeroinitializer }, align 32
@it87_resume_sio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.3, i32 3195, ptr @.str.116, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to enter Super I/O to reroute in7 (%d)\00", [50 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"it87_resume_sio\00", [16 x i8] zeroinitializer }, align 32
@it87_resume_sio._entry_ptr = internal global ptr @it87_resume_sio._entry, section ".printk_index", align 4
@it87_resume_sio.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.246, ptr @.str.3, ptr @.str.247, i8 3, i8 33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.247 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Routing internal VCCH5V to in7 again\00", [59 x i8] zeroinitializer }, align 32
@__const.sm_it87_init.sioaddr = private unnamed_addr constant [2 x i32] [i32 46, i32 78], align 4
@it87_find.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.3, ptr @.str.249, i8 2, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.248 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"it87_find\00", [22 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported chip (DEVID=0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"it87: Unsupported chip (DEVID=0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@it87_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.248, ptr @.str.3, i32 2474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016it87: Device not activated, skipping\0A\00", [56 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr = internal global ptr @it87_find._entry, section ".printk_index", align 4
@it87_find._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.248, ptr @.str.3, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016it87: Base address not set, skipping\0A\00", [56 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.254 = internal global ptr @it87_find._entry.252, section ".printk_index", align 4
@it87_find._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.248, ptr @.str.3, i32 2489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016it87: Found IT%04x%s chip at 0x%x, revision %d\0A\00", [46 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.257 = internal global ptr @it87_find._entry.255, section ".printk_index", align 4
@it87_find._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.248, ptr @.str.3, i32 2575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015it87: Routing internal VCCH5V to in7.\0A\00", [55 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.260 = internal global ptr @it87_find._entry.258, section ".printk_index", align 4
@it87_find._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.248, ptr @.str.3, i32 2577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015it87: in7 routed to internal voltage divider, with external pin disabled.\0A\00", [51 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.263 = internal global ptr @it87_find._entry.261, section ".printk_index", align 4
@it87_find._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.248, ptr @.str.3, i32 2578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015it87: Please report if it displays a reasonable voltage.\0A\00", [36 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.266 = internal global ptr @it87_find._entry.264, section ".printk_index", align 4
@it87_find._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.248, ptr @.str.3, i32 2733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016it87: VID is disabled (pins used for GPIO)\0A\00", [50 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.269 = internal global ptr @it87_find._entry.267, section ".printk_index", align 4
@it87_find._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.248, ptr @.str.3, i32 2778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015it87: Routing internal VCCH5V to in7\0A\00", [56 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.272 = internal global ptr @it87_find._entry.270, section ".printk_index", align 4
@it87_find._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.248, ptr @.str.3, i32 2803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016it87: Beeping is supported\0A\00", [34 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.275 = internal global ptr @it87_find._entry.273, section ".printk_index", align 4
@it87_find._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.248, ptr @.str.3, i32 2819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016it87: Disabling pwm2 due to hardware constraints\0A\00", [44 x i8] zeroinitializer }, align 32
@it87_find._entry_ptr.280 = internal global ptr @it87_find._entry.278, section ".printk_index", align 4
@it87_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.3, i32 3273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013it87: Device resource addition failed (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"it87_device_add\00", [16 x i8] zeroinitializer }, align 32
@it87_device_add._entry_ptr = internal global ptr @it87_device_add._entry, section ".printk_index", align 4
@it87_device_add._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.282, ptr @.str.3, i32 3280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013it87: Platform data allocation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@it87_device_add._entry_ptr.285 = internal global ptr @it87_device_add._entry.283, section ".printk_index", align 4
@it87_device_add._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.282, ptr @.str.3, i32 3286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013it87: Device addition failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@it87_device_add._entry_ptr.288 = internal global ptr @it87_device_add._entry.286, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.289 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.290 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.291 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.293 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.294 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.295 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.296 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.297 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.298 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.299 = internal global [25 x i64] [i64 23, i64 16, i64 34307, i64 34336, i64 34338, i64 34339, i64 34344, i64 34565, i64 34578, i64 34582, i64 34584, i64 34592, i64 34593, i64 34598, i64 34600, i64 34610, i64 34611, i64 34673, i64 34674, i64 34689, i64 34690, i64 34691, i64 34694, i64 34704, i64 65535]
@__sancov_gen_cov_switch_values.300 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 12, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.301 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.302 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 68, i32 23 }
@___asan_gen_.305 = private unnamed_addr constant [10 x i8] c"it87_pdev\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 72, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant [12 x i8] c"it87_driver\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3243, i32 31 }
@___asan_gen_.311 = private unnamed_addr constant [12 x i8] c"update_vbat\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 176, i32 13 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"fix_pwm_polarity\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 179, i32 13 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3245, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant [16 x i8] c"it87_dev_pm_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3241, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3046, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"it87_devices\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 297, i32 34 }
@___asan_gen_.344 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3092, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3097, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [11 x i8] c"it87_group\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2153, i32 37 }
@___asan_gen_.362 = private unnamed_addr constant [14 x i8] c"it87_group_in\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2060, i32 37 }
@___asan_gen_.365 = private unnamed_addr constant [16 x i8] c"it87_group_temp\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2121, i32 37 }
@___asan_gen_.368 = private unnamed_addr constant [15 x i8] c"it87_group_fan\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2224, i32 37 }
@___asan_gen_.371 = private unnamed_addr constant [15 x i8] c"it87_group_pwm\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2285, i32 37 }
@___asan_gen_.374 = private unnamed_addr constant [20 x i8] c"it87_group_auto_pwm\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2381, i32 37 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 300, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 304, i32 11 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 310, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 316, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 324, i32 11 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 332, i32 11 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 342, i32 11 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 350, i32 11 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 359, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 360, i32 13 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 371, i32 11 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 383, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 390, i32 11 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 397, i32 11 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 398, i32 13 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 404, i32 11 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 412, i32 11 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 420, i32 11 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 429, i32 11 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 437, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 446, i32 11 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 455, i32 11 }
@___asan_gen_.443 = private unnamed_addr constant [13 x i8] c"IT87_REG_PWM\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 232, i32 17 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3010, i32 5 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3021, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3027, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2892, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [16 x i8] c"it87_attributes\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2141, i32 26 }
@___asan_gen_.476 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_intrusion0_alarm\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_label\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_label\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_label\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_label\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1807, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1805, i32 22 }
@___asan_gen_.506 = private unnamed_addr constant [13 x i8] c"IT87_REG_VIN\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 235, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant [17 x i8] c"IT87_REG_FAN_MIN\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 225, i32 17 }
@___asan_gen_.512 = private unnamed_addr constant [13 x i8] c"IT87_REG_FAN\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 224, i32 17 }
@___asan_gen_.515 = private unnamed_addr constant [14 x i8] c"IT87_REG_FANX\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 226, i32 17 }
@___asan_gen_.518 = private unnamed_addr constant [18 x i8] c"IT87_REG_FANX_MIN\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 227, i32 17 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c"IT87_REG_TEMP_OFFSET\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 228, i32 17 }
@___asan_gen_.524 = private unnamed_addr constant [18 x i8] c"IT87_REG_PWM_DUTY\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 233, i32 17 }
@___asan_gen_.527 = private unnamed_addr constant [19 x i8] c"IT87_REG_AUTO_BASE\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 252, i32 17 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1861, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1936, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1945, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1943, i32 22 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1975, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1950, i32 28 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1951, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1952, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1953, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1954, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant [14 x i8] c"labels_it8721\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1956, i32 28 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1957, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1958, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1973, i32 22 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1976, i32 8 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1977, i32 8 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1979, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant [19 x i8] c"it87_attributes_in\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2003, i32 26 }
@___asan_gen_.584 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_beep\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_beep\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_beep\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_beep\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_beep\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.668 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in5_beep\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.683 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in6_beep\00", align 1
@___asan_gen_.689 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in7_beep\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.713 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_input\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_input\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 888, i32 8 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 863, i32 22 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 889, i32 8 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 891, i32 8 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1844, i32 8 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1894, i32 8 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 894, i32 8 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 895, i32 8 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 897, i32 8 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1845, i32 8 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1896, i32 8 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 900, i32 8 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 901, i32 8 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 903, i32 8 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1846, i32 8 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1897, i32 8 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 906, i32 8 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 907, i32 8 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 909, i32 8 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1847, i32 8 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1898, i32 8 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 912, i32 8 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 913, i32 8 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 915, i32 8 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1848, i32 8 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1899, i32 8 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 918, i32 8 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 919, i32 8 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 921, i32 8 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1849, i32 8 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1900, i32 8 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 924, i32 8 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 925, i32 8 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 927, i32 8 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1850, i32 8 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1901, i32 8 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 930, i32 8 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 931, i32 8 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 933, i32 8 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1851, i32 8 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1902, i32 8 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 936, i32 8 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 937, i32 8 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 938, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 939, i32 8 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 940, i32 8 }
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c"it87_attributes_temp\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2090, i32 26 }
@___asan_gen_.860 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.863 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.866 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_type\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_offset\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_beep\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.884 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.893 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_beep\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_beep\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.929 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 994, i32 8 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 997, i32 8 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 995, i32 8 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1087, i32 8 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1030, i32 23 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1032, i32 23 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1034, i32 23 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1035, i32 22 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1060, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1858, i32 8 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 999, i32 8 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1910, i32 8 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1001, i32 8 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1004, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1002, i32 8 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1089, i32 8 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1859, i32 8 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1006, i32 8 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1912, i32 8 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1008, i32 8 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1011, i32 8 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1009, i32 8 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1091, i32 8 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1860, i32 8 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1013, i32 8 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1913, i32 8 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1015, i32 8 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1016, i32 8 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1017, i32 8 }
@___asan_gen_.1028 = private unnamed_addr constant [20 x i8] c"it87_attributes_fan\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2188, i32 26 }
@___asan_gen_.1031 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan1_beep\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan2_beep\00", align 1
@___asan_gen_.1058 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan3_beep\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_div\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan4_beep\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan5_beep\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_min\00", align 1
@___asan_gen_.1106 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan6_beep\00", align 1
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1624, i32 8 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1625, i32 8 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1852, i32 8 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1904, i32 8 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1627, i32 8 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1132, i32 22 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1630, i32 8 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1631, i32 8 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1853, i32 8 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1905, i32 8 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1633, i32 8 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1636, i32 8 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1637, i32 8 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1854, i32 8 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1906, i32 8 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1639, i32 8 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1642, i32 8 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1643, i32 8 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1855, i32 8 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1907, i32 8 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1646, i32 8 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1647, i32 8 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1856, i32 8 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1908, i32 8 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1650, i32 8 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1651, i32 8 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1857, i32 8 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1909, i32 8 }
@___asan_gen_.1196 = private unnamed_addr constant [20 x i8] c"it87_attributes_pwm\00", align 1
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2251, i32 26 }
@___asan_gen_.1199 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_freq\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm1_auto_channels_temp\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_freq\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm2_auto_channels_temp\00", align 1
@___asan_gen_.1223 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_freq\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm3_auto_channels_temp\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm4_enable\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm4\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm4_freq\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm4_auto_channels_temp\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm5_enable\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm5\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm5_freq\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm5_auto_channels_temp\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm6_enable\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm6\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm6_freq\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm6_auto_channels_temp\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1654, i32 8 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1288, i32 3 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1290, i32 3 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1656, i32 8 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1657, i32 8 }
@___asan_gen_.1295 = private unnamed_addr constant [9 x i8] c"pwm_freq\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 654, i32 27 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1659, i32 8 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1684, i32 8 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1686, i32 8 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1687, i32 8 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1688, i32 8 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1713, i32 8 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1715, i32 8 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1716, i32 8 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1717, i32 8 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1742, i32 8 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1744, i32 8 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1745, i32 8 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1746, i32 8 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1761, i32 8 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1763, i32 8 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1764, i32 8 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1765, i32 8 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1780, i32 8 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1782, i32 8 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1783, i32 8 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1784, i32 8 }
@___asan_gen_.1361 = private unnamed_addr constant [25 x i8] c"it87_attributes_auto_pwm\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2320, i32 26 }
@___asan_gen_.1364 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point3_pwm\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point4_pwm\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp\00", align 1
@___asan_gen_.1391 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm1_auto_start\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm1_auto_slope\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_pwm\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_pwm\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point3_pwm\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point4_pwm\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point1_temp\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm2_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1415 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point2_temp\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point3_temp\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point4_temp\00", align 1
@___asan_gen_.1424 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm2_auto_start\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm2_auto_slope\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_pwm\00", align 1
@___asan_gen_.1433 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_pwm\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point3_pwm\00", align 1
@___asan_gen_.1439 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point4_pwm\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point1_temp\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm3_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point2_temp\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point3_temp\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point4_temp\00", align 1
@___asan_gen_.1457 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm3_auto_start\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm3_auto_slope\00", align 1
@___asan_gen_.1463 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm4_auto_point1_temp\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm4_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1469 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm4_auto_point2_temp\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm4_auto_point3_temp\00", align 1
@___asan_gen_.1475 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm4_auto_start\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm4_auto_slope\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm5_auto_point1_temp\00", align 1
@___asan_gen_.1484 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm5_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1487 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm5_auto_point2_temp\00", align 1
@___asan_gen_.1490 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm5_auto_point3_temp\00", align 1
@___asan_gen_.1493 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm5_auto_start\00", align 1
@___asan_gen_.1496 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm5_auto_slope\00", align 1
@___asan_gen_.1499 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm6_auto_point1_temp\00", align 1
@___asan_gen_.1502 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm6_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1505 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm6_auto_point2_temp\00", align 1
@___asan_gen_.1508 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm6_auto_point3_temp\00", align 1
@___asan_gen_.1511 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm6_auto_start\00", align 1
@___asan_gen_.1514 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm6_auto_slope\00", align 1
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1661, i32 8 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1663, i32 8 }
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1665, i32 8 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1667, i32 8 }
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1669, i32 8 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1671, i32 8 }
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1673, i32 8 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1675, i32 8 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1677, i32 8 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1679, i32 8 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1681, i32 8 }
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1690, i32 8 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1692, i32 8 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1694, i32 8 }
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1696, i32 8 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1698, i32 8 }
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1700, i32 8 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1702, i32 8 }
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1704, i32 8 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1706, i32 8 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1708, i32 8 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1710, i32 8 }
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1719, i32 8 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1721, i32 8 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1723, i32 8 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1725, i32 8 }
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1727, i32 8 }
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1729, i32 8 }
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1731, i32 8 }
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1733, i32 8 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1735, i32 8 }
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1737, i32 8 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1739, i32 8 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1748, i32 8 }
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1750, i32 8 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1752, i32 8 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1754, i32 8 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1756, i32 8 }
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1758, i32 8 }
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1767, i32 8 }
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1769, i32 8 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1771, i32 8 }
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1773, i32 8 }
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1775, i32 8 }
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1777, i32 8 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1786, i32 8 }
@___asan_gen_.1657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1788, i32 8 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1790, i32 8 }
@___asan_gen_.1663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1792, i32 8 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1794, i32 8 }
@___asan_gen_.1669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 1796, i32 8 }
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3193, i32 3 }
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3203, i32 3 }
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2468, i32 3 }
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2474, i32 3 }
@___asan_gen_.1702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2480, i32 3 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2487, i32 2 }
@___asan_gen_.1714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2575, i32 5 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2577, i32 4 }
@___asan_gen_.1726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2578, i32 4 }
@___asan_gen_.1732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2733, i32 5 }
@___asan_gen_.1738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2778, i32 4 }
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2803, i32 3 }
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 2819, i32 4 }
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3273, i32 3 }
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3280, i32 3 }
@___asan_gen_.1766 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1769 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1770 = private constant [24 x i8] c"../drivers/hwmon/it87.c\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1770, i32 3286, i32 3 }
@llvm.compiler.used = appending global [528 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_fix_pwm_polarity229, ptr @__UNIQUE_ID_fix_pwm_polaritytype228, ptr @__UNIQUE_ID_force_id184, ptr @__UNIQUE_ID_force_idtype183, ptr @__UNIQUE_ID_license231, ptr @__UNIQUE_ID_update_vbat227, ptr @__UNIQUE_ID_update_vbattype226, ptr @__exitcall_sm_it87_exit, ptr @__initcall__kmod_it87__232_3368_sm_it87_init6, ptr @__param_fix_pwm_polarity, ptr @__param_force_id, ptr @__param_update_vbat, ptr @check_trip_points._entry, ptr @check_trip_points._entry.168, ptr @check_trip_points._entry_ptr, ptr @check_trip_points._entry_ptr.170, ptr @it87_check_pwm._entry, ptr @it87_check_pwm._entry.35, ptr @it87_check_pwm._entry.38, ptr @it87_check_pwm._entry_ptr, ptr @it87_check_pwm._entry_ptr.37, ptr @it87_check_pwm._entry_ptr.40, ptr @it87_device_add._entry, ptr @it87_device_add._entry.283, ptr @it87_device_add._entry.286, ptr @it87_device_add._entry_ptr, ptr @it87_device_add._entry_ptr.285, ptr @it87_device_add._entry_ptr.288, ptr @it87_find._entry, ptr @it87_find._entry.252, ptr @it87_find._entry.255, ptr @it87_find._entry.258, ptr @it87_find._entry.261, ptr @it87_find._entry.264, ptr @it87_find._entry.267, ptr @it87_find._entry.270, ptr @it87_find._entry.273, ptr @it87_find._entry.278, ptr @it87_find._entry_ptr, ptr @it87_find._entry_ptr.254, ptr @it87_find._entry_ptr.257, ptr @it87_find._entry_ptr.260, ptr @it87_find._entry_ptr.263, ptr @it87_find._entry_ptr.266, ptr @it87_find._entry_ptr.269, ptr @it87_find._entry_ptr.272, ptr @it87_find._entry_ptr.275, ptr @it87_find._entry_ptr.280, ptr @it87_probe._entry, ptr @it87_probe._entry.7, ptr @it87_probe._entry_ptr, ptr @it87_probe._entry_ptr.10, ptr @it87_resume_sio._entry, ptr @it87_resume_sio._entry_ptr, ptr @set_temp_type._entry, ptr @set_temp_type._entry_ptr, ptr @sm_it87_exit, ptr @force_id, ptr @it87_pdev, ptr @it87_driver, ptr @update_vbat, ptr @fix_pwm_polarity, ptr @.str, ptr @it87_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @it87_devices, ptr @it87_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @it87_group, ptr @it87_group_in, ptr @it87_group_temp, ptr @it87_group_fan, ptr @it87_group_pwm, ptr @it87_group_auto_pwm, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @IT87_REG_PWM, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @it87_attributes, ptr @dev_attr_alarms, ptr @sensor_dev_attr_intrusion0_alarm, ptr @dev_attr_vrm, ptr @dev_attr_cpu0_vid, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_in9_label, ptr @.str.43, ptr @.str.44, ptr @IT87_REG_VIN, ptr @IT87_REG_FAN_MIN, ptr @IT87_REG_FAN, ptr @IT87_REG_FANX, ptr @IT87_REG_FANX_MIN, ptr @IT87_REG_TEMP_OFFSET, ptr @IT87_REG_PWM_DUTY, ptr @IT87_REG_AUTO_BASE, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @show_label.labels, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @show_label.labels_it8721, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @it87_attributes_in, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_beep, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_beep, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_beep, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in12_input, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @it87_attributes_temp, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_beep, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_beep, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp6_input, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @it87_attributes_fan, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan4_beep, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan5_beep, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan6_beep, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @it87_attributes_pwm, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm4_enable, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm4_freq, ptr @sensor_dev_attr_pwm4_auto_channels_temp, ptr @sensor_dev_attr_pwm5_enable, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_freq, ptr @sensor_dev_attr_pwm5_auto_channels_temp, ptr @sensor_dev_attr_pwm6_enable, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_freq, ptr @sensor_dev_attr_pwm6_auto_channels_temp, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @pwm_freq, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @it87_attributes_auto_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_start, ptr @sensor_dev_attr_pwm1_auto_slope, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point3_pwm, ptr @sensor_dev_attr_pwm2_auto_point4_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point3_temp, ptr @sensor_dev_attr_pwm2_auto_point4_temp, ptr @sensor_dev_attr_pwm2_auto_start, ptr @sensor_dev_attr_pwm2_auto_slope, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point3_pwm, ptr @sensor_dev_attr_pwm3_auto_point4_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point3_temp, ptr @sensor_dev_attr_pwm3_auto_point4_temp, ptr @sensor_dev_attr_pwm3_auto_start, ptr @sensor_dev_attr_pwm3_auto_slope, ptr @sensor_dev_attr_pwm4_auto_point1_temp, ptr @sensor_dev_attr_pwm4_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm4_auto_point2_temp, ptr @sensor_dev_attr_pwm4_auto_point3_temp, ptr @sensor_dev_attr_pwm4_auto_start, ptr @sensor_dev_attr_pwm4_auto_slope, ptr @sensor_dev_attr_pwm5_auto_point1_temp, ptr @sensor_dev_attr_pwm5_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm5_auto_point2_temp, ptr @sensor_dev_attr_pwm5_auto_point3_temp, ptr @sensor_dev_attr_pwm5_auto_start, ptr @sensor_dev_attr_pwm5_auto_slope, ptr @sensor_dev_attr_pwm6_auto_point1_temp, ptr @sensor_dev_attr_pwm6_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm6_auto_point2_temp, ptr @sensor_dev_attr_pwm6_auto_point3_temp, ptr @sensor_dev_attr_pwm6_auto_start, ptr @sensor_dev_attr_pwm6_auto_slope, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.279, ptr @.str.281, ptr @.str.282, ptr @.str.284, ptr @.str.287], section "llvm.metadata"
@0 = internal global [490 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_pdev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_vbat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fix_pwm_polarity to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_devices to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_group_in to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_group_temp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_group_fan to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_group_pwm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_group_auto_pwm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_PWM to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_check_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_check_pwm._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_check_pwm._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_attributes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_intrusion0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_VIN to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_FAN_MIN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_FAN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_FANX to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_FANX_MIN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_TEMP_OFFSET to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_PWM_DUTY to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IT87_REG_AUTO_BASE to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_label.labels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_label.labels_it8721 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_attributes_in to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_attributes_temp to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_temp_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_attributes_fan to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_attributes_pwm to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_trip_points._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_trip_points._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_attributes_auto_pwm to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_slope to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_slope to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_slope to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_slope to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_auto_slope to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_auto_slope to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_resume_sio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_find._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_device_add._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it87_device_add._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_it87_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @it87_pdev, i32 0, i32 1), align 4
  tail call void @platform_device_unregister(ptr noundef %0) #11
  %1 = load ptr, ptr @it87_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @it87_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_it87_init() #0 section ".init.text" align 64 {
entry:
  %sio_data = alloca %struct.it87_sio_data, align 4
  %isa_address = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sio_data) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isa_address) #11
  %0 = ptrtoint ptr %isa_address to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %isa_address, align 2, !annotation !831
  %1 = getelementptr inbounds [2 x i16], ptr %isa_address, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !831
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @it87_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %type = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %cmp = phi i1 [ true, %for.cond.preheader ], [ false, %for.inc.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.inc.for.body_crit_edge ]
  %found.0.off056 = phi i1 [ false, %for.cond.preheader ], [ %found.1.off0, %for.inc.for.body_crit_edge ]
  %3 = call ptr @memset(ptr %sio_data, i32 0, i32 20)
  %arrayidx = getelementptr [2 x i16], ptr %isa_address, i32 0, i32 %i.057
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %arrayidx, align 2
  %arrayidx1 = getelementptr [2 x i32], ptr @__const.sm_it87_init.sioaddr, i32 0, i32 %i.057
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %call3 = call fastcc i32 @it87_find(i32 noundef %6, ptr noundef %arrayidx, ptr noundef nonnull %sio_data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp6 = icmp eq i16 %8, 0
  br i1 %cmp6, label %lor.lhs.false.for.inc_crit_edge, label %if.end9

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %lor.lhs.false
  br i1 %cmp, label %if.end9.if.end18_crit_edge, label %land.lhs.true

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end9
  %9 = ptrtoint ptr %isa_address to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %isa_address, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp15 = icmp eq i16 %8, %10
  br i1 %cmp15, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %call20 = call fastcc i32 @it87_device_add(i32 noundef %i.057, i16 noundef zeroext %8, ptr noundef nonnull %sio_data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %exit_dev_unregister

if.end23:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off056, %for.body.for.inc_crit_edge ], [ %found.0.off056, %lor.lhs.false.for.inc_crit_edge ], [ true, %if.end23.for.inc_crit_edge ]
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %found.0.off0.lcssa = phi i1 [ %found.0.off056, %land.lhs.true.for.end_crit_edge ], [ %found.1.off0, %for.inc.for.end_crit_edge ]
  br i1 %found.0.off0.lcssa, label %for.end.cleanup_crit_edge, label %for.end.exit_unregister_crit_edge

for.end.exit_unregister_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unregister

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

exit_dev_unregister:                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @it87_pdev, align 4
  call void @platform_device_unregister(ptr noundef %13) #11
  br label %exit_unregister

exit_unregister:                                  ; preds = %exit_dev_unregister, %for.end.exit_unregister_crit_edge
  %err.0 = phi i32 [ %call20, %exit_dev_unregister ], [ -19, %for.end.exit_unregister_crit_edge ]
  call void @platform_driver_unregister(ptr noundef nonnull @it87_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_unregister, %for.end.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_unregister ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isa_address) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sio_data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it87_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #11
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %call4 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str) #11
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %sub = add i32 %5, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %sub) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 340, i32 noundef 3520) #11
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call2, align 4
  %conv = trunc i32 %7 to i16
  %addr = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %addr, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %sioaddr13 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %sioaddr13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sioaddr13, align 4
  %type = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %type14 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %type14, align 4
  %15 = load i32, ptr %type, align 4
  %features = getelementptr [20 x %struct.it87_devices], ptr @it87_devices, i32 0, i32 %15, i32 2
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %features16 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %features16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %features16, align 4
  %19 = load i32, ptr %type, align 4
  %peci_mask = getelementptr [20 x %struct.it87_devices], ptr @it87_devices, i32 0, i32 %19, i32 3
  %20 = ptrtoint ptr %peci_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %peci_mask, align 4
  %peci_mask19 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %peci_mask19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %peci_mask19, align 4
  %23 = load i32, ptr %type, align 4
  %old_peci_mask = getelementptr [20 x %struct.it87_devices], ptr @it87_devices, i32 0, i32 %23, i32 4
  %24 = ptrtoint ptr %old_peci_mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %old_peci_mask, align 1
  %old_peci_mask22 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %old_peci_mask22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %old_peci_mask22, align 1
  %27 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end11.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end11
  %revision = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp = icmp ugt i8 %29, 2
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %if.end11
  %revision31 = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %revision31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %revision31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %31)
  %cmp33 = icmp ugt i8 %31, 7
  br i1 %cmp33, label %sw.bb30.sw.epilog.sink.split_crit_edge, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb30.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb30.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink389 = phi i32 [ -141, %sw.bb.sw.epilog.sink.split_crit_edge ], [ -397, %sw.bb30.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 136, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 392, %sw.bb30.sw.epilog.sink.split_crit_edge ]
  %and37 = and i32 %17, %.sink389
  %or39 = or i32 %and37, %.sink
  %32 = ptrtoint ptr %features16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or39, ptr %features16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb30.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr, align 2
  %conv.i = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %35 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 0) #11, !srcloc !833
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr, align 2
  %conv2.i = zext i16 %37 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %38 = inttoptr i32 %add.i7.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %tobool43.not = icmp sgt i8 %39, -1
  br i1 %tobool43.not, label %lor.lhs.false, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr, align 2
  %conv.i371 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i372 = or i32 %conv.i371, -18874368
  %42 = inttoptr i32 %add.i.i372 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 88) #11, !srcloc !833
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr, align 2
  %conv2.i373 = zext i16 %44 to i32
  %add.i7.i374 = add nuw nsw i32 %conv2.i373, -18874367
  %45 = inttoptr i32 %add.i7.i374 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %46)
  %cmp45.not = icmp eq i8 %46, -112
  br i1 %cmp45.not, label %if.end48, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @it87_probe.__key) #11
  %call52 = tail call fastcc i32 @it87_check_pwm(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end57, label %if.end48.if.end58_crit_edge

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #15
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.end48.if.end58_crit_edge
  %48 = ptrtoint ptr %features16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %features16, align 4
  %and60 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end58
  %internal = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %internal, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool65.not = icmp eq i8 %52, 0
  br i1 %tobool65.not, label %if.then62.if.end70_crit_edge, label %if.then66

if.then62.if.end70_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %in_scaled = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %in_scaled to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %in_scaled, align 4
  %55 = or i16 %54, 8
  store i16 %55, ptr %in_scaled, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.then62.if.end70_crit_edge
  %56 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %internal, align 1
  %58 = and i8 %57, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool74.not = icmp eq i8 %58, 0
  br i1 %tobool74.not, label %if.end70.if.end80_crit_edge, label %if.then75

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %in_scaled76 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 11
  %59 = ptrtoint ptr %in_scaled76 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %in_scaled76, align 4
  %61 = or i16 %60, 128
  store i16 %61, ptr %in_scaled76, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end70.if.end80_crit_edge
  %62 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %internal, align 1
  %64 = and i8 %63, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool84.not = icmp eq i8 %64, 0
  br i1 %tobool84.not, label %if.end80.if.end90_crit_edge, label %if.then85

if.end80.if.end90_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %in_scaled86 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 11
  %65 = ptrtoint ptr %in_scaled86 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %in_scaled86, align 4
  %67 = or i16 %66, 256
  store i16 %67, ptr %in_scaled86, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end80.if.end90_crit_edge
  %68 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %internal, align 1
  %70 = and i8 %69, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool94.not = icmp eq i8 %70, 0
  br i1 %tobool94.not, label %if.end90.if.end134_crit_edge, label %if.end90.if.end134.sink.split_crit_edge

if.end90.if.end134.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134.sink.split

if.end90.if.end134_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.else:                                          ; preds = %if.end58
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type, align 4
  %.off = add i32 %72, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then112, label %if.else.if.end134_crit_edge

if.else.if.end134_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then112:                                       ; preds = %if.else
  %internal113 = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 5
  %73 = ptrtoint ptr %internal113 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %internal113, align 1
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool116.not = icmp eq i8 %75, 0
  br i1 %tobool116.not, label %if.then112.if.end122_crit_edge, label %if.then117

if.then112.if.end122_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then117:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %in_scaled118 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 11
  %76 = ptrtoint ptr %in_scaled118 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %in_scaled118, align 4
  %78 = or i16 %77, 8
  store i16 %78, ptr %in_scaled118, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then117, %if.then112.if.end122_crit_edge
  %79 = ptrtoint ptr %internal113 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %internal113, align 1
  %81 = and i8 %80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool126.not = icmp eq i8 %81, 0
  br i1 %tobool126.not, label %if.end122.if.end134_crit_edge, label %if.end122.if.end134.sink.split_crit_edge

if.end122.if.end134.sink.split_crit_edge:         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134.sink.split

if.end122.if.end134_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.end134.sink.split:                             ; preds = %if.end122.if.end134.sink.split_crit_edge, %if.end90.if.end134.sink.split_crit_edge
  %.sink392 = phi i16 [ 512, %if.end90.if.end134.sink.split_crit_edge ], [ 128, %if.end122.if.end134.sink.split_crit_edge ]
  %in_scaled96 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 11
  %82 = ptrtoint ptr %in_scaled96 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %in_scaled96, align 4
  %84 = or i16 %83, %.sink392
  store i16 %84, ptr %in_scaled96, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end134.sink.split, %if.end122.if.end134_crit_edge, %if.else.if.end134_crit_edge, %if.end90.if.end134_crit_edge
  %has_temp = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 18
  %85 = ptrtoint ptr %has_temp to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 7, ptr %has_temp, align 4
  %skip_temp = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 11
  %86 = ptrtoint ptr %skip_temp to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %skip_temp, align 1
  %88 = and i8 %87, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool137.not = icmp eq i8 %88, 0
  br i1 %tobool137.not, label %if.end134.if.end151_crit_edge, label %if.then138

if.end134.if.end151_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then138:                                       ; preds = %if.end134
  %89 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %90)
  %cmp140 = icmp eq i32 %90, 11
  br i1 %cmp140, label %land.lhs.true, label %if.then138.if.end151_crit_edge

if.then138.if.end151_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

land.lhs.true:                                    ; preds = %if.then138
  %91 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr, align 2
  %conv.i377 = zext i16 %92 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i378 = or i32 %conv.i377, -18874368
  %93 = inttoptr i32 %add.i.i378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 85) #11, !srcloc !833
  %94 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %addr, align 2
  %conv2.i379 = zext i16 %95 to i32
  %add.i7.i380 = add nuw nsw i32 %conv2.i379, -18874367
  %96 = inttoptr i32 %add.i7.i380 to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %tobool144.not = icmp sgt i8 %97, -1
  br i1 %tobool144.not, label %if.then145, label %land.lhs.true.if.end151_crit_edge

land.lhs.true.if.end151_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then145:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %has_temp, align 4
  %100 = and i8 %99, -5
  store i8 %100, ptr %has_temp, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %land.lhs.true.if.end151_crit_edge, %if.then138.if.end151_crit_edge, %if.end134.if.end151_crit_edge
  %internal152 = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 5
  %101 = ptrtoint ptr %internal152 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %internal152, align 1
  %conv153 = zext i8 %102 to i16
  %in_internal = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 12
  %103 = ptrtoint ptr %in_internal to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv153, ptr %in_internal, align 2
  %need_in7_reroute = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 6
  %104 = ptrtoint ptr %need_in7_reroute to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %need_in7_reroute, align 4, !range !836
  %need_in7_reroute155 = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 15
  %106 = ptrtoint ptr %need_in7_reroute155 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %need_in7_reroute155, align 1
  %skip_in = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 7
  %107 = ptrtoint ptr %skip_in to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %skip_in, align 2
  %109 = and i16 %108, 1023
  %110 = xor i16 %109, 1023
  %has_in = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 13
  %111 = ptrtoint ptr %has_in to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %has_in, align 4
  %112 = ptrtoint ptr %features16 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %features16, align 4
  %and160 = and i32 %113, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end151.if.end228_crit_edge, label %if.then162

if.end151.if.end228_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then162:                                       ; preds = %if.end151
  %114 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr, align 2
  %conv.i383 = zext i16 %115 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i384 = or i32 %conv.i383, -18874368
  %116 = inttoptr i32 %add.i.i384 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 119) #11, !srcloc !833
  %117 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %addr, align 2
  %conv2.i385 = zext i16 %118 to i32
  %add.i7.i386 = add nuw nsw i32 %conv2.i385, -18874367
  %119 = inttoptr i32 %add.i7.i386 to ptr
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %119) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i387 = zext i8 %120 to i32
  %and166 = and i32 %conv4.i387, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and166)
  %cmp167 = icmp ugt i32 %and166, 1
  br i1 %cmp167, label %if.then169, label %if.then162.if.end174_crit_edge

if.then162.if.end174_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then169:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %has_temp, align 4
  %123 = or i8 %122, 8
  store i8 %123, ptr %has_temp, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.then162.if.end174_crit_edge
  %124 = lshr i32 %conv4.i387, 2
  %and176 = and i32 %124, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and176)
  %cmp177 = icmp ugt i32 %and176, 1
  br i1 %cmp177, label %if.then179, label %if.end174.if.end184_crit_edge

if.end174.if.end184_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

if.then179:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %has_temp, align 4
  %127 = or i8 %126, 16
  store i8 %127, ptr %has_temp, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %if.end174.if.end184_crit_edge
  %conv165 = lshr i32 %conv4.i387, 4
  %and187 = and i32 %conv165, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and187)
  %cmp188 = icmp ugt i32 %and187, 1
  br i1 %cmp188, label %if.then190, label %if.end184.if.end195_crit_edge

if.end184.if.end195_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then190:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %has_temp, align 4
  %130 = or i8 %129, 32
  store i8 %130, ptr %has_temp, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then190, %if.end184.if.end195_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and166)
  %cmp198 = icmp eq i32 %and166, 1
  br i1 %cmp198, label %if.then200, label %if.end195.if.end205_crit_edge

if.end195.if.end205_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end205

if.then200:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %has_in to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %has_in, align 4
  %133 = or i16 %132, 1024
  store i16 %133, ptr %has_in, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then200, %if.end195.if.end205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and176)
  %cmp209 = icmp eq i32 %and176, 1
  br i1 %cmp209, label %if.then211, label %if.end205.if.end216_crit_edge

if.end205.if.end216_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216

if.then211:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %has_in to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %has_in, align 4
  %136 = or i16 %135, 2048
  store i16 %136, ptr %has_in, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then211, %if.end205.if.end216_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and187)
  %cmp220 = icmp eq i32 %and187, 1
  br i1 %cmp220, label %if.then222, label %if.end216.if.end228_crit_edge

if.end216.if.end228_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then222:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %has_in to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %has_in, align 4
  %139 = or i16 %138, 4096
  store i16 %139, ptr %has_in, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then222, %if.end216.if.end228_crit_edge, %if.end151.if.end228_crit_edge
  %beep_pin = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 4
  %140 = ptrtoint ptr %beep_pin to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %beep_pin, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool229 = icmp ne i8 %141, 0
  %has_beep = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 27
  %frombool231 = zext i1 %tobool229 to i8
  %142 = ptrtoint ptr %has_beep to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %frombool231, ptr %has_beep, align 4
  %143 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %platform_data.i, align 8
  %145 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 34, i32 0
  %147 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 33, i32 0
  %148 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 127, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 35, i32 0, i32 3
  %149 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 127, ptr %arrayidx4.i, align 1
  %arrayidx.1.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 34, i32 1
  %150 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 33, i32 1
  %151 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 127, ptr %arrayidx2.1.i, align 1
  %arrayidx4.1.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 35, i32 1, i32 3
  %152 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 127, ptr %arrayidx4.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 34, i32 2
  %153 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 2, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 33, i32 2
  %154 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 127, ptr %arrayidx2.2.i, align 1
  %arrayidx4.2.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 35, i32 2, i32 3
  %155 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 127, ptr %arrayidx4.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 34, i32 3
  %156 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 3, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 33, i32 3
  %157 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 127, ptr %arrayidx2.3.i, align 1
  %arrayidx4.3.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 35, i32 3, i32 3
  %158 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 127, ptr %arrayidx4.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 34, i32 4
  %159 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 4, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 33, i32 4
  %160 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 127, ptr %arrayidx2.4.i, align 1
  %arrayidx4.4.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 35, i32 4, i32 3
  %161 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 127, ptr %arrayidx4.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 34, i32 5
  %162 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 5, ptr %arrayidx.5.i, align 1
  %arrayidx2.5.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 33, i32 5
  %163 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 127, ptr %arrayidx2.5.i, align 1
  %arrayidx4.5.i = getelementptr %struct.it87_data, ptr %146, i32 0, i32 35, i32 5, i32 3
  %164 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 127, ptr %arrayidx4.5.i, align 1
  tail call fastcc void @it87_check_limit_regs(ptr noundef %146) #11
  %addr.i.i.i = getelementptr inbounds %struct.it87_data, ptr %146, i32 0, i32 6
  %165 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %addr.i.i.i, align 2
  %conv.i.i.i = zext i16 %166 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i.i.i = or i32 %conv.i.i.i, -18874368
  %167 = inttoptr i32 %add.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 80) #11, !srcloc !833
  %168 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i.i.i = zext i16 %169 to i32
  %add.i7.i.i.i = add nuw nsw i32 %conv2.i.i.i, -18874367
  %170 = inttoptr i32 %add.i7.i.i.i to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %cmp.i.i = icmp eq i8 %171, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end228.it87_check_voltage_monitors_reset.exit.i_crit_edge

if.end228.it87_check_voltage_monitors_reset.exit.i_crit_edge: ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  br label %it87_check_voltage_monitors_reset.exit.i

if.then.i.i:                                      ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %addr.i.i.i, align 2
  %conv.i3.i.i = zext i16 %173 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i4.i.i = or i32 %conv.i3.i.i, -18874368
  %174 = inttoptr i32 %add.i.i4.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 80) #11, !srcloc !833
  %175 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i5.i.i = zext i16 %176 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i.i.i = add nuw nsw i32 %conv2.i5.i.i, -18874367
  %177 = inttoptr i32 %add.i6.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 -1) #11, !srcloc !833
  br label %it87_check_voltage_monitors_reset.exit.i

it87_check_voltage_monitors_reset.exit.i:         ; preds = %if.then.i.i, %if.end228.it87_check_voltage_monitors_reset.exit.i_crit_edge
  tail call fastcc void @it87_check_tachometers_reset(ptr noundef %pdev) #11
  %178 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %addr.i.i.i, align 2
  %conv.i.i = zext i16 %179 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i.i = or i32 %conv.i.i, -18874368
  %180 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 19) #11, !srcloc !833
  %181 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i.i = zext i16 %182 to i32
  %add.i7.i.i = add nuw nsw i32 %conv2.i.i, -18874367
  %183 = inttoptr i32 %add.i7.i.i to ptr
  %184 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %183) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %fan_main_ctrl.i = getelementptr inbounds %struct.it87_data, ptr %146, i32 0, i32 29
  %185 = ptrtoint ptr %fan_main_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %fan_main_ctrl.i, align 2
  %186 = lshr i8 %184, 4
  %conv9.i = and i8 %186, 7
  %has_fan.i = getelementptr inbounds %struct.it87_data, ptr %146, i32 0, i32 16
  %187 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv9.i, ptr %has_fan.i, align 2
  tail call fastcc void @it87_check_tachometers_16bit_mode(ptr noundef %pdev) #11
  %features.i = getelementptr inbounds %struct.it87_data, ptr %146, i32 0, i32 3
  %188 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %features.i, align 4
  %and10.i = and i32 %189, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %it87_check_voltage_monitors_reset.exit.i.if.end37.i_crit_edge, label %if.then.i

it87_check_voltage_monitors_reset.exit.i.if.end37.i_crit_edge: ; preds = %it87_check_voltage_monitors_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then.i:                                        ; preds = %it87_check_voltage_monitors_reset.exit.i
  %190 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %addr.i.i.i, align 2
  %conv.i98.i = zext i16 %191 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i99.i = or i32 %conv.i98.i, -18874368
  %192 = inttoptr i32 %add.i.i99.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 12) #11, !srcloc !833
  %193 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i100.i = zext i16 %194 to i32
  %add.i7.i101.i = add nuw nsw i32 %conv2.i100.i, -18874367
  %195 = inttoptr i32 %add.i7.i101.i to ptr
  %196 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %195) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i102.i = zext i8 %196 to i32
  %and12.i = and i32 %conv4.i102.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then14.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %has_fan.i, align 2
  %199 = or i8 %198, 8
  store i8 %199, ptr %has_fan.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %if.then.i.if.end.i_crit_edge
  %and18.i = and i32 %conv4.i102.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then20.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %200 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %has_fan.i, align 2
  %202 = or i8 %201, 16
  store i8 %202, ptr %has_fan.i, align 2
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.end.i.if.end25.i_crit_edge
  %203 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %features.i, align 4
  %and27.i = and i32 %204, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %and29.i = and i32 %conv4.i102.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %or.cond.i = select i1 %tobool28.not.i, i1 true, i1 %tobool30.not.i
  br i1 %or.cond.i, label %if.end25.i.if.end37.i_crit_edge, label %if.then31.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %205 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %has_fan.i, align 2
  %207 = or i8 %206, 32
  store i8 %207, ptr %has_fan.i, align 2
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then31.i, %if.end25.i.if.end37.i_crit_edge, %it87_check_voltage_monitors_reset.exit.i.if.end37.i_crit_edge
  %skip_fan.i = getelementptr inbounds %struct.it87_sio_data, ptr %144, i32 0, i32 9
  %208 = ptrtoint ptr %skip_fan.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %skip_fan.i, align 1
  %neg.i = xor i8 %209, -1
  %210 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %has_fan.i, align 2
  %and41.i = and i8 %211, %neg.i
  store i8 %and41.i, ptr %has_fan.i, align 2
  %212 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %features.i, align 4
  %and44.i = and i32 %213, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end37.i.it87_init_device.exit_crit_edge, label %if.then46.i

if.end37.i.it87_init_device.exit_crit_edge:       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %it87_init_device.exit

if.then46.i:                                      ; preds = %if.end37.i
  %214 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %addr.i.i.i, align 2
  %conv.i104.i = zext i16 %215 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i105.i = or i32 %conv.i104.i, -18874368
  %216 = inttoptr i32 %add.i.i105.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 11) #11, !srcloc !833
  %217 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i106.i = zext i16 %218 to i32
  %add.i7.i107.i = add nuw nsw i32 %conv2.i106.i, -18874367
  %219 = inttoptr i32 %add.i7.i107.i to ptr
  %220 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %219) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i108.i = zext i8 %220 to i32
  %and48.i = and i32 %conv4.i108.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and48.i)
  %cmp49.i = icmp eq i32 %and48.i, 192
  br i1 %cmp49.i, label %if.then51.i, label %if.then46.i.if.end55.i_crit_edge

if.then46.i.if.end55.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm.i = getelementptr inbounds %struct.it87_sio_data, ptr %144, i32 0, i32 10
  %221 = ptrtoint ptr %skip_pwm.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %skip_pwm.i, align 2
  %223 = or i8 %222, 16
  store i8 %223, ptr %skip_pwm.i, align 2
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then51.i, %if.then46.i.if.end55.i_crit_edge
  %and56.i = and i32 %conv4.i108.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end55.i.it87_init_device.exit_crit_edge

if.end55.i.it87_init_device.exit_crit_edge:       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %it87_init_device.exit

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm59.i = getelementptr inbounds %struct.it87_sio_data, ptr %144, i32 0, i32 10
  %224 = ptrtoint ptr %skip_pwm59.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %skip_pwm59.i, align 2
  %226 = or i8 %225, 32
  store i8 %226, ptr %skip_pwm59.i, align 2
  br label %it87_init_device.exit

it87_init_device.exit:                            ; preds = %if.then58.i, %if.end55.i.it87_init_device.exit_crit_edge, %if.end37.i.it87_init_device.exit_crit_edge
  %227 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %addr.i.i.i, align 2
  %conv.i.i110.i = zext i16 %228 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i.i111.i = or i32 %conv.i.i110.i, -18874368
  %229 = inttoptr i32 %add.i.i.i111.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 0) #11, !srcloc !833
  %230 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i.i112.i = zext i16 %231 to i32
  %add.i7.i.i113.i = add nuw nsw i32 %conv2.i.i112.i, -18874367
  %232 = inttoptr i32 %add.i7.i.i113.i to ptr
  %233 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %232) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %234 = and i8 %233, 62
  %235 = load i8, ptr @update_vbat, align 1, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i.i = icmp eq i8 %235, 0
  %cond.i.i = select i1 %tobool.not.i.i, i8 1, i8 65
  %or.i.i = or i8 %cond.i.i, %234
  %236 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %addr.i.i.i, align 2
  %conv.i3.i114.i = zext i16 %237 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i4.i115.i = or i32 %conv.i3.i114.i, -18874368
  %238 = inttoptr i32 %add.i.i4.i115.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 0) #11, !srcloc !833
  %239 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i5.i116.i = zext i16 %240 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i.i117.i = add nuw nsw i32 %conv2.i5.i116.i, -18874367
  %241 = inttoptr i32 %add.i6.i.i117.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 %or.i.i) #11, !srcloc !833
  %skip_vid = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 8
  %242 = ptrtoint ptr %skip_vid to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %skip_vid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool232.not = icmp eq i8 %243, 0
  br i1 %tobool232.not, label %if.then233, label %it87_init_device.exit.if.end235_crit_edge

it87_init_device.exit.if.end235_crit_edge:        ; preds = %it87_init_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

if.then233:                                       ; preds = %it87_init_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  %has_vid = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 23
  %244 = ptrtoint ptr %has_vid to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %has_vid, align 2
  %call234 = tail call zeroext i8 @vid_which_vrm() #11
  %vrm = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 25
  %245 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %call234, ptr %vrm, align 4
  %vid_value = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 3
  %246 = ptrtoint ptr %vid_value to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %vid_value, align 1
  %vid = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 24
  %248 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %vid, align 1
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %it87_init_device.exit.if.end235_crit_edge
  %249 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @it87_group, ptr %call.i, align 4
  %arrayidx238 = getelementptr [7 x ptr], ptr %call.i, i32 0, i32 1
  %250 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @it87_group_in, ptr %arrayidx238, align 4
  %arrayidx240 = getelementptr [7 x ptr], ptr %call.i, i32 0, i32 2
  %251 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @it87_group_temp, ptr %arrayidx240, align 4
  %arrayidx242 = getelementptr [7 x ptr], ptr %call.i, i32 0, i32 3
  %252 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @it87_group_fan, ptr %arrayidx242, align 4
  br i1 %tobool53.not, label %if.end235.if.end264_crit_edge, label %if.then244

if.end235.if.end264_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end264

if.then244:                                       ; preds = %if.end235
  %has_pwm = getelementptr inbounds %struct.it87_data, ptr %call.i, i32 0, i32 31
  %253 = ptrtoint ptr %has_pwm to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 63, ptr %has_pwm, align 4
  %skip_pwm = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 10
  %254 = ptrtoint ptr %skip_pwm to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %skip_pwm, align 2
  %256 = and i8 %255, 63
  %257 = xor i8 %256, 63
  store i8 %257, ptr %has_pwm, align 4
  %arrayidx252 = getelementptr [7 x ptr], ptr %call.i, i32 0, i32 4
  %258 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @it87_group_pwm, ptr %arrayidx252, align 4
  %259 = ptrtoint ptr %features16 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %features16, align 4
  %261 = and i32 %260, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %if.then244.if.end264_crit_edge, label %if.then260

if.then244.if.end264_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end264

if.then260:                                       ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx262 = getelementptr [7 x ptr], ptr %call.i, i32 0, i32 5
  %263 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @it87_group_auto_pwm, ptr %arrayidx262, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.then260, %if.then244.if.end264_crit_edge, %if.end235.if.end264_crit_edge
  %264 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %type, align 4
  %arrayidx266 = getelementptr [20 x %struct.it87_devices], ptr @it87_devices, i32 0, i32 %265
  %266 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx266, align 4
  %call268 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %267, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #11
  %cmp.i.i388 = icmp ugt ptr %call268, inttoptr (i32 -4096 to ptr)
  %268 = ptrtoint ptr %call268 to i32
  %spec.select.i = select i1 %cmp.i.i388, i32 %268, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end264, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %spec.select.i, %if.end264 ], [ -16, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it87_check_pwm(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 20) #11, !srcloc !833
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %6 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %7 = inttoptr i32 %add.i7.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %9 = and i8 %8, -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  %10 = load i8, ptr @fix_pwm_polarity, align 1, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cleanup42_crit_edge, label %if.then2

if.then.cleanup42_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

if.then2:                                         ; preds = %if.then
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv.i61 = zext i16 %12 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i62 = or i32 %conv.i61, -18874368
  %13 = inttoptr i32 %add.i.i62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 21) #11, !srcloc !833
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %conv2.i63 = zext i16 %15 to i32
  %add.i7.i64 = add nuw nsw i32 %conv2.i63, -18874367
  %16 = inttoptr i32 %add.i7.i64 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv.i61.1 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i62.1 = or i32 %conv.i61.1, -18874368
  %20 = inttoptr i32 %add.i.i62.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 22) #11, !srcloc !833
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i, align 2
  %conv2.i63.1 = zext i16 %22 to i32
  %add.i7.i64.1 = add nuw nsw i32 %conv2.i63.1, -18874367
  %23 = inttoptr i32 %add.i7.i64.1 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr.i, align 2
  %conv.i61.2 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i62.2 = or i32 %conv.i61.2, -18874368
  %27 = inttoptr i32 %add.i.i62.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 23) #11, !srcloc !833
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr.i, align 2
  %conv2.i63.2 = zext i16 %29 to i32
  %add.i7.i64.2 = add nuw nsw i32 %conv2.i63.2, -18874367
  %30 = inttoptr i32 %add.i7.i64.2 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %or58 = or i8 %24, %17
  %or1259 = or i8 %or58, %31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or1259)
  %tobool14.not = icmp sgt i8 %or1259, -1
  br i1 %tobool14.not, label %do.end, label %do.end32

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #15
  %conv17 = or i8 %8, -121
  tail call fastcc void @it87_write_value(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext %conv17)
  %32 = and i8 %17, 127
  %33 = xor i8 %32, 127
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 2
  %conv.i67 = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i68 = or i32 %conv.i67, -18874368
  %36 = inttoptr i32 %add.i.i68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 21) #11, !srcloc !833
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i, align 2
  %conv2.i69 = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i69, -18874367
  %39 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %33) #11, !srcloc !833
  %40 = and i8 %24, 127
  %41 = xor i8 %40, 127
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr.i, align 2
  %conv.i67.1 = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i68.1 = or i32 %conv.i67.1, -18874368
  %44 = inttoptr i32 %add.i.i68.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 22) #11, !srcloc !833
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i, align 2
  %conv2.i69.1 = zext i16 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i.1 = add nuw nsw i32 %conv2.i69.1, -18874367
  %47 = inttoptr i32 %add.i6.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %41) #11, !srcloc !833
  %48 = and i8 %31, 127
  %49 = xor i8 %48, 127
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr.i, align 2
  %conv.i67.2 = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i68.2 = or i32 %conv.i67.2, -18874368
  %52 = inttoptr i32 %add.i.i68.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 23) #11, !srcloc !833
  %53 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addr.i, align 2
  %conv2.i69.2 = zext i16 %54 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i.2 = add nuw nsw i32 %conv2.i69.2, -18874367
  %55 = inttoptr i32 %add.i6.i.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %49) #11, !srcloc !833
  br label %cleanup42

do.end32:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36) #15
  br label %cleanup42

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cleanup42_crit_edge, label %do.end39

if.else.cleanup42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

do.end39:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39) #15
  br label %cleanup42

cleanup42:                                        ; preds = %do.end39, %if.else.cleanup42_crit_edge, %do.end32, %do.end, %if.then.cleanup42_crit_edge
  %retval.1 = phi i32 [ 1, %do.end ], [ 1, %if.else.cleanup42_crit_edge ], [ 1, %do.end39 ], [ 0, %do.end32 ], [ 0, %if.then.cleanup42_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it87_write_value(ptr nocapture noundef readonly %data, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.it87_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  %conv = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i = or i32 %conv, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %reg) #11, !srcloc !833
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  %conv2 = zext i16 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6 = add nuw nsw i32 %conv2, -18874367
  %5 = inttoptr i32 %add.i6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %value) #11, !srcloc !833
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it87_check_limit_regs(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %data, i32 0, i32 6
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr.i, align 2
  %conv.i40 = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i41 = or i32 %conv.i40, -18874368
  %2 = inttoptr i32 %add.i.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 64) #11, !srcloc !833
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr.i, align 2
  %conv2.i42 = zext i16 %4 to i32
  %add.i7.i43 = add nuw nsw i32 %conv2.i42, -18874367
  %5 = inttoptr i32 %add.i7.i43 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp14 = icmp eq i8 %6, -1
  br i1 %cmp14, label %if.then16, label %for.cond6.preheader.for.inc21_crit_edge

for.cond6.preheader.for.inc21_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.050 to i8
  %7 = shl i8 %i.0.tr, 1
  %conv = add i8 %7, 49
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %10 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #11, !srcloc !833
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %12 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %13 = inttoptr i32 %add.i7.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp1 = icmp eq i8 %14, -1
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv.i36 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i37 = or i32 %conv.i36, -18874368
  %17 = inttoptr i32 %add.i.i37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv2.i38 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i38, -18874367
  %20 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #11, !srcloc !833
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond6.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then16:                                        ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i, align 2
  %conv.i46 = zext i16 %22 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i47 = or i32 %conv.i46, -18874368
  %23 = inttoptr i32 %add.i.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 64) #11, !srcloc !833
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i, align 2
  %conv2.i48 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i49 = add nuw nsw i32 %conv2.i48, -18874367
  %26 = inttoptr i32 %add.i6.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 127) #11, !srcloc !833
  br label %for.inc21

for.inc21:                                        ; preds = %if.then16, %for.cond6.preheader.for.inc21_crit_edge
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i, align 2
  %conv.i40.1 = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i41.1 = or i32 %conv.i40.1, -18874368
  %29 = inttoptr i32 %add.i.i41.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 66) #11, !srcloc !833
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i, align 2
  %conv2.i42.1 = zext i16 %31 to i32
  %add.i7.i43.1 = add nuw nsw i32 %conv2.i42.1, -18874367
  %32 = inttoptr i32 %add.i7.i43.1 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp14.1 = icmp eq i8 %33, -1
  br i1 %cmp14.1, label %if.then16.1, label %for.inc21.for.inc21.1_crit_edge

for.inc21.for.inc21.1_crit_edge:                  ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc21.1

if.then16.1:                                      ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 2
  %conv.i46.1 = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i47.1 = or i32 %conv.i46.1, -18874368
  %36 = inttoptr i32 %add.i.i47.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 66) #11, !srcloc !833
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i, align 2
  %conv2.i48.1 = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i49.1 = add nuw nsw i32 %conv2.i48.1, -18874367
  %39 = inttoptr i32 %add.i6.i49.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 127) #11, !srcloc !833
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %if.then16.1, %for.inc21.for.inc21.1_crit_edge
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.i, align 2
  %conv.i40.2 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i41.2 = or i32 %conv.i40.2, -18874368
  %42 = inttoptr i32 %add.i.i41.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 68) #11, !srcloc !833
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr.i, align 2
  %conv2.i42.2 = zext i16 %44 to i32
  %add.i7.i43.2 = add nuw nsw i32 %conv2.i42.2, -18874367
  %45 = inttoptr i32 %add.i7.i43.2 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp14.2 = icmp eq i8 %46, -1
  br i1 %cmp14.2, label %if.then16.2, label %for.inc21.1.for.inc21.2_crit_edge

for.inc21.1.for.inc21.2_crit_edge:                ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc21.2

if.then16.2:                                      ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr.i, align 2
  %conv.i46.2 = zext i16 %48 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i47.2 = or i32 %conv.i46.2, -18874368
  %49 = inttoptr i32 %add.i.i47.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 68) #11, !srcloc !833
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr.i, align 2
  %conv2.i48.2 = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i49.2 = add nuw nsw i32 %conv2.i48.2, -18874367
  %52 = inttoptr i32 %add.i6.i49.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 127) #11, !srcloc !833
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %if.then16.2, %for.inc21.1.for.inc21.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it87_check_tachometers_reset(ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %skip_fan = getelementptr inbounds %struct.it87_sio_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %skip_fan to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %skip_fan, align 1
  %shl = shl i8 %5, 4
  %neg = and i8 %shl, 112
  %and = xor i8 %neg, 112
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 19) #11, !srcloc !833
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %10 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %11 = inttoptr i32 %add.i7.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %and721 = and i8 %12, %and
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and721)
  %cmp = icmp eq i8 %and721, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = or i8 %12, %and
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %conv.i18 = zext i16 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i19 = or i32 %conv.i18, -18874368
  %15 = inttoptr i32 %add.i.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 19) #11, !srcloc !833
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv2.i20 = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i20, -18874367
  %18 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv11) #11, !srcloc !833
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it87_check_tachometers_16bit_mode(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %6 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 12) #11, !srcloc !833
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %8 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %9 = inttoptr i32 %add.i7.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %11 = and i8 %10, 7
  %12 = xor i8 %11, 7
  %has_fan = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_fan, align 2
  %and326 = and i8 %12, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and326)
  %tobool4.not = icmp eq i8 %and326, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it87_check_tachometers_16bit_mode.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@it87_check_tachometers_16bit_mode, %do.end)) #11
          to label %if.then11 [label %do.end], !srcloc !837

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it87_check_tachometers_16bit_mode.__UNIQUE_ID_ddebug222, ptr noundef %dev, ptr noundef nonnull @.str.42) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %conv13 = or i8 %10, 7
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv.i22 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i23 = or i32 %conv.i22, -18874368
  %17 = inttoptr i32 %add.i.i23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 12) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv2.i24 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i24, -18874367
  %20 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv13) #11, !srcloc !833
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @it87_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = and i32 %index, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_vid = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %has_vid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_vid, align 2, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp3 = icmp sgt i32 %index, 3
  br i1 %cmp3, label %land.lhs.true4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %in_internal = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %in_internal to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_internal, align 2
  %conv = zext i16 %6 to i32
  %sub = add nsw i32 %index, -4
  %shl = shl nuw i32 1, %sub
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end7_crit_edge

land.lhs.true4.if.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true4.if.end7_crit_edge, %if.end.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %8, %if.end7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true4.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @it87_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %last_updated = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add1 = add i32 %3, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end201_crit_edge

lor.lhs.false.if.end201_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = load i8, ptr @update_vbat, align 1, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %10 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #11, !srcloc !833
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %12 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %13 = inttoptr i32 %add.i7.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv = or i8 %14, 64
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv.i306 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i307 = or i32 %conv.i306, -18874368
  %17 = inttoptr i32 %add.i.i307 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv2.i308 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i308, -18874367
  %20 = inttoptr i32 %add.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #11, !srcloc !833
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %has_in = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 13
  %addr.i309 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  br label %for.body

for.cond34.preheader:                             ; preds = %for.inc
  %has_fan = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 16
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  br label %for.body37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0436 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %has_in to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %has_in, align 4
  %conv7 = zext i16 %22 to i32
  %shl = shl nuw nsw i32 1, %i.0436
  %and = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %arrayidx = getelementptr [13 x i8], ptr @IT87_REG_VIN, i32 0, i32 %i.0436
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr.i309, align 2
  %conv.i310 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i311 = or i32 %conv.i310, -18874368
  %27 = inttoptr i32 %add.i.i311 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %24) #11, !srcloc !833
  %28 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr.i309, align 2
  %conv2.i312 = zext i16 %29 to i32
  %add.i7.i313 = add nuw nsw i32 %conv2.i312, -18874367
  %30 = inttoptr i32 %add.i7.i313 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx13 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 14, i32 %i.0436
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0436)
  %cmp15 = icmp ugt i32 %i.0436, 7
  br i1 %cmp15, label %if.end10.for.inc_crit_edge, label %if.end18

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %i.0.tr = trunc i32 %i.0436 to i8
  %33 = shl nuw nsw i8 %i.0.tr, 1
  %conv20 = add nuw nsw i8 %33, 49
  %34 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i309, align 2
  %conv.i316 = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i317 = or i32 %conv.i316, -18874368
  %36 = inttoptr i32 %add.i.i317 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv20) #11, !srcloc !833
  %37 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i309, align 2
  %conv2.i318 = zext i16 %38 to i32
  %add.i7.i319 = add nuw nsw i32 %conv2.i318, -18874367
  %39 = inttoptr i32 %add.i7.i319 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx25 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 14, i32 %i.0436, i32 1
  %41 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx25, align 1
  %conv28 = add nuw nsw i8 %33, 48
  %42 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr.i309, align 2
  %conv.i322 = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i323 = or i32 %conv.i322, -18874368
  %44 = inttoptr i32 %add.i.i323 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv28) #11, !srcloc !833
  %45 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i309, align 2
  %conv2.i324 = zext i16 %46 to i32
  %add.i7.i325 = add nuw nsw i32 %conv2.i324, -18874367
  %47 = inttoptr i32 %add.i7.i325 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx33 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 14, i32 %i.0436, i32 2
  %49 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0436, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.cond34.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond80.preheader:                             ; preds = %for.inc77
  %has_temp = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 18
  br label %for.body83

for.body37:                                       ; preds = %for.inc77.for.body37_crit_edge, %for.cond34.preheader
  %i.1438 = phi i32 [ 0, %for.cond34.preheader ], [ %inc78, %for.inc77.for.body37_crit_edge ]
  %50 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_fan, align 2
  %conv38 = zext i8 %51 to i32
  %shl39 = shl nuw nsw i32 1, %i.1438
  %and40 = and i32 %shl39, %conv38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.body37.for.inc77_crit_edge, label %if.end43

for.body37.for.inc77_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77

if.end43:                                         ; preds = %for.body37
  %arrayidx44 = getelementptr [6 x i8], ptr @IT87_REG_FAN_MIN, i32 0, i32 %i.1438
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx44, align 1
  %54 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr.i309, align 2
  %conv.i328 = zext i16 %55 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i329 = or i32 %conv.i328, -18874368
  %56 = inttoptr i32 %add.i.i329 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %53) #11, !srcloc !833
  %57 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %addr.i309, align 2
  %conv2.i330 = zext i16 %58 to i32
  %add.i7.i331 = add nuw nsw i32 %conv2.i330, -18874367
  %59 = inttoptr i32 %add.i7.i331 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv46 = zext i8 %60 to i16
  %arrayidx47 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 17, i32 %i.1438
  %arrayidx48 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 17, i32 %i.1438, i32 1
  %61 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv46, ptr %arrayidx48, align 2
  %arrayidx49 = getelementptr [6 x i8], ptr @IT87_REG_FAN, i32 0, i32 %i.1438
  %62 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx49, align 1
  %64 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %addr.i309, align 2
  %conv.i334 = zext i16 %65 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i335 = or i32 %conv.i334, -18874368
  %66 = inttoptr i32 %add.i.i335 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %63) #11, !srcloc !833
  %67 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr.i309, align 2
  %conv2.i336 = zext i16 %68 to i32
  %add.i7.i337 = add nuw nsw i32 %conv2.i336, -18874367
  %69 = inttoptr i32 %add.i7.i337 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv51 = zext i8 %70 to i16
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv51, ptr %arrayidx47, align 4
  %72 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %features, align 4
  %and55 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end43.for.inc77_crit_edge, label %if.then57

if.end43.for.inc77_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx58 = getelementptr [6 x i8], ptr @IT87_REG_FANX, i32 0, i32 %i.1438
  %74 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx58, align 1
  %76 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %addr.i309, align 2
  %conv.i340 = zext i16 %77 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i341 = or i32 %conv.i340, -18874368
  %78 = inttoptr i32 %add.i.i341 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %75) #11, !srcloc !833
  %79 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %addr.i309, align 2
  %conv2.i342 = zext i16 %80 to i32
  %add.i7.i343 = add nuw nsw i32 %conv2.i342, -18874367
  %81 = inttoptr i32 %add.i7.i343 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %83 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx47, align 4
  %call59.tr = zext i8 %82 to i16
  %85 = shl nuw i16 %call59.tr, 8
  %conv66 = or i16 %85, %84
  store i16 %conv66, ptr %arrayidx47, align 4
  %arrayidx67 = getelementptr [6 x i8], ptr @IT87_REG_FANX_MIN, i32 0, i32 %i.1438
  %86 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx67, align 1
  %88 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr.i309, align 2
  %conv.i346 = zext i16 %89 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i347 = or i32 %conv.i346, -18874368
  %90 = inttoptr i32 %add.i.i347 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %87) #11, !srcloc !833
  %91 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr.i309, align 2
  %conv2.i348 = zext i16 %92 to i32
  %add.i7.i349 = add nuw nsw i32 %conv2.i348, -18874367
  %93 = inttoptr i32 %add.i7.i349 to ptr
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %93) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %95 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx48, align 2
  %call68.tr = zext i8 %94 to i16
  %97 = shl nuw i16 %call68.tr, 8
  %conv75 = or i16 %97, %96
  store i16 %conv75, ptr %arrayidx48, align 2
  br label %for.inc77

for.inc77:                                        ; preds = %if.then57, %if.end43.for.inc77_crit_edge, %for.body37.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %i.1438, 1
  %exitcond444.not = icmp eq i32 %inc78, 6
  br i1 %exitcond444.not, label %for.cond80.preheader, label %for.inc77.for.body37_crit_edge

for.inc77.for.body37_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body37

for.body83:                                       ; preds = %for.inc129.for.body83_crit_edge, %for.cond80.preheader
  %i.2440 = phi i32 [ 0, %for.cond80.preheader ], [ %inc130, %for.inc129.for.body83_crit_edge ]
  %98 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %has_temp, align 4
  %conv84 = zext i8 %99 to i32
  %shl85 = shl nuw nsw i32 1, %i.2440
  %and86 = and i32 %shl85, %conv84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %for.body83.for.inc129_crit_edge, label %if.end89

for.body83.for.inc129_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc129

if.end89:                                         ; preds = %for.body83
  %100 = trunc i32 %i.2440 to i8
  %conv91 = add i8 %100, 41
  %101 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %addr.i309, align 2
  %conv.i352 = zext i16 %102 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i353 = or i32 %conv.i352, -18874368
  %103 = inttoptr i32 %add.i.i353 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 %conv91) #11, !srcloc !833
  %104 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %addr.i309, align 2
  %conv2.i354 = zext i16 %105 to i32
  %add.i7.i355 = add nuw nsw i32 %conv2.i354, -18874367
  %106 = inttoptr i32 %add.i7.i355 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx94 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 19, i32 %i.2440
  %108 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx94, align 1
  %109 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %features, align 4
  %and97 = and i32 %110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp ne i32 %and97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.2440)
  %cmp99 = icmp ult i32 %i.2440, 3
  %or.cond = select i1 %tobool98.not, i1 %cmp99, i1 false
  br i1 %or.cond, label %if.end108.thread, label %if.end108

if.end108.thread:                                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx102 = getelementptr [3 x i8], ptr @IT87_REG_TEMP_OFFSET, i32 0, i32 %i.2440
  %111 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx102, align 1
  %113 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %addr.i309, align 2
  %conv.i358 = zext i16 %114 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i359 = or i32 %conv.i358, -18874368
  %115 = inttoptr i32 %add.i.i359 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 %112) #11, !srcloc !833
  %116 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %addr.i309, align 2
  %conv2.i360 = zext i16 %117 to i32
  %add.i7.i361 = add nuw nsw i32 %conv2.i360, -18874367
  %118 = inttoptr i32 %add.i7.i361 to ptr
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %118) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx107 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 19, i32 %i.2440, i32 3
  %120 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx107, align 1
  br label %if.end112

if.end108:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.2440)
  %cmp109 = icmp ugt i32 %i.2440, 2
  br i1 %cmp109, label %if.end108.for.inc129_crit_edge, label %if.end108.if.end112_crit_edge

if.end108.if.end112_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end108.for.inc129_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc129

if.end112:                                        ; preds = %if.end108.if.end112_crit_edge, %if.end108.thread
  %121 = shl i8 %100, 1
  %conv115 = add i8 %121, 65
  %122 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %addr.i309, align 2
  %conv.i364 = zext i16 %123 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i365 = or i32 %conv.i364, -18874368
  %124 = inttoptr i32 %add.i.i365 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %conv115) #11, !srcloc !833
  %125 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %addr.i309, align 2
  %conv2.i366 = zext i16 %126 to i32
  %add.i7.i367 = add nuw nsw i32 %conv2.i366, -18874367
  %127 = inttoptr i32 %add.i7.i367 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx120 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 19, i32 %i.2440, i32 1
  %129 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx120, align 1
  %conv123 = add i8 %121, 64
  %130 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %addr.i309, align 2
  %conv.i370 = zext i16 %131 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i371 = or i32 %conv.i370, -18874368
  %132 = inttoptr i32 %add.i.i371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %conv123) #11, !srcloc !833
  %133 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %addr.i309, align 2
  %conv2.i372 = zext i16 %134 to i32
  %add.i7.i373 = add nuw nsw i32 %conv2.i372, -18874367
  %135 = inttoptr i32 %add.i7.i373 to ptr
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %135) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx128 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 19, i32 %i.2440, i32 2
  %137 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx128, align 1
  br label %for.inc129

for.inc129:                                       ; preds = %if.end112, %if.end108.for.inc129_crit_edge, %for.body83.for.inc129_crit_edge
  %inc130 = add nuw nsw i32 %i.2440, 1
  %exitcond445.not = icmp eq i32 %inc130, 6
  br i1 %exitcond445.not, label %for.end131, label %for.inc129.for.body83_crit_edge

for.inc129.for.body83_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83

for.end131:                                       ; preds = %for.inc129
  %138 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %has_fan, align 2
  %140 = and i8 %139, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool135.not = icmp eq i8 %140, 0
  br i1 %tobool135.not, label %for.end131.if.end154_crit_edge, label %land.lhs.true136

for.end131.if.end154_crit_edge:                   ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

land.lhs.true136:                                 ; preds = %for.end131
  %141 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %features, align 4
  %and138 = and i32 %142, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.then140, label %land.lhs.true136.if.end154_crit_edge

land.lhs.true136.if.end154_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then140:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %addr.i309, align 2
  %conv.i376 = zext i16 %144 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i377 = or i32 %conv.i376, -18874368
  %145 = inttoptr i32 %add.i.i377 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 11) #11, !srcloc !833
  %146 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %addr.i309, align 2
  %conv2.i378 = zext i16 %147 to i32
  %add.i7.i379 = add nuw nsw i32 %conv2.i378, -18874367
  %148 = inttoptr i32 %add.i7.i379 to ptr
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %148) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv143 = and i8 %149, 7
  %fan_div = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 22
  %150 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv143, ptr %fan_div, align 1
  %151 = lshr i8 %149, 3
  %conv146 = and i8 %151, 7
  %arrayidx148 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 1
  %152 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv146, ptr %arrayidx148, align 1
  %153 = and i8 %149, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool150.not = icmp eq i8 %153, 0
  %conv151 = select i1 %tobool150.not, i8 1, i8 3
  %arrayidx153 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 2
  %154 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv151, ptr %arrayidx153, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then140, %land.lhs.true136.if.end154_crit_edge, %for.end131.if.end154_crit_edge
  %155 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %addr.i309, align 2
  %conv.i382 = zext i16 %156 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i383 = or i32 %conv.i382, -18874368
  %157 = inttoptr i32 %add.i.i383 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 1) #11, !srcloc !833
  %158 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %addr.i309, align 2
  %conv2.i384 = zext i16 %159 to i32
  %add.i7.i385 = add nuw nsw i32 %conv2.i384, -18874367
  %160 = inttoptr i32 %add.i7.i385 to ptr
  %161 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %160) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i386 = zext i8 %161 to i32
  %162 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %addr.i309, align 2
  %conv.i388 = zext i16 %163 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i389 = or i32 %conv.i388, -18874368
  %164 = inttoptr i32 %add.i.i389 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 2) #11, !srcloc !833
  %165 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %addr.i309, align 2
  %conv2.i390 = zext i16 %166 to i32
  %add.i7.i391 = add nuw nsw i32 %conv2.i390, -18874367
  %167 = inttoptr i32 %add.i7.i391 to ptr
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %167) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i392 = zext i8 %168 to i32
  %shl157 = shl nuw nsw i32 %conv4.i392, 8
  %or158 = or i32 %shl157, %conv4.i386
  %169 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %addr.i309, align 2
  %conv.i394 = zext i16 %170 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i395 = or i32 %conv.i394, -18874368
  %171 = inttoptr i32 %add.i.i395 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 3) #11, !srcloc !833
  %172 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %addr.i309, align 2
  %conv2.i396 = zext i16 %173 to i32
  %add.i7.i397 = add nuw nsw i32 %conv2.i396, -18874367
  %174 = inttoptr i32 %add.i7.i397 to ptr
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %174) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i398 = zext i8 %175 to i32
  %shl160 = shl nuw nsw i32 %conv4.i398, 16
  %or161 = or i32 %shl160, %or158
  %alarms = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 26
  %176 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or161, ptr %alarms, align 4
  %177 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %addr.i309, align 2
  %conv.i400 = zext i16 %178 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i401 = or i32 %conv.i400, -18874368
  %179 = inttoptr i32 %add.i.i401 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 92) #11, !srcloc !833
  %180 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %addr.i309, align 2
  %conv2.i402 = zext i16 %181 to i32
  %add.i7.i403 = add nuw nsw i32 %conv2.i402, -18874367
  %182 = inttoptr i32 %add.i7.i403 to ptr
  %183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %182) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %beeps = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 28
  %184 = ptrtoint ptr %beeps to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %beeps, align 1
  %185 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %addr.i309, align 2
  %conv.i406 = zext i16 %186 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i407 = or i32 %conv.i406, -18874368
  %187 = inttoptr i32 %add.i.i407 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 19) #11, !srcloc !833
  %188 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %addr.i309, align 2
  %conv2.i408 = zext i16 %189 to i32
  %add.i7.i409 = add nuw nsw i32 %conv2.i408, -18874367
  %190 = inttoptr i32 %add.i7.i409 to ptr
  %191 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %190) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %fan_main_ctrl = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 29
  %192 = ptrtoint ptr %fan_main_ctrl to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %fan_main_ctrl, align 2
  %193 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %addr.i309, align 2
  %conv.i412 = zext i16 %194 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i413 = or i32 %conv.i412, -18874368
  %195 = inttoptr i32 %add.i.i413 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 20) #11, !srcloc !833
  %196 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %addr.i309, align 2
  %conv2.i414 = zext i16 %197 to i32
  %add.i7.i415 = add nuw nsw i32 %conv2.i414, -18874367
  %198 = inttoptr i32 %add.i7.i415 to ptr
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %198) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %fan_ctl = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 30
  %200 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %fan_ctl, align 1
  %has_pwm = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 31
  %201 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %has_pwm, align 4
  %203 = and i8 %202, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool175.not = icmp eq i8 %203, 0
  br i1 %tobool175.not, label %if.end154.for.inc178_crit_edge, label %if.end177

if.end154.for.inc178_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc178

if.end177:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef 0)
  br label %for.inc178

for.inc178:                                       ; preds = %if.end177, %if.end154.for.inc178_crit_edge
  %204 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %has_pwm, align 4
  %206 = and i8 %205, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool175.not.1 = icmp eq i8 %206, 0
  br i1 %tobool175.not.1, label %for.inc178.for.inc178.1_crit_edge, label %if.end177.1

for.inc178.for.inc178.1_crit_edge:                ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc178.1

if.end177.1:                                      ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef 1)
  br label %for.inc178.1

for.inc178.1:                                     ; preds = %if.end177.1, %for.inc178.for.inc178.1_crit_edge
  %207 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %has_pwm, align 4
  %209 = and i8 %208, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool175.not.2 = icmp eq i8 %209, 0
  br i1 %tobool175.not.2, label %for.inc178.1.for.inc178.2_crit_edge, label %if.end177.2

for.inc178.1.for.inc178.2_crit_edge:              ; preds = %for.inc178.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc178.2

if.end177.2:                                      ; preds = %for.inc178.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef 2)
  br label %for.inc178.2

for.inc178.2:                                     ; preds = %if.end177.2, %for.inc178.1.for.inc178.2_crit_edge
  %210 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %has_pwm, align 4
  %212 = and i8 %211, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool175.not.3 = icmp eq i8 %212, 0
  br i1 %tobool175.not.3, label %for.inc178.2.for.inc178.3_crit_edge, label %if.end177.3

for.inc178.2.for.inc178.3_crit_edge:              ; preds = %for.inc178.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc178.3

if.end177.3:                                      ; preds = %for.inc178.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef 3)
  br label %for.inc178.3

for.inc178.3:                                     ; preds = %if.end177.3, %for.inc178.2.for.inc178.3_crit_edge
  %213 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %has_pwm, align 4
  %215 = and i8 %214, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool175.not.4 = icmp eq i8 %215, 0
  br i1 %tobool175.not.4, label %for.inc178.3.for.inc178.4_crit_edge, label %if.end177.4

for.inc178.3.for.inc178.4_crit_edge:              ; preds = %for.inc178.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc178.4

if.end177.4:                                      ; preds = %for.inc178.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef 4)
  br label %for.inc178.4

for.inc178.4:                                     ; preds = %if.end177.4, %for.inc178.3.for.inc178.4_crit_edge
  %216 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %has_pwm, align 4
  %218 = and i8 %217, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool175.not.5 = icmp eq i8 %218, 0
  br i1 %tobool175.not.5, label %for.inc178.4.for.inc178.5_crit_edge, label %if.end177.5

for.inc178.4.for.inc178.5_crit_edge:              ; preds = %for.inc178.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc178.5

if.end177.5:                                      ; preds = %for.inc178.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef 5)
  br label %for.inc178.5

for.inc178.5:                                     ; preds = %if.end177.5, %for.inc178.4.for.inc178.5_crit_edge
  %219 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %addr.i309, align 2
  %conv.i418 = zext i16 %220 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i419 = or i32 %conv.i418, -18874368
  %221 = inttoptr i32 %add.i.i419 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %221, i8 81) #11, !srcloc !833
  %222 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %addr.i309, align 2
  %conv2.i420 = zext i16 %223 to i32
  %add.i7.i421 = add nuw nsw i32 %conv2.i420, -18874367
  %224 = inttoptr i32 %add.i7.i421 to ptr
  %225 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %224) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %sensor = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 20
  %226 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %sensor, align 1
  %227 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %addr.i309, align 2
  %conv.i424 = zext i16 %228 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i425 = or i32 %conv.i424, -18874368
  %229 = inttoptr i32 %add.i.i425 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 85) #11, !srcloc !833
  %230 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %addr.i309, align 2
  %conv2.i426 = zext i16 %231 to i32
  %add.i7.i427 = add nuw nsw i32 %conv2.i426, -18874367
  %232 = inttoptr i32 %add.i7.i427 to ptr
  %233 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %232) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %extra = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 21
  %234 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %extra, align 2
  %type = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 2
  %235 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %type, align 4
  %.off = add i32 %236, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then191, label %for.inc178.5.if.end198_crit_edge

for.inc178.5.if.end198_crit_edge:                 ; preds = %for.inc178.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then191:                                       ; preds = %for.inc178.5
  call void @__sanitizer_cov_trace_pc() #13
  %237 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %addr.i309, align 2
  %conv.i430 = zext i16 %238 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i431 = or i32 %conv.i430, -18874368
  %239 = inttoptr i32 %add.i.i431 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %239, i8 10) #11, !srcloc !833
  %240 = ptrtoint ptr %addr.i309 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %addr.i309, align 2
  %conv2.i432 = zext i16 %241 to i32
  %add.i7.i433 = add nuw nsw i32 %conv2.i432, -18874367
  %242 = inttoptr i32 %add.i7.i433 to ptr
  %243 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %242) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %vid = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 24
  %conv197 = and i8 %243, 63
  %244 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv197, ptr %vid, align 1
  br label %if.end198

if.end198:                                        ; preds = %if.then191, %for.inc178.5.if.end198_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %245 = load volatile i32, ptr @jiffies, align 128
  %246 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %last_updated, align 4
  %valid200 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 9
  %247 = ptrtoint ptr %valid200 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 1, ptr %valid200, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.end198, %lor.lhs.false.if.end201_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it87_update_pwm_ctrl(ptr nocapture noundef %data, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x i8], ptr @IT87_REG_PWM, i32 0, i32 %nr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %1) #11, !srcloc !833
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %6 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %7 = inttoptr i32 %add.i7.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx1 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 32, i32 %nr
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx1, align 1
  %features = getelementptr inbounds %struct.it87_data, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = and i8 %8, 3
  %arrayidx7 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 34, i32 %nr
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr [6 x i8], ptr @IT87_REG_PWM_DUTY, i32 0, i32 %nr
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv.i172 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i173 = or i32 %conv.i172, -18874368
  %17 = inttoptr i32 %add.i.i173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv2.i174 = zext i16 %19 to i32
  %add.i7.i175 = add nuw nsw i32 %conv2.i174, -18874367
  %20 = inttoptr i32 %add.i7.i175 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx11 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 33, i32 %nr
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx11, align 1
  br label %if.end33

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool16.not = icmp sgt i8 %8, -1
  br i1 %tobool16.not, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv22 = and i8 %8, 3
  %arrayidx24 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 34, i32 %nr
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv22, ptr %arrayidx24, align 1
  br label %if.end33

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx32 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 33, i32 %nr
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %8, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.else25, %if.then17, %if.then
  %25 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features, align 4
  %and35 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else62, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx39 = getelementptr [6 x i8], ptr @IT87_REG_AUTO_BASE, i32 0, i32 %nr
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39, align 1
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i, align 2
  %conv.i178 = zext i16 %30 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i179 = or i32 %conv.i178, -18874368
  %31 = inttoptr i32 %add.i.i179 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #11, !srcloc !833
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.i, align 2
  %conv2.i180 = zext i16 %33 to i32
  %add.i7.i181 = add nuw nsw i32 %conv2.i180, -18874367
  %34 = inttoptr i32 %add.i7.i181 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx45 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 0
  %36 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx45, align 1
  %conv41.1 = add i8 %28, 1
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i, align 2
  %conv.i178.1 = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i179.1 = or i32 %conv.i178.1, -18874368
  %39 = inttoptr i32 %add.i.i179.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv41.1) #11, !srcloc !833
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.i, align 2
  %conv2.i180.1 = zext i16 %41 to i32
  %add.i7.i181.1 = add nuw nsw i32 %conv2.i180.1, -18874367
  %42 = inttoptr i32 %add.i7.i181.1 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx45.1 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 1
  %44 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx45.1, align 1
  %conv41.2 = add i8 %28, 2
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i, align 2
  %conv.i178.2 = zext i16 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i179.2 = or i32 %conv.i178.2, -18874368
  %47 = inttoptr i32 %add.i.i179.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv41.2) #11, !srcloc !833
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addr.i, align 2
  %conv2.i180.2 = zext i16 %49 to i32
  %add.i7.i181.2 = add nuw nsw i32 %conv2.i180.2, -18874367
  %50 = inttoptr i32 %add.i7.i181.2 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx45.2 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 2
  %52 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx45.2, align 1
  %conv41.3 = add i8 %28, 3
  %53 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addr.i, align 2
  %conv.i178.3 = zext i16 %54 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i179.3 = or i32 %conv.i178.3, -18874368
  %55 = inttoptr i32 %add.i.i179.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv41.3) #11, !srcloc !833
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr.i, align 2
  %conv2.i180.3 = zext i16 %57 to i32
  %add.i7.i181.3 = add nuw nsw i32 %conv2.i180.3, -18874367
  %58 = inttoptr i32 %add.i7.i181.3 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx45.3 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 3
  %60 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx45.3, align 1
  %conv41.4 = add i8 %28, 4
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr.i, align 2
  %conv.i178.4 = zext i16 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i179.4 = or i32 %conv.i178.4, -18874368
  %63 = inttoptr i32 %add.i.i179.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv41.4) #11, !srcloc !833
  %64 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %addr.i, align 2
  %conv2.i180.4 = zext i16 %65 to i32
  %add.i7.i181.4 = add nuw nsw i32 %conv2.i180.4, -18874367
  %66 = inttoptr i32 %add.i7.i181.4 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx45.4 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 4
  %68 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx45.4, align 1
  %conv54 = add i8 %28, 5
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %addr.i, align 2
  %conv.i184 = zext i16 %70 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i185 = or i32 %conv.i184, -18874368
  %71 = inttoptr i32 %add.i.i185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %conv54) #11, !srcloc !833
  %72 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %addr.i, align 2
  %conv2.i186 = zext i16 %73 to i32
  %add.i7.i187 = add nuw nsw i32 %conv2.i186, -18874367
  %74 = inttoptr i32 %add.i7.i187 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx58 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 35, i32 %nr, i32 0
  %76 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx58, align 1
  %conv54.1 = add i8 %28, 6
  %77 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %addr.i, align 2
  %conv.i184.1 = zext i16 %78 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i185.1 = or i32 %conv.i184.1, -18874368
  %79 = inttoptr i32 %add.i.i185.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv54.1) #11, !srcloc !833
  %80 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %addr.i, align 2
  %conv2.i186.1 = zext i16 %81 to i32
  %add.i7.i187.1 = add nuw nsw i32 %conv2.i186.1, -18874367
  %82 = inttoptr i32 %add.i7.i187.1 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx58.1 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 35, i32 %nr, i32 1
  %84 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx58.1, align 1
  %conv54.2 = add i8 %28, 7
  %85 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr.i, align 2
  %conv.i184.2 = zext i16 %86 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i185.2 = or i32 %conv.i184.2, -18874368
  %87 = inttoptr i32 %add.i.i185.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %conv54.2) #11, !srcloc !833
  %88 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr.i, align 2
  %conv2.i186.2 = zext i16 %89 to i32
  %add.i7.i187.2 = add nuw nsw i32 %conv2.i186.2, -18874367
  %90 = inttoptr i32 %add.i7.i187.2 to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx58.2 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 35, i32 %nr, i32 2
  %92 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx58.2, align 1
  br label %if.end113

if.else62:                                        ; preds = %if.end33
  %and64 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else62.if.end113_crit_edge, label %if.then66

if.else62.if.end113_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx68 = getelementptr [6 x i8], ptr @IT87_REG_AUTO_BASE, i32 0, i32 %nr
  %93 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx68, align 1
  %add70 = add i8 %94, 5
  %95 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %addr.i, align 2
  %conv.i190 = zext i16 %96 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i191 = or i32 %conv.i190, -18874368
  %97 = inttoptr i32 %add.i.i191 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %add70) #11, !srcloc !833
  %98 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %addr.i, align 2
  %conv2.i192 = zext i16 %99 to i32
  %add.i7.i193 = add nuw nsw i32 %conv2.i192, -18874367
  %100 = inttoptr i32 %add.i7.i193 to ptr
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx75 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr
  %102 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx75, align 1
  %103 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %addr.i, align 2
  %conv.i196 = zext i16 %104 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i197 = or i32 %conv.i196, -18874368
  %105 = inttoptr i32 %add.i.i197 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 %94) #11, !srcloc !833
  %106 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %addr.i, align 2
  %conv2.i198 = zext i16 %107 to i32
  %add.i7.i199 = add nuw nsw i32 %conv2.i198, -18874367
  %108 = inttoptr i32 %add.i7.i199 to ptr
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %108) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx90 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 1
  %110 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx90, align 1
  %conv84.1 = add i8 %94, 1
  %111 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %addr.i, align 2
  %conv.i196.1 = zext i16 %112 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i197.1 = or i32 %conv.i196.1, -18874368
  %113 = inttoptr i32 %add.i.i197.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 %conv84.1) #11, !srcloc !833
  %114 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr.i, align 2
  %conv2.i198.1 = zext i16 %115 to i32
  %add.i7.i199.1 = add nuw nsw i32 %conv2.i198.1, -18874367
  %116 = inttoptr i32 %add.i7.i199.1 to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx90.1 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 2
  %118 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx90.1, align 1
  %conv84.2 = add i8 %94, 2
  %119 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %addr.i, align 2
  %conv.i196.2 = zext i16 %120 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i197.2 = or i32 %conv.i196.2, -18874368
  %121 = inttoptr i32 %add.i.i197.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 %conv84.2) #11, !srcloc !833
  %122 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %addr.i, align 2
  %conv2.i198.2 = zext i16 %123 to i32
  %add.i7.i199.2 = add nuw nsw i32 %conv2.i198.2, -18874367
  %124 = inttoptr i32 %add.i7.i199.2 to ptr
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %124) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx90.2 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 36, i32 %nr, i32 3
  %126 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx90.2, align 1
  %add96 = add i8 %94, 3
  %127 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %addr.i, align 2
  %conv.i202 = zext i16 %128 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i203 = or i32 %conv.i202, -18874368
  %129 = inttoptr i32 %add.i.i203 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %add96) #11, !srcloc !833
  %130 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %addr.i, align 2
  %conv2.i204 = zext i16 %131 to i32
  %add.i7.i205 = add nuw nsw i32 %conv2.i204, -18874367
  %132 = inttoptr i32 %add.i7.i205 to ptr
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %132) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx101 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 35, i32 %nr
  %134 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx101, align 1
  %add105 = add i8 %94, 4
  %135 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %addr.i, align 2
  %conv.i208 = zext i16 %136 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i209 = or i32 %conv.i208, -18874368
  %137 = inttoptr i32 %add.i.i209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %add105) #11, !srcloc !833
  %138 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %addr.i, align 2
  %conv2.i210 = zext i16 %139 to i32
  %add.i7.i211 = add nuw nsw i32 %conv2.i210, -18874367
  %140 = inttoptr i32 %add.i7.i211 to ptr
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx111 = getelementptr %struct.it87_data, ptr %data, i32 0, i32 35, i32 %nr, i32 1
  %142 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx111, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then66, %if.else62.if.end113_crit_edge, %for.cond.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 26
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_intrusion(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not = icmp eq i32 %4, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %6 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #11, !srcloc !833
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %9 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %10 = inttoptr i32 %add.i7.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv = or i8 %11, 32
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i, align 2
  %conv.i18 = zext i16 %13 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i19 = or i32 %conv.i18, -18874368
  %14 = inttoptr i32 %add.i.i19 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #11, !srcloc !833
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv2.i20 = zext i16 %16 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i20, -18874367
  %17 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv) #11, !srcloc !833
  %valid = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 1
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #11
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_label(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %5, 4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %show_label.labels.show_label.labels_it8721 = select i1 %7, ptr @show_label.labels, ptr @show_label.labels_it8721
  %arrayidx = getelementptr [4 x ptr], ptr %show_label.labels.show_label.labels_it8721, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %entry.if.end10_crit_edge
  %label.0 = phi ptr [ @.str.50, %entry.if.end10_crit_edge ], [ %9, %if.else ]
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, ptr noundef %label.0)
  ret i32 %call11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @it87_in_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %index)
  %cmp = icmp sgt i32 %index, 39
  %add = add i32 %index, -32
  %spec.select = select i1 %cmp, i32 %add, i32 %div
  %has_in = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %has_in to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %has_in, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw i32 1, %spec.select
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %4 = mul i32 %div, 5
  %rem.decomposed = sub i32 %index, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem.decomposed)
  %cmp417 = icmp ne i32 %rem.decomposed, 4
  %5 = or i1 %cmp, %cmp417
  br i1 %5, label %if.end3.if.end8_crit_edge, label %land.lhs.true

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %has_beep = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %has_beep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_beep, align 4, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %9, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %nr2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr2, align 1
  %conv3 = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 14, i32 %conv3, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %features.i.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i32 160, i32 109
  %lsb.0.i.i = select i1 %tobool.not.i.i, i32 %..i.i, i32 120
  %in_scaled.i.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %in_scaled.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %in_scaled.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %10 = lshr i32 %conv.i.i, %conv3
  %11 = and i32 %10, 1
  %lsb.1.i.i = shl nuw nsw i32 %lsb.0.i.i, %11
  %mul.i = mul nuw nsw i32 %lsb.1.i.i, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i.not = icmp eq i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i.not, i32 -5, i32 5
  %cond.in.i = add nsw i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 10
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %cond.i)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index1, align 4
  %nr2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %mul.i = mul i32 %8, 10
  %features.i.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i32 160, i32 109
  %lsb.0.i.i = select i1 %tobool.not.i.i, i32 %..i.i, i32 120
  %in_scaled.i.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %in_scaled.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %in_scaled.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %13 = lshr i32 %conv.i.i, %conv3
  %14 = and i32 %13, 1
  %lsb.1.i.i = shl nuw nsw i32 %lsb.0.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %div343538.i = lshr i32 %lsb.1.i.i, 1
  %15 = sub nsw i32 0, %div343538.i
  %add.pn.p.i = select i1 %cmp.i, i32 %div343538.i, i32 %15
  %add.pn.i = add i32 %add.pn.p.i, %mul.i
  %cond.i = sdiv i32 %add.pn.i, %lsb.1.i.i
  %16 = call i32 @llvm.smax.i32(i32 %cond.i, i32 0) #11
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 255) #11
  %conv22.i = trunc i32 %17 to i8
  %arrayidx7 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 14, i32 %conv3, i32 %conv
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv22.i, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp8 = icmp eq i8 %3, 1
  %mul = shl i8 %5, 1
  %cond.v = select i1 %cmp8, i8 49, i8 48
  %cond = add i8 %mul, %cond.v
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %20 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %21 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %cond) #11, !srcloc !833
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %23 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %24 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv22.i) #11, !srcloc !833
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %beeps = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %beeps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beeps, align 1
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %8 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 92) #11, !srcloc !833
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %11 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %12 = inttoptr i32 %add.i7.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i = zext i8 %13 to i32
  %beeps = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 28
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %shl9 = shl nuw i32 1, %1
  %neg = xor i32 %shl9, -1
  %and = and i32 %conv4.i, %neg
  %or = or i32 %shl9, %conv4.i
  %storemerge.in = select i1 %tobool.not, i32 %and, i32 %or
  %storemerge = trunc i32 %storemerge.in to i8
  %16 = ptrtoint ptr %beeps to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge, ptr %beeps, align 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %conv.i27 = zext i16 %18 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i28 = or i32 %conv.i27, -18874368
  %19 = inttoptr i32 %add.i.i28 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 92) #11, !srcloc !833
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  %conv2.i29 = zext i16 %21 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i29, -18874367
  %22 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %storemerge) #11, !srcloc !833
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @it87_temp_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %index)
  %cmp = icmp sgt i32 %index, 20
  %add = add i32 %index, -18
  %spec.select = select i1 %cmp, i32 %add, i32 %div
  %has_temp = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_temp, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %spec.select
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %4 = mul i32 %div, 7
  %rem.decomposed = sub i32 %index, %4
  %spec.select25 = select i1 %cmp, i32 0, i32 %rem.decomposed
  %5 = zext i32 %spec.select25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %spec.select25, label %if.end3.if.end15_crit_edge [
    i32 5, label %land.lhs.true
    i32 6, label %land.lhs.true12
  ]

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end3
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and6 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true12:                                  ; preds = %if.end3
  %has_beep = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %has_beep to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_beep, align 4, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end15_crit_edge

land.lhs.true12.if.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true12.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %11, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true12.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %arrayidx4 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 19, i32 %conv, i32 %conv3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv5, 1000
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %mul)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.290)
  switch i8 %3, label %sw.bb [
    i8 3, label %sw.bb11
    i8 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i8 %1, 1
  %add = add i8 %mul, 65
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul8 = shl i8 %1, 1
  %add9 = add i8 %mul8, 64
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %9 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %10 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 92) #11, !srcloc !833
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %12 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %13 = inttoptr i32 %add.i7.i to ptr
  %14 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not = icmp sgt i8 %14, -1
  br i1 %tobool.not, label %if.then15, label %sw.bb11.if.end18_crit_edge

sw.bb11.if.end18_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %conv17 = or i8 %14, -128
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv.i71 = zext i16 %16 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i72 = or i32 %conv.i71, -18874368
  %17 = inttoptr i32 %add.i.i72 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 92) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv2.i73 = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i73, -18874367
  %20 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv17) #11, !srcloc !833
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %sw.bb11.if.end18_crit_edge
  %valid = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 9
  %21 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %valid, align 4
  %arrayidx = getelementptr [3 x i8], ptr @IT87_REG_TEMP_OFFSET, i32 0, i32 %conv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18, %sw.bb7, %sw.bb
  %reg.0 = phi i8 [ %add, %sw.bb ], [ %add9, %sw.bb7 ], [ %23, %if.end18 ]
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp19 = icmp slt i32 %25, 0
  %cond.in.v = select i1 %cmp19, i32 -500, i32 500
  %cond.in = add i32 %cond.in.v, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %cond.in)
  %cmp24 = icmp sgt i32 %cond.in, -128000
  %cond = sdiv i32 %cond.in, 1000
  %26 = call i32 @llvm.smin.i32(i32 %cond, i32 127)
  %27 = trunc i32 %26 to i8
  %conv37 = select i1 %cmp24, i8 %27, i8 -128
  %arrayidx39 = getelementptr %struct.it87_data, ptr %5, i32 0, i32 19, i32 %conv, i32 %conv3
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv37, ptr %arrayidx39, align 1
  %addr.i74 = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i74 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i74, align 2
  %conv.i75 = zext i16 %30 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i76 = or i32 %conv.i75, -18874368
  %31 = inttoptr i32 %add.i.i76 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %reg.0) #11, !srcloc !833
  %32 = ptrtoint ptr %addr.i74 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.i74, align 2
  %conv2.i77 = zext i16 %33 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i78 = add nuw nsw i32 %conv2.i77, -18874367
  %34 = inttoptr i32 %add.i6.i78 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv37) #11, !srcloc !833
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %sensor = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor, align 1
  %extra1 = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 21
  %4 = ptrtoint ptr %extra1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %extra1, align 2
  %features = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %peci_mask = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %peci_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %peci_mask, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %1
  %and2 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true4

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %10 = lshr i8 %3, 6
  %11 = zext i8 %10 to i32
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp = icmp eq i32 %add, %11
  br i1 %cmp, label %land.lhs.true4.if.then_crit_edge, label %land.lhs.true4.lor.lhs.false_crit_edge

land.lhs.true4.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true4.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true10

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = shl nuw i32 1, %1
  br label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %old_peci_mask = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %old_peci_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %old_peci_mask, align 1
  %conv11 = zext i8 %13 to i32
  %shl12 = shl nuw i32 1, %1
  %and13 = and i32 %shl12, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool18.not = icmp sgt i8 %5, -1
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.if.then_crit_edge

land.lhs.true10.if.then_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true10.if.then_crit_edge, %land.lhs.true4.if.then_crit_edge
  %14 = call ptr @memcpy(ptr %buf, ptr @.str.110, i32 3)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %shl21.pre-phi = phi i32 [ %.pre, %lor.lhs.false.if.end_crit_edge ], [ %shl12, %land.lhs.true10.if.end_crit_edge ]
  %conv20 = zext i8 %3 to i32
  %and22 = and i32 %shl21.pre-phi, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = call ptr @memcpy(ptr %buf, ptr @.str.111, i32 3)
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %shl28 = shl i32 8, %1
  %and29 = and i32 %shl28, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.112, i32 3)
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call ptr @memcpy(ptr %buf, ptr @.str.113, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %if.then24, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_type(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %6 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 81) #11, !srcloc !833
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %9 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %10 = inttoptr i32 %add.i7.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %conv4.i = zext i8 %11 to i32
  %shl = shl nuw i32 1, %1
  %shl5 = shl i32 8, %1
  %12 = shl i32 9, %1
  %13 = xor i32 %12, -1
  %and8 = and i32 %conv4.i, %13
  %conv9 = trunc i32 %and8 to i8
  %features = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %features, align 4
  %and10 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %peci_mask = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %peci_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %peci_mask, align 4
  %conv11 = zext i8 %17 to i32
  %and13 = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true15

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true15:                                  ; preds = %land.lhs.true
  %conv16 = lshr i32 %and8, 6
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16, i32 %add)
  %cmp17 = icmp eq i32 %conv16, %add
  br i1 %cmp17, label %land.lhs.true15.if.then21_crit_edge, label %lor.lhs.false

land.lhs.true15.if.then21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp19 = icmp eq i32 %19, 6
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %land.lhs.true15.if.then21_crit_edge
  %conv24 = and i8 %conv9, 63
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %lor.lhs.false.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %reg.0 = phi i8 [ %conv24, %if.then21 ], [ %conv9, %lor.lhs.false.if.end25_crit_edge ], [ %conv9, %land.lhs.true.if.end25_crit_edge ], [ %conv9, %if.end.if.end25_crit_edge ]
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  %conv.i172 = zext i16 %21 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i173 = or i32 %conv.i172, -18874368
  %22 = inttoptr i32 %add.i.i173 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 85) #11, !srcloc !833
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr.i, align 2
  %conv2.i174 = zext i16 %24 to i32
  %add.i7.i175 = add nuw nsw i32 %conv2.i174, -18874367
  %25 = inttoptr i32 %add.i7.i175 to ptr
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features, align 4
  %and29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end25.if.end47thread-pre-split_crit_edge, label %land.lhs.true31

if.end25.if.end47thread-pre-split_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47thread-pre-split

land.lhs.true31:                                  ; preds = %if.end25
  %old_peci_mask = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %old_peci_mask to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %old_peci_mask, align 1
  %conv32 = zext i8 %30 to i32
  %and34 = and i32 %shl, %conv32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true31.if.end47thread-pre-split_crit_edge, label %land.lhs.true36

land.lhs.true31.if.end47thread-pre-split_crit_edge: ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47thread-pre-split

land.lhs.true36:                                  ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool39.not = icmp sgt i8 %26, -1
  br i1 %tobool39.not, label %lor.lhs.false40, label %land.lhs.true36.if.then43_crit_edge

land.lhs.true36.if.then43_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

lor.lhs.false40:                                  ; preds = %land.lhs.true36
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp41 = icmp eq i32 %32, 6
  br i1 %cmp41, label %lor.lhs.false40.if.then43_crit_edge, label %lor.lhs.false40.if.end47_crit_edge

lor.lhs.false40.if.end47_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

lor.lhs.false40.if.then43_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false40.if.then43_crit_edge, %land.lhs.true36.if.then43_crit_edge
  %conv46 = and i8 %26, 127
  br label %if.end47thread-pre-split

if.end47thread-pre-split:                         ; preds = %if.then43, %land.lhs.true31.if.end47thread-pre-split_crit_edge, %if.end25.if.end47thread-pre-split_crit_edge
  %extra.0.ph = phi i8 [ %26, %if.end25.if.end47thread-pre-split_crit_edge ], [ %26, %land.lhs.true31.if.end47thread-pre-split_crit_edge ], [ %conv46, %if.then43 ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %val, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47thread-pre-split, %lor.lhs.false40.if.end47_crit_edge
  %34 = phi i32 [ %.pr, %if.end47thread-pre-split ], [ %32, %lor.lhs.false40.if.end47_crit_edge ]
  %extra.0 = phi i8 [ %extra.0.ph, %if.end47thread-pre-split ], [ %26, %lor.lhs.false40.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp48 = icmp eq i32 %34, 2
  br i1 %cmp48, label %if.end51.thread, label %if.end51

if.end51.thread:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.114) #15
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %val, align 4
  br label %if.then60

if.end51:                                         ; preds = %if.end47
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr186 = load i32, ptr %val, align 4
  %37 = zext i32 %.pr186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %.pr186, label %if.else65 [
    i32 3, label %if.then54
    i32 4, label %if.end51.if.then60_crit_edge
  ]

if.end51.if.then60_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %38 = trunc i32 %shl to i8
  %conv57 = or i8 %reg.0, %38
  br label %if.end109

if.then60:                                        ; preds = %if.end51.if.then60_crit_edge, %if.end51.thread
  %39 = trunc i32 %shl5 to i8
  %conv64 = or i8 %reg.0, %39
  br label %if.end109

if.else65:                                        ; preds = %if.end51
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %features, align 4
  %and67 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else65.if.else84_crit_edge, label %land.lhs.true69

if.else65.if.else84_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else84

land.lhs.true69:                                  ; preds = %if.else65
  %peci_mask70 = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %peci_mask70 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %peci_mask70, align 4
  %conv71 = zext i8 %43 to i32
  %and73 = and i32 %shl, %conv71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp ne i32 %and73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr186)
  %cmp76 = icmp eq i32 %.pr186, 6
  %or.cond = select i1 %tobool74.not, i1 %cmp76, i1 false
  br i1 %or.cond, label %if.then78, label %land.lhs.true69.if.else84_crit_edge

land.lhs.true69.if.else84_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else84

if.then78:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  %.tr = trunc i32 %1 to i8
  %44 = shl i8 %.tr, 6
  %45 = add i8 %44, 64
  %conv83 = or i8 %reg.0, %45
  br label %if.end109

if.else84:                                        ; preds = %land.lhs.true69.if.else84_crit_edge, %if.else65.if.else84_crit_edge
  %and86 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else84.if.else101_crit_edge, label %land.lhs.true88

if.else84.if.else101_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else101

land.lhs.true88:                                  ; preds = %if.else84
  %old_peci_mask89 = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 5
  %46 = ptrtoint ptr %old_peci_mask89 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %old_peci_mask89, align 1
  %conv90 = zext i8 %47 to i32
  %and92 = and i32 %shl, %conv90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp ne i32 %and92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr186)
  %cmp95 = icmp eq i32 %.pr186, 6
  %or.cond187 = select i1 %tobool93.not, i1 %cmp95, i1 false
  br i1 %or.cond187, label %if.then97, label %land.lhs.true88.if.else101_crit_edge

land.lhs.true88.if.else101_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else101

if.then97:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #13
  %48 = or i8 %extra.0, -128
  br label %if.end109

if.else101:                                       ; preds = %land.lhs.true88.if.else101_crit_edge, %if.else84.if.else101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr186)
  %cmp102.not = icmp eq i32 %.pr186, 0
  br i1 %cmp102.not, label %if.else101.if.end109_crit_edge, label %if.else101.cleanup_crit_edge

if.else101.cleanup_crit_edge:                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else101.if.end109_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.end109:                                        ; preds = %if.else101.if.end109_crit_edge, %if.then97, %if.then78, %if.then60, %if.then54
  %reg.1 = phi i8 [ %conv57, %if.then54 ], [ %conv64, %if.then60 ], [ %conv83, %if.then78 ], [ %reg.0, %if.then97 ], [ %reg.0, %if.else101.if.end109_crit_edge ]
  %extra.1 = phi i8 [ %extra.0, %if.then54 ], [ %extra.0, %if.then60 ], [ %extra.0, %if.then78 ], [ %48, %if.then97 ], [ %extra.0, %if.else101.if.end109_crit_edge ]
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %sensor = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 20
  %49 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %reg.1, ptr %sensor, align 1
  %extra110 = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 21
  %50 = ptrtoint ptr %extra110 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %extra.1, ptr %extra110, align 2
  %51 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr.i, align 2
  %conv.i178 = zext i16 %52 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i179 = or i32 %conv.i178, -18874368
  %53 = inttoptr i32 %add.i.i179 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 81) #11, !srcloc !833
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr.i, align 2
  %conv2.i180 = zext i16 %55 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i180, -18874367
  %56 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %reg.1) #11, !srcloc !833
  %57 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %features, align 4
  %and113 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end109.if.end123_crit_edge, label %land.lhs.true115

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

land.lhs.true115:                                 ; preds = %if.end109
  %old_peci_mask116 = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 5
  %59 = ptrtoint ptr %old_peci_mask116 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %old_peci_mask116, align 1
  %conv117 = zext i8 %60 to i32
  %and119 = and i32 %shl, %conv117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %land.lhs.true115.if.end123_crit_edge, label %if.then121

land.lhs.true115.if.end123_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then121:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %extra110 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %extra110, align 2
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr.i, align 2
  %conv.i182 = zext i16 %64 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i183 = or i32 %conv.i182, -18874368
  %65 = inttoptr i32 %add.i.i183 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 85) #11, !srcloc !833
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr.i, align 2
  %conv2.i184 = zext i16 %67 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i185 = add nuw nsw i32 %conv2.i184, -18874367
  %68 = inttoptr i32 %add.i6.i185 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %62) #11, !srcloc !833
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %land.lhs.true115.if.end123_crit_edge, %if.end109.if.end123_crit_edge
  %valid = getelementptr inbounds %struct.it87_data, ptr %3, i32 0, i32 9
  %69 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.else101.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end123 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @it87_fan_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %index)
  %cmp = icmp sgt i32 %index, 14
  %sub = add i32 %index, -15
  %div2 = sdiv i32 %sub, 4
  %add = add nsw i32 %div2, 3
  %i.0 = select i1 %cmp, i32 %add, i32 %div
  %has_fan = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_fan, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %i.0
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  %4 = mul i32 %div2, 4
  %rem4.decomposed = sub i32 %sub, %4
  %5 = mul i32 %div, 5
  %rem.decomposed = sub i32 %index, %5
  %a.0 = select i1 %cmp, i32 %rem4.decomposed, i32 %rem.decomposed
  %6 = zext i32 %a.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %a.0, label %if.end6.if.end28_crit_edge [
    i32 3, label %if.then9
    i32 4, label %land.lhs.true
  ]

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then9:                                         ; preds = %if.end6
  %has_beep = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %has_beep to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_beep, align 4, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.end12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #11, !range !838
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %9)
  %cmp16 = icmp eq i32 %i.0, %9
  br i1 %cmp16, label %if.then18, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  %12 = or i16 %11, 128
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end6
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %and25 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end12.if.end28_crit_edge, %if.end6.if.end28_crit_edge
  %mode29 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %15 = ptrtoint ptr %mode29 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true.cleanup_crit_edge, %if.then18, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %12, %if.then18 ], [ %16, %if.end28 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %features = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx25 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 17, i32 %conv, i32 %conv3
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx25, align 2
  br i1 %tobool.not, label %cond.false22, label %cond.true

cond.true:                                        ; preds = %entry
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.293)
  switch i16 %7, label %cond.false15 [
    i16 0, label %cond.true.cond.end51_crit_edge
    i16 -1, label %cond.end51.fold.split
  ]

cond.true.cond.end51_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end51

cond.false15:                                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv5, 1
  %div = udiv i32 1350000, %mul
  br label %cond.end51

cond.false22:                                     ; preds = %entry
  %9 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.294)
  switch i16 %7, label %cond.false38 [
    i16 0, label %cond.false22.cond.end51_crit_edge
    i16 255, label %cond.end51.fold.split73
  ]

cond.false22.cond.end51_crit_edge:                ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end51

cond.false38:                                     ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #13
  %conv26 = zext i16 %7 to i32
  %arrayidx43 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 22, i32 %conv
  %10 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %11 to i32
  %mul45 = shl i32 %conv26, %conv44
  %div46 = udiv i32 1350000, %mul45
  br label %cond.end51

cond.end51.fold.split:                            ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end51

cond.end51.fold.split73:                          ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end51

cond.end51:                                       ; preds = %cond.end51.fold.split73, %cond.end51.fold.split, %cond.false38, %cond.false22.cond.end51_crit_edge, %cond.false15, %cond.true.cond.end51_crit_edge
  %cond52 = phi i32 [ -1, %cond.true.cond.end51_crit_edge ], [ %div, %cond.false15 ], [ -1, %cond.false22.cond.end51_crit_edge ], [ %div46, %cond.false38 ], [ 0, %cond.end51.fold.split ], [ 0, %cond.end51.fold.split73 ]
  %call53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %cond52)
  ret i32 %call53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %features = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then6.FAN16_TO_REG.exit_crit_edge, label %if.end.i

if.then6.FAN16_TO_REG.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %FAN16_TO_REG.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %10, 1350000
  %mul.i = shl i32 %10, 1
  %div.i = sdiv i32 %add.i, %mul.i
  %11 = call i32 @llvm.smax.i32(i32 %div.i, i32 1) #11
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 65534) #11
  %conv.i = trunc i32 %12 to i16
  br label %FAN16_TO_REG.exit

FAN16_TO_REG.exit:                                ; preds = %if.end.i, %if.then6.FAN16_TO_REG.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ -1, %if.then6.FAN16_TO_REG.exit_crit_edge ]
  %arrayidx8 = getelementptr %struct.it87_data, ptr %5, i32 0, i32 17, i32 %conv, i32 %conv3
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %retval.0.i, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr [6 x i8], ptr @IT87_REG_FAN_MIN, i32 0, i32 %conv
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv15 = trunc i16 %retval.0.i to i8
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv.i96 = zext i16 %17 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i96, -18874368
  %18 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #11, !srcloc !833
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %20 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %21 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv15) #11, !srcloc !833
  %arrayidx16 = getelementptr [6 x i8], ptr @IT87_REG_FANX_MIN, i32 0, i32 %conv
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx8, align 2
  %26 = lshr i16 %25, 8
  %conv21 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i, align 2
  %conv.i98 = zext i16 %28 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i99 = or i32 %conv.i98, -18874368
  %29 = inttoptr i32 %add.i.i99 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %23) #11, !srcloc !833
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i, align 2
  %conv2.i100 = zext i16 %31 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i101 = add nuw nsw i32 %conv2.i100, -18874367
  %32 = inttoptr i32 %add.i6.i101 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv21) #11, !srcloc !833
  br label %if.end55

if.else:                                          ; preds = %if.end
  %addr.i102 = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i102, align 2
  %conv.i103 = zext i16 %34 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i104 = or i32 %conv.i103, -18874368
  %35 = inttoptr i32 %add.i.i104 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 11) #11, !srcloc !833
  %36 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr.i102, align 2
  %conv2.i105 = zext i16 %37 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i105, -18874367
  %38 = inttoptr i32 %add.i7.i to ptr
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %40 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.295)
  switch i8 %1, label %if.else.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb28
    i8 2, label %sw.bb35
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv26 = and i8 %39, 7
  %fan_div = getelementptr inbounds %struct.it87_data, ptr %5, i32 0, i32 22
  %41 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv26, ptr %fan_div, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %42 = lshr i8 %39, 3
  %conv32 = and i8 %42, 7
  %arrayidx34 = getelementptr %struct.it87_data, ptr %5, i32 0, i32 22, i32 1
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv32, ptr %arrayidx34, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %44 = and i8 %39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool38.not = icmp eq i8 %44, 0
  %conv39 = select i1 %tobool38.not, i8 1, i8 3
  %arrayidx41 = getelementptr %struct.it87_data, ptr %5, i32 0, i32 22, i32 2
  %45 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv39, ptr %arrayidx41, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb28, %sw.bb, %if.else.sw.epilog_crit_edge
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i106 = icmp eq i32 %47, 0
  br i1 %cmp.i106, label %sw.epilog.FAN_TO_REG.exit_crit_edge, label %if.end.i110

sw.epilog.FAN_TO_REG.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %FAN_TO_REG.exit

if.end.i110:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43 = getelementptr %struct.it87_data, ptr %5, i32 0, i32 22, i32 %conv
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %49 to i32
  %50 = call i32 @llvm.smax.i32(i32 %47, i32 1) #11
  %51 = call i32 @llvm.umin.i32(i32 %50, i32 1000000) #11
  %mul.i107 = shl i32 %51, %conv44
  %div8.i = sdiv i32 %mul.i107, 2
  %add.i108 = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i108, %mul.i107
  %52 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #11
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 254) #11
  %conv.i109 = trunc i32 %53 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i110, %sw.epilog.FAN_TO_REG.exit_crit_edge
  %retval.0.i111 = phi i8 [ %conv.i109, %if.end.i110 ], [ -1, %sw.epilog.FAN_TO_REG.exit_crit_edge ]
  %conv46 = zext i8 %retval.0.i111 to i16
  %arrayidx49 = getelementptr %struct.it87_data, ptr %5, i32 0, i32 17, i32 %conv, i32 %conv3
  %54 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv46, ptr %arrayidx49, align 2
  %arrayidx50 = getelementptr [6 x i8], ptr @IT87_REG_FAN_MIN, i32 0, i32 %conv
  %55 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx50, align 1
  %57 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %addr.i102, align 2
  %conv.i113 = zext i16 %58 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i114 = or i32 %conv.i113, -18874368
  %59 = inttoptr i32 %add.i.i114 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %56) #11, !srcloc !833
  %60 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr.i102, align 2
  %conv2.i115 = zext i16 %61 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i116 = add nuw nsw i32 %conv2.i115, -18874367
  %62 = inttoptr i32 %add.i6.i116 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %retval.0.i111) #11, !srcloc !833
  br label %if.end55

if.end55:                                         ; preds = %FAN_TO_REG.exit, %FAN16_TO_REG.exit
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end55 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_div(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.it87_data, ptr %call, i32 0, i32 22, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.142, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan_div(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %6 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 11) #11, !srcloc !833
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %9 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %10 = inttoptr i32 %add.i7.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %arrayidx3 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 17, i32 %3, i32 1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx3, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.296)
  switch i16 %13, label %cond.false14 [
    i16 0, label %if.end.cond.end21_crit_edge
    i16 255, label %cond.end21.fold.split
  ]

if.end.cond.end21_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

cond.false14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i16 %13 to i32
  %arrayidx19 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 %3
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %mul = shl i32 %conv4, %conv20
  %div = udiv i32 1350000, %mul
  br label %cond.end21

cond.end21.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

cond.end21:                                       ; preds = %cond.end21.fold.split, %cond.false14, %if.end.cond.end21_crit_edge
  %cond22 = phi i32 [ -1, %if.end.cond.end21_crit_edge ], [ %div, %cond.false14 ], [ 0, %cond.end21.fold.split ]
  %17 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %3, label %cond.end21.sw.epilog_crit_edge [
    i32 0, label %cond.end21.sw.bb_crit_edge
    i32 1, label %cond.end21.sw.bb_crit_edge117
    i32 2, label %sw.bb27
  ]

cond.end21.sw.bb_crit_edge117:                    ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

cond.end21.sw.bb_crit_edge:                       ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

cond.end21.sw.epilog_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end21.sw.bb_crit_edge, %cond.end21.sw.bb_crit_edge117
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool.not3.i = icmp ult i32 %19, 2
  br i1 %tobool.not3.i, label %sw.bb.DIV_TO_REG.exit_crit_edge, label %while.body.i

sw.bb.DIV_TO_REG.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %DIV_TO_REG.exit

while.body.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %tobool.not.i = icmp ult i32 %19, 4
  br i1 %tobool.not.i, label %while.body.i.DIV_TO_REG.exit_crit_edge, label %while.body.i.1

while.body.i.DIV_TO_REG.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %DIV_TO_REG.exit

while.body.i.1:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %tobool.not.i.1 = icmp ult i32 %19, 8
  br i1 %tobool.not.i.1, label %while.body.i.1.DIV_TO_REG.exit_crit_edge, label %while.body.i.2

while.body.i.1.DIV_TO_REG.exit_crit_edge:         ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %DIV_TO_REG.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %tobool.not.i.2 = icmp ult i32 %19, 16
  br i1 %tobool.not.i.2, label %while.body.i.2.DIV_TO_REG.exit_crit_edge, label %while.body.i.3

while.body.i.2.DIV_TO_REG.exit_crit_edge:         ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %DIV_TO_REG.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %tobool.not.i.3 = icmp ult i32 %19, 32
  br i1 %tobool.not.i.3, label %while.body.i.3.DIV_TO_REG.exit_crit_edge, label %while.body.i.4

while.body.i.3.DIV_TO_REG.exit_crit_edge:         ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %DIV_TO_REG.exit

while.body.i.4:                                   ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %19)
  %tobool.not.i.4 = icmp ult i32 %19, 64
  br i1 %tobool.not.i.4, label %while.body.i.4.DIV_TO_REG.exit_crit_edge, label %while.body.i.5

while.body.i.4.DIV_TO_REG.exit_crit_edge:         ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %DIV_TO_REG.exit

while.body.i.5:                                   ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %19)
  %tobool.not.i.5 = icmp ult i32 %19, 128
  %spec.select = select i1 %tobool.not.i.5, i8 6, i8 7
  br label %DIV_TO_REG.exit

DIV_TO_REG.exit:                                  ; preds = %while.body.i.5, %while.body.i.4.DIV_TO_REG.exit_crit_edge, %while.body.i.3.DIV_TO_REG.exit_crit_edge, %while.body.i.2.DIV_TO_REG.exit_crit_edge, %while.body.i.1.DIV_TO_REG.exit_crit_edge, %while.body.i.DIV_TO_REG.exit_crit_edge, %sw.bb.DIV_TO_REG.exit_crit_edge
  %answer.0.lcssa.i = phi i8 [ 0, %sw.bb.DIV_TO_REG.exit_crit_edge ], [ 1, %while.body.i.DIV_TO_REG.exit_crit_edge ], [ 2, %while.body.i.1.DIV_TO_REG.exit_crit_edge ], [ 3, %while.body.i.2.DIV_TO_REG.exit_crit_edge ], [ 4, %while.body.i.3.DIV_TO_REG.exit_crit_edge ], [ 5, %while.body.i.4.DIV_TO_REG.exit_crit_edge ], [ %spec.select, %while.body.i.5 ]
  %arrayidx26 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 %3
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %answer.0.lcssa.i, ptr %arrayidx26, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %cond.end21
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp28 = icmp ult i32 %22, 8
  %arrayidx32 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 2
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx32, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx32, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then30, %DIV_TO_REG.exit, %cond.end21.sw.epilog_crit_edge
  %25 = and i8 %11, -128
  %fan_div37 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 22
  %26 = ptrtoint ptr %fan_div37 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fan_div37, align 1
  %28 = and i8 %27, 7
  %or115 = or i8 %28, %25
  %arrayidx42 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 1
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx42, align 1
  %31 = shl i8 %30, 3
  %32 = and i8 %31, 56
  %or46116 = or i8 %32, %or115
  %or46 = zext i8 %or46116 to i32
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or46, ptr %val, align 4
  %arrayidx48 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 2
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp50 = icmp eq i8 %35, 3
  br i1 %cmp50, label %if.then52, label %sw.epilog.if.end54_crit_edge

sw.epilog.if.end54_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then52:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or53 = or i32 %or46, 64
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or53, ptr %val, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %sw.epilog.if.end54_crit_edge
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %conv55 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr.i, align 2
  %conv.i105 = zext i16 %40 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i106 = or i32 %conv.i105, -18874368
  %41 = inttoptr i32 %add.i.i106 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 11) #11, !srcloc !833
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr.i, align 2
  %conv2.i107 = zext i16 %43 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i107, -18874367
  %44 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv55) #11, !srcloc !833
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond22)
  %cmp.i108 = icmp eq i32 %cond22, 0
  br i1 %cmp.i108, label %if.end54.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end54.FAN_TO_REG.exit_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx57 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 22, i32 %3
  %45 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %46 to i32
  %47 = call i32 @llvm.smax.i32(i32 %cond22, i32 1) #11
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 1000000) #11
  %mul.i = shl i32 %48, %conv58
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %49 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #11
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 254) #11
  %conv.i109 = trunc i32 %50 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end54.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i109, %if.end.i ], [ -1, %if.end54.FAN_TO_REG.exit_crit_edge ]
  %conv61 = zext i8 %retval.0.i to i16
  %51 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv61, ptr %arrayidx3, align 2
  %arrayidx65 = getelementptr [6 x i8], ptr @IT87_REG_FAN_MIN, i32 0, i32 %3
  %52 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx65, align 1
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr.i, align 2
  %conv.i111 = zext i16 %55 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i112 = or i32 %conv.i111, -18874368
  %56 = inttoptr i32 %add.i.i112 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %53) #11, !srcloc !833
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %addr.i, align 2
  %conv2.i113 = zext i16 %58 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i114 = add nuw nsw i32 %conv2.i113, -18874367
  %59 = inttoptr i32 %add.i6.i114 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %retval.0.i) #11, !srcloc !833
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @it87_pwm_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 4
  %2 = mul i32 %div, 4
  %rem.decomposed = sub i32 %index, %2
  %has_pwm = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_pwm, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %div
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.decomposed)
  %cmp = icmp eq i32 %rem.decomposed, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features, align 4
  %7 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode, align 4
  %11 = or i16 %10, 128
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %features12 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %features12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features12, align 4
  %and13 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %14 = and i32 %index, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp eq i32 %14, 4
  %or.cond40 = and i1 %15, %tobool14.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.decomposed)
  %cmp19 = icmp eq i32 %rem.decomposed, 2
  %or.cond41 = and i1 %cmp19, %or.cond40
  %mode22 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %16 = ptrtoint ptr %mode22 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode22, align 4
  %18 = or i16 %17, 128
  %spec.select = select i1 %or.cond41, i16 %18, i16 %17
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %11, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end11 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %type.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not.i = icmp ne i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1.i = icmp slt i32 %1, 3
  %or.cond.i = and i1 %cmp1.i, %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true2.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %entry
  %fan_main_ctrl.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 29
  %4 = ptrtoint ptr %fan_main_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fan_main_ctrl.i, align 2
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 1, %1
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i.pwm_mode.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true2.i.pwm_mode.exit_crit_edge:         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pwm_mode.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.it87_data, ptr %call, i32 0, i32 32, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool5.not.i = icmp sgt i8 %7, -1
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.pwm_mode.exit_crit_edge

if.end.i.pwm_mode.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pwm_mode.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp9.i = icmp eq i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp11.i = icmp sgt i32 %1, 2
  %or.cond30.i = or i1 %cmp11.i, %cmp9.i
  br i1 %or.cond30.i, label %land.lhs.true13.i, label %if.end7.i.if.end20.i_crit_edge

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true13.i:                                ; preds = %if.end7.i
  %arrayidx14.i = getelementptr %struct.it87_data, ptr %call, i32 0, i32 33, i32 %1
  %8 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14.i, align 1
  %features.i.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i.i, align 4
  %and.i.i = lshr i32 %11, 1
  %and.lobit.i.i = and i32 %and.i.i, 1
  %12 = xor i32 %and.lobit.i.i, 1
  %retval.0.in.i.i = lshr i32 255, %12
  %retval.0.i.i = trunc i32 %retval.0.in.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %retval.0.i.i)
  %cmp17.i = icmp eq i8 %9, %retval.0.i.i
  br i1 %cmp17.i, label %land.lhs.true13.i.pwm_mode.exit_crit_edge, label %land.lhs.true13.i.if.end20.i_crit_edge

land.lhs.true13.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true13.i.pwm_mode.exit_crit_edge:        ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pwm_mode.exit

if.end20.i:                                       ; preds = %land.lhs.true13.i.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  br label %pwm_mode.exit

pwm_mode.exit:                                    ; preds = %if.end20.i, %land.lhs.true13.i.pwm_mode.exit_crit_edge, %if.end.i.pwm_mode.exit_crit_edge, %land.lhs.true2.i.pwm_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end20.i ], [ 0, %land.lhs.true2.i.pwm_mode.exit_crit_edge ], [ 2, %if.end.i.pwm_mode.exit_crit_edge ], [ 0, %land.lhs.true13.i.pwm_mode.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_enable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ugt i32 %6, 2
  br i1 %7, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %features.i = getelementptr inbounds %struct.it87_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then6
  %arrayidx1.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx4.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 1
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp6.i = icmp sgt i8 %13, %15
  %arrayidx4.1.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 2
  %16 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp6.1.i = icmp sgt i8 %15, %17
  %arrayidx4.2.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 3
  %18 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp6.2.i = icmp sgt i8 %17, %19
  %arrayidx14.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 35, i32 %3, i32 0
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx19.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 35, i32 %3, i32 1
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp21.i = icmp ugt i8 %21, %23
  %arrayidx19.1.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 35, i32 %3, i32 2
  %24 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx19.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp21.1.i = icmp ugt i8 %23, %25
  %26 = select i1 %cmp21.1.i, i1 true, i1 %cmp21.i
  %27 = select i1 %26, i1 true, i1 %cmp6.2.i
  %28 = select i1 %27, i1 true, i1 %cmp6.1.i
  %29 = select i1 %28, i1 true, i1 %cmp6.i
  br i1 %29, label %for.body.preheader.i.check_trip_points.exit_crit_edge, label %for.body.preheader.i.if.end11_crit_edge

for.body.preheader.i.if.end11_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body.preheader.i.check_trip_points.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_trip_points.exit

if.else.i:                                        ; preds = %if.then6
  %and29.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i.if.end11_crit_edge, label %for.body35.preheader.i

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body35.preheader.i:                           ; preds = %if.else.i
  %arrayidx38.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 1
  %30 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx38.i, align 1
  %arrayidx43.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 2
  %32 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp45.i = icmp sgt i8 %31, %33
  %arrayidx43.1.i = getelementptr %struct.it87_data, ptr %9, i32 0, i32 36, i32 %3, i32 3
  %34 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx43.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp45.1.i = icmp sgt i8 %33, %35
  %36 = select i1 %cmp45.1.i, i1 true, i1 %cmp45.i
  br i1 %36, label %for.body35.preheader.i.check_trip_points.exit_crit_edge, label %for.body35.preheader.i.if.end11_crit_edge

for.body35.preheader.i.if.end11_crit_edge:        ; preds = %for.body35.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body35.preheader.i.check_trip_points.exit_crit_edge: ; preds = %for.body35.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_trip_points.exit

check_trip_points.exit:                           ; preds = %for.body35.preheader.i.check_trip_points.exit_crit_edge, %for.body.preheader.i.check_trip_points.exit_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.166) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.169) #15
  br label %cleanup

if.end11:                                         ; preds = %for.body35.preheader.i.if.end11_crit_edge, %if.else.i.if.end11_crit_edge, %for.body.preheader.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp12 = icmp eq i32 %38, 0
  br i1 %cmp12, label %if.then13, label %if.else44

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp14 = icmp slt i32 %3, 3
  br i1 %cmp14, label %land.lhs.true, label %if.then13.if.else_crit_edge

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then13
  %type = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %40)
  %cmp15.not = icmp eq i32 %40, 16
  br i1 %cmp15.not, label %land.lhs.true.if.else_crit_edge, label %if.then16

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %42 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %43 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 20) #11, !srcloc !833
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %45 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %46 = inttoptr i32 %add.i7.i to ptr
  %47 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %shl = shl nuw nsw i32 1, %3
  %48 = trunc i32 %shl to i8
  %conv = or i8 %47, %48
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %addr.i, align 2
  %conv.i151 = zext i16 %50 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i152 = or i32 %conv.i151, -18874368
  %51 = inttoptr i32 %add.i.i152 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 20) #11, !srcloc !833
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr.i, align 2
  %conv2.i153 = zext i16 %53 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i153, -18874367
  %54 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv) #11, !srcloc !833
  %fan_main_ctrl = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 29
  %55 = ptrtoint ptr %fan_main_ctrl to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fan_main_ctrl, align 2
  %57 = xor i8 %48, -1
  %conv21 = and i8 %56, %57
  store i8 %conv21, ptr %fan_main_ctrl, align 2
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr.i, align 2
  %conv.i155 = zext i16 %59 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i156 = or i32 %conv.i155, -18874368
  %60 = inttoptr i32 %add.i.i156 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 19) #11, !srcloc !833
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr.i, align 2
  %conv2.i157 = zext i16 %62 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i158 = add nuw nsw i32 %conv2.i157, -18874367
  %63 = inttoptr i32 %add.i6.i158 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv21) #11, !srcloc !833
  br label %if.end91

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then13.if.else_crit_edge
  %features.i159 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %features.i159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %features.i159, align 4
  %and.i160 = lshr i32 %65, 1
  %and.lobit.i = and i32 %and.i160, 1
  %66 = xor i32 %and.lobit.i, 1
  %retval.0.in.i = lshr i32 255, %66
  %retval.0.i = trunc i32 %retval.0.in.i to i8
  %arrayidx = getelementptr %struct.it87_data, ptr %1, i32 0, i32 33, i32 %3
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr [6 x i8], ptr @IT87_REG_PWM_DUTY, i32 0, i32 %3
  %68 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx24, align 1
  %addr.i161 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %addr.i161 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr.i161, align 2
  %conv.i162 = zext i16 %71 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i163 = or i32 %conv.i162, -18874368
  %72 = inttoptr i32 %add.i.i163 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %69) #11, !srcloc !833
  %73 = ptrtoint ptr %addr.i161 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i161, align 2
  %conv2.i164 = zext i16 %74 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i165 = add nuw nsw i32 %conv2.i164, -18874367
  %75 = inttoptr i32 %add.i6.i165 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 %retval.0.i) #11, !srcloc !833
  %76 = ptrtoint ptr %features.i159 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %features.i159, align 4
  %and27 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.else36, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %78 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx29, align 1
  %80 = and i8 %79, 124
  %arrayidx32 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 34, i32 %3
  %81 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx32, align 1
  %or34148 = or i8 %80, %82
  br label %if.end39

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then28
  %ctrl.0 = phi i8 [ %or34148, %if.then28 ], [ %84, %if.else36 ]
  %arrayidx41 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %85 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %ctrl.0, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr [6 x i8], ptr @IT87_REG_PWM, i32 0, i32 %3
  %86 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx42, align 1
  %88 = ptrtoint ptr %addr.i161 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr.i161, align 2
  %conv.i167 = zext i16 %89 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i168 = or i32 %conv.i167, -18874368
  %90 = inttoptr i32 %add.i.i168 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %87) #11, !srcloc !833
  %91 = ptrtoint ptr %addr.i161 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr.i161, align 2
  %conv2.i169 = zext i16 %92 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i170 = add nuw nsw i32 %conv2.i169, -18874367
  %93 = inttoptr i32 %add.i6.i170 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %ctrl.0) #11, !srcloc !833
  br label %if.end91

if.else44:                                        ; preds = %if.end11
  %features46 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %94 = ptrtoint ptr %features46 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %features46, align 4
  %and47 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else66, label %if.then49

if.then49:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx51 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %96 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx51, align 1
  %98 = and i8 %97, 124
  %arrayidx55 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 34, i32 %3
  %99 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx55, align 1
  %or57147 = or i8 %98, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp59.not = icmp eq i32 %38, 1
  %101 = or i8 %or57147, -128
  %spec.select = select i1 %cmp59.not, i8 %or57147, i8 %101
  br label %if.end73

if.else66:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp67 = icmp eq i32 %38, 1
  br i1 %cmp67, label %cond.true, label %if.else66.if.end73_crit_edge

if.else66.if.end73_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

cond.true:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx70 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 33, i32 %3
  %102 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx70, align 1
  br label %if.end73

if.end73:                                         ; preds = %cond.true, %if.else66.if.end73_crit_edge, %if.then49
  %ctrl45.0 = phi i8 [ %spec.select, %if.then49 ], [ %103, %cond.true ], [ -128, %if.else66.if.end73_crit_edge ]
  %arrayidx75 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %104 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %ctrl45.0, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr [6 x i8], ptr @IT87_REG_PWM, i32 0, i32 %3
  %105 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx76, align 1
  %addr.i171 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %107 = ptrtoint ptr %addr.i171 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %addr.i171, align 2
  %conv.i172 = zext i16 %108 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i173 = or i32 %conv.i172, -18874368
  %109 = inttoptr i32 %add.i.i173 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %106) #11, !srcloc !833
  %110 = ptrtoint ptr %addr.i171 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %addr.i171, align 2
  %conv2.i174 = zext i16 %111 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i175 = add nuw nsw i32 %conv2.i174, -18874367
  %112 = inttoptr i32 %add.i6.i175 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %ctrl45.0) #11, !srcloc !833
  %type77 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %type77 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %type77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %114)
  %cmp78.not = icmp ne i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp81 = icmp slt i32 %3, 3
  %or.cond149 = select i1 %cmp78.not, i1 %cmp81, i1 false
  br i1 %or.cond149, label %if.then83, label %if.end73.if.end91_crit_edge

if.end73.if.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then83:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %shl84 = shl nuw nsw i32 1, %3
  %fan_main_ctrl85 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 29
  %115 = ptrtoint ptr %fan_main_ctrl85 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %fan_main_ctrl85, align 2
  %117 = trunc i32 %shl84 to i8
  %conv88 = or i8 %116, %117
  store i8 %conv88, ptr %fan_main_ctrl85, align 2
  %118 = ptrtoint ptr %addr.i171 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %addr.i171, align 2
  %conv.i177 = zext i16 %119 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i178 = or i32 %conv.i177, -18874368
  %120 = inttoptr i32 %add.i.i178 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 19) #11, !srcloc !833
  %121 = ptrtoint ptr %addr.i171 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %addr.i171, align 2
  %conv2.i179 = zext i16 %122 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i180 = add nuw nsw i32 %conv2.i179, -18874367
  %123 = inttoptr i32 %add.i6.i180 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 %conv88) #11, !srcloc !833
  br label %if.end91

if.end91:                                         ; preds = %if.then83, %if.end73.if.end91_crit_edge, %if.end39, %if.then16
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %check_trip_points.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end91 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %check_trip_points.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.it87_data, ptr %call, i32 0, i32 33, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %features.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features.i, align 4
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %retval.0.in.i = shl i8 %3, %9
  %retval.0.i = zext i8 %retval.0.in.i to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef %3)
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool7.not = icmp sgt i8 %11, -1
  br i1 %tobool7.not, label %if.end10, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and.i = lshr i32 %9, 1
  %and.lobit.i = and i32 %and.i, 1
  %14 = xor i32 %and.lobit.i, 1
  %retval.0.in.i = lshr i32 %13, %14
  %retval.0.i = trunc i32 %retval.0.in.i to i8
  %arrayidx12 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 33, i32 %3
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr [6 x i8], ptr @IT87_REG_PWM_DUTY, i32 0, i32 %3
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx13, align 1
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %20 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #11, !srcloc !833
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %22 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %23 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %retval.0.i) #11, !srcloc !833
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and.i65 = lshr i32 %9, 1
  %and.lobit.i66 = and i32 %and.i65, 1
  %26 = xor i32 %and.lobit.i66, 1
  %retval.0.in.i67 = lshr i32 %25, %26
  %retval.0.i68 = trunc i32 %retval.0.in.i67 to i8
  %arrayidx18 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 33, i32 %3
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %retval.0.i68, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool23.not = icmp sgt i8 %29, -1
  br i1 %tobool23.not, label %if.then24, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.i68, ptr %arrayidx20, align 1
  %arrayidx29 = getelementptr [6 x i8], ptr @IT87_REG_PWM, i32 0, i32 %3
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx29, align 1
  %addr.i69 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i69, align 2
  %conv.i70 = zext i16 %34 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i71 = or i32 %conv.i70, -18874368
  %35 = inttoptr i32 %add.i.i71 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #11, !srcloc !833
  %36 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr.i69, align 2
  %conv2.i72 = zext i16 %37 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i73 = add nuw nsw i32 %conv2.i72, -18874367
  %38 = inttoptr i32 %add.i6.i73 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %retval.0.i68) #11, !srcloc !833
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then24, %if.else.cleanup.sink.split_crit_edge, %if.end10, %if.then5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.then5.cleanup.sink.split_crit_edge ], [ %count, %if.else.cleanup.sink.split_crit_edge ], [ %count, %if.then24 ], [ %count, %if.end10 ]
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %features = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %extra = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 21
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %fan_ctl = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %index1.0.in.in.in.in = phi ptr [ %extra, %if.then ], [ %fan_ctl, %if.else ]
  %4 = ptrtoint ptr %index1.0.in.in.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %index1.0.in.in.in = load i8, ptr %index1.0.in.in.in.in, align 1
  %index1.0.in.in = lshr i8 %index1.0.in.in.in, 4
  %index1.0.in = and i8 %index1.0.in.in, 7
  %index1.0 = zext i8 %index1.0.in to i32
  %arrayidx = getelementptr [8 x i32], ptr @pwm_freq, i32 0, i32 %index1.0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and7 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %7 = select i1 %tobool8.not, i32 7, i32 8
  %div13 = lshr i32 %6, %7
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %div13)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 1000000)
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond10 = select i1 %tobool.not, i32 128, i32 256
  %mul = mul nuw nsw i32 %cond10, %7
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36000000, i32 %mul)
  %cmp14 = icmp ugt i32 %mul, 36000000
  br i1 %cmp14, label %if.end.for.end_crit_edge, label %for.cond.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000000, i32 %mul)
  %cmp14.1 = icmp ugt i32 %mul, 18000000
  br i1 %cmp14.1, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %mul)
  %cmp14.2 = icmp ugt i32 %mul, 10000000
  br i1 %cmp14.2, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %mul)
  %cmp14.3 = icmp ugt i32 %mul, 7000000
  br i1 %cmp14.3, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4500000, i32 %mul)
  %cmp14.4 = icmp ugt i32 %mul, 4500000
  br i1 %cmp14.4, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2250000, i32 %mul)
  %cmp14.5 = icmp ugt i32 %mul, 2250000
  br i1 %cmp14.5, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1125000, i32 %mul)
  %cmp14.6 = icmp ugt i32 %mul, 1125000
  %spec.select = select i1 %cmp14.6, i8 96, i8 112
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %if.end.for.end_crit_edge ], [ 16, %for.cond.1.for.end_crit_edge ], [ 32, %for.cond.2.for.end_crit_edge ], [ 48, %for.cond.3.for.end_crit_edge ], [ 64, %for.cond.4.for.end_crit_edge ], [ 80, %for.cond.5.for.end_crit_edge ], [ %spec.select, %for.cond.6 ]
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp eq i32 %3, 0
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %12 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 20) #11, !srcloc !833
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %15 to i32
  %add.i7.i = add nuw nsw i32 %conv2.i, -18874367
  %16 = inttoptr i32 %add.i7.i to ptr
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %18 = and i8 %17, -113
  %fan_ctl = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 30
  %conv23 = or i8 %18, %i.0.lcssa
  %19 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23, ptr %fan_ctl, align 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  %conv.i63 = zext i16 %21 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i64 = or i32 %conv.i63, -18874368
  %22 = inttoptr i32 %add.i.i64 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 20) #11, !srcloc !833
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr.i, align 2
  %conv2.i65 = zext i16 %24 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i65, -18874367
  %25 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv23) #11, !srcloc !833
  br label %if.end34

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 85) #11, !srcloc !833
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.i, align 2
  %conv2.i69 = zext i16 %27 to i32
  %add.i7.i70 = add nuw nsw i32 %conv2.i69, -18874367
  %28 = inttoptr i32 %add.i7.i70 to ptr
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #11, !srcloc !834
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %30 = and i8 %29, -113
  %extra = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 21
  %conv32 = or i8 %30, %i.0.lcssa
  %31 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv32, ptr %extra, align 2
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.i, align 2
  %conv.i73 = zext i16 %33 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i74 = or i32 %conv.i73, -18874368
  %34 = inttoptr i32 %add.i.i74 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 85) #11, !srcloc !833
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i, align 2
  %conv2.i75 = zext i16 %36 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i76 = add nuw nsw i32 %conv2.i75, -18874367
  %37 = inttoptr i32 %add.i6.i76 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv32) #11, !srcloc !833
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then18
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end34 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_temp_map(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.it87_data, ptr %call, i32 0, i32 34, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  %narrow = select i1 %cmp, i8 0, i8 %3
  %spec.store.select = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp sgt i32 %1, 2
  %add = add nuw nsw i32 %spec.store.select, 3
  %spec.select = select i1 %cmp2, i32 %add, i32 %spec.store.select
  %shl = shl nuw nsw i32 1, %spec.select
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %shl)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_temp_map(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp sgt i32 %3, 2
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %6, -3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %val, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %8 = phi i32 [ %sub, %if.then3 ], [ %6, %if.end.if.end4_crit_edge ]
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %8, label %if.end4.cleanup_crit_edge [
    i32 1, label %if.end4.sw.epilog_crit_edge
    i32 2, label %sw.bb5
    i32 4, label %sw.bb6
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %if.end4.sw.epilog_crit_edge
  %reg.0 = phi i8 [ 2, %sw.bb6 ], [ 1, %sw.bb5 ], [ 0, %if.end4.sw.epilog_crit_edge ]
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  call fastcc void @it87_update_pwm_ctrl(ptr noundef %1, i32 noundef %3)
  %arrayidx = getelementptr %struct.it87_data, ptr %1, i32 0, i32 34, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %reg.0, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 32, i32 %3
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %sw.epilog.if.end22_crit_edge, label %if.then8

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %and12 = and i8 %12, -4
  %or = or i8 %and12, %reg.0
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or, ptr %arrayidx7, align 1
  %arrayidx19 = getelementptr [6 x i8], ptr @IT87_REG_PWM, i32 0, i32 %3
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx19, align 1
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %17 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %18 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #11, !srcloc !833
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %20 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %21 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %or) #11, !srcloc !833
  br label %if.end22

if.end22:                                         ; preds = %if.then8, %sw.epilog.if.end22_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @it87_auto_pwm_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 11
  %2 = mul i32 %div, 11
  %rem.decomposed = sub i32 %index, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %index)
  %cmp = icmp sgt i32 %index, 32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %index, -33
  %sub.frozen = freeze i32 %sub
  %div241 = udiv i32 %sub.frozen, 6
  %add = add nuw nsw i32 %div241, 3
  %3 = mul i32 %div241, 6
  %rem442.decomposed = sub i32 %sub.frozen, %3
  %add5 = add nuw nsw i32 %rem442.decomposed, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ %add, %if.then ], [ %div, %entry.if.end_crit_edge ]
  %a.0 = phi i32 [ %add5, %if.then ], [ %rem.decomposed, %entry.if.end_crit_edge ]
  %has_pwm = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_pwm, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %i.0
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end19_crit_edge, label %if.then10

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %a.0)
  %cmp11 = icmp slt i32 %a.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %a.0)
  %cmp15 = icmp eq i32 %a.0, 8
  %or.cond40 = or i1 %cmp11, %cmp15
  br i1 %or.cond40, label %if.then10.cleanup_crit_edge, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.then10.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %and21 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %a.0)
  %cmp24 = icmp sgt i32 %a.0, 8
  %or.cond = select i1 %tobool22.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.end19.cleanup_crit_edge, label %if.end28

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end19.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i16 [ %9, %if.end28 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_auto_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv2 = zext i8 %3 to i32
  %arrayidx3 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 35, i32 %conv, i32 %conv2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %features.i = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features.i, align 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %retval.0.in.i = shl i8 %5, %11
  %retval.0.i = zext i8 %retval.0.in.i to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_auto_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr1, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv2 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %9 = icmp ugt i32 %8, 255
  br i1 %9, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %features.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features.i, align 4
  %and.i = lshr i32 %13, 1
  %and.lobit.i = and i32 %and.i, 1
  %14 = xor i32 %and.lobit.i, 1
  %retval.0.in.i = lshr i32 %11, %14
  %retval.0.i = trunc i32 %retval.0.in.i to i8
  %arrayidx11 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 35, i32 %conv, i32 %conv2
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i, ptr %arrayidx11, align 1
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx15 = getelementptr [6 x i8], ptr @IT87_REG_AUTO_BASE, i32 0, i32 %conv
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  %add17 = add i8 %5, 5
  %regaddr.0.v = select i1 %tobool.not, i8 %add17, i8 3
  %regaddr.0 = add i8 %17, %regaddr.0.v
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %20 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %regaddr.0) #11, !srcloc !833
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %22 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %23 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %retval.0.i) #11, !srcloc !833
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_auto_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %features = getelementptr inbounds %struct.it87_data, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv2 = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 36, i32 %conv, i32 %conv2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx7 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 36, i32 %conv
  %arrayidx8 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 36, i32 %conv, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %12 = and i8 %11, 31
  %and14 = zext i8 %12 to i32
  %sub = sub nsw i32 %conv9, %and14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg.0 = phi i32 [ %conv5, %if.then ], [ %sub, %if.else ]
  %mul = mul nsw i32 %reg.0, 1000
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %mul)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_auto_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr1, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv2 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = add i32 %8, -127001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255001, i32 %9)
  %10 = icmp ult i32 %9, -255001
  br i1 %10, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %features = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  %or.cond143 = select i1 %tobool.not, i1 %tobool10.not, i1 false
  br i1 %or.cond143, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.it87_data, ptr %1, i32 0, i32 36, i32 %conv
  %arrayidx12 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 36, i32 %conv, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp slt i32 %16, 0
  %cond.in.v = select i1 %cmp14, i32 -500, i32 500
  %cond.in = add i32 %cond.in.v, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %cond.in)
  %cmp18 = icmp sgt i32 %cond.in, -128000
  %cond = sdiv i32 %cond.in, 1000
  %17 = call i32 @llvm.smin.i32(i32 %cond, i32 127)
  %18 = select i1 %cmp18, i32 %17, i32 -128
  %sub31 = sub nsw i32 %conv13, %18
  %19 = call i32 @llvm.smax.i32(i32 %sub31, i32 0)
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 31)
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = and i8 %22, -32
  %24 = trunc i32 %20 to i8
  %conv51 = or i8 %23, %24
  store i8 %conv51, ptr %arrayidx, align 1
  %arrayidx55 = getelementptr [6 x i8], ptr @IT87_REG_AUTO_BASE, i32 0, i32 %conv
  %25 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx55, align 1
  %add57 = add i8 %26, 5
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %28 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %29 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %add57) #11, !srcloc !833
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %31 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %32 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv51) #11, !srcloc !833
  br label %if.end98

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp60 = icmp slt i32 %34, 0
  %cond69.in.v = select i1 %cmp60, i32 -500, i32 500
  %cond69.in = add i32 %cond69.in.v, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %cond69.in)
  %cmp71 = icmp sgt i32 %cond69.in, -128000
  %cond69 = sdiv i32 %cond69.in, 1000
  %35 = call i32 @llvm.smin.i32(i32 %cond69, i32 127)
  %36 = trunc i32 %35 to i8
  %conv84 = select i1 %cmp71, i8 %36, i8 -128
  %arrayidx87 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 36, i32 %conv, i32 %conv2
  %37 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv84, ptr %arrayidx87, align 1
  %38 = shl nuw i32 %and, 30
  %sext = ashr exact i32 %38, 31
  %dec = trunc i32 %sext to i8
  %point.0 = add i8 %5, %dec
  %arrayidx93 = getelementptr [6 x i8], ptr @IT87_REG_AUTO_BASE, i32 0, i32 %conv
  %39 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx93, align 1
  %add95 = add i8 %point.0, %40
  %addr.i144 = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %addr.i144 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr.i144, align 2
  %conv.i145 = zext i16 %42 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i146 = or i32 %conv.i145, -18874368
  %43 = inttoptr i32 %add.i.i146 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %add95) #11, !srcloc !833
  %44 = ptrtoint ptr %addr.i144 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr.i144, align 2
  %conv2.i147 = zext i16 %45 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i148 = add nuw nsw i32 %conv2.i147, -18874367
  %46 = inttoptr i32 %add.i6.i148 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %conv84) #11, !srcloc !833
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then11
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end98 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_auto_pwm_slope(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx1 = getelementptr %struct.it87_data, ptr %call, i32 0, i32 35, i32 %1, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, 127
  %and = zext i8 %4 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %and)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_auto_pwm_slope(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !831
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %6)
  %cmp2 = icmp ugt i32 %6, 127
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %arrayidx3 = getelementptr %struct.it87_data, ptr %1, i32 0, i32 35, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %9 = and i8 %8, -128
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = trunc i32 %11 to i8
  %conv4 = or i8 %9, %12
  store i8 %conv4, ptr %arrayidx3, align 1
  %arrayidx8 = getelementptr [6 x i8], ptr @IT87_REG_AUTO_BASE, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %add = add i8 %14, 4
  %addr.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %16 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i.i = or i32 %conv.i, -18874368
  %17 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %add) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  call void @arm_heavy_mb() #11
  %add.i6.i = add nuw nsw i32 %conv2.i, -18874367
  %20 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv4) #11, !srcloc !833
  call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it87_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @it87_resume_sio(ptr noundef %add.ptr)
  %update_lock = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %call1 = tail call fastcc i32 @it87_check_pwm(ptr noundef %dev)
  tail call fastcc void @it87_check_limit_regs(ptr noundef %1)
  %addr.i.i = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i.i = or i32 %conv.i.i, -18874368
  %4 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 80) #11, !srcloc !833
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i.i, align 2
  %conv2.i.i = zext i16 %6 to i32
  %add.i7.i.i = add nuw nsw i32 %conv2.i.i, -18874367
  %7 = inttoptr i32 %add.i7.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %if.then.i, label %entry.it87_check_voltage_monitors_reset.exit_crit_edge

entry.it87_check_voltage_monitors_reset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %it87_check_voltage_monitors_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i, align 2
  %conv.i3.i = zext i16 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i4.i = or i32 %conv.i3.i, -18874368
  %11 = inttoptr i32 %add.i.i4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 80) #11, !srcloc !833
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i.i, align 2
  %conv2.i5.i = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i.i = add nuw nsw i32 %conv2.i5.i, -18874367
  %14 = inttoptr i32 %add.i6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -1) #11, !srcloc !833
  br label %it87_check_voltage_monitors_reset.exit

it87_check_voltage_monitors_reset.exit:           ; preds = %if.then.i, %entry.it87_check_voltage_monitors_reset.exit_crit_edge
  tail call fastcc void @it87_check_tachometers_reset(ptr noundef %add.ptr)
  tail call fastcc void @it87_check_tachometers_16bit_mode(ptr noundef %add.ptr)
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i.i, align 2
  %conv.i.i15 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i.i16 = or i32 %conv.i.i15, -18874368
  %17 = inttoptr i32 %add.i.i.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #11, !srcloc !833
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i.i, align 2
  %conv2.i.i17 = zext i16 %19 to i32
  %add.i7.i.i18 = add nuw nsw i32 %conv2.i.i17, -18874367
  %20 = inttoptr i32 %add.i7.i.i18 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !835
  %22 = and i8 %21, 62
  %23 = load i8, ptr @update_vbat, align 1, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %cond.i = select i1 %tobool.not.i, i8 1, i8 65
  %or.i = or i8 %cond.i, %22
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i.i, align 2
  %conv.i3.i19 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i.i4.i20 = or i32 %conv.i3.i19, -18874368
  %26 = inttoptr i32 %add.i.i4.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #11, !srcloc !833
  %27 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i.i, align 2
  %conv2.i5.i21 = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !832
  tail call void @arm_heavy_mb() #11
  %add.i6.i.i22 = add nuw nsw i32 %conv2.i5.i21, -18874367
  %29 = inttoptr i32 %add.i6.i.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %or.i) #11, !srcloc !833
  %valid = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  %call3 = tail call fastcc ptr @it87_update_device(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it87_resume_sio(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %need_in7_reroute = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %need_in7_reroute to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_in7_reroute, align 1, !range !836
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sioaddr = getelementptr inbounds %struct.it87_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sioaddr, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.245, i32 noundef -16) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !839
  tail call void @arm_heavy_mb() #11
  %and.i = and i32 %5, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -121) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !840
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !841
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 85) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !842
  tail call void @arm_heavy_mb() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %5)
  %cmp.i = icmp eq i32 %5, 78
  %conv.i = select i1 %cmp.i, i8 -86, i8 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv.i) #11, !srcloc !833
  %7 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sioaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !843
  tail call void @arm_heavy_mb() #11
  %and.i38 = and i32 %8, 1048575
  %add.i39 = or i32 %and.i38, -18874368
  %9 = inttoptr i32 %add.i39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 7) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !844
  tail call void @arm_heavy_mb() #11
  %add3.i = add i32 %8, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 7) #11, !srcloc !833
  %11 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sioaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !845
  tail call void @arm_heavy_mb() #11
  %and.i40 = and i32 %12, 1048575
  %add.i41 = or i32 %and.i40, -18874368
  %13 = inttoptr i32 %add.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 44) #11, !srcloc !833
  %add1.i = add i32 %12, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i42 = or i32 %and2.i, -18874368
  %14 = inttoptr i32 %add3.i42 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !846
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %do.body11, label %if.end5.if.end23_crit_edge

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.body11:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it87_resume_sio.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@it87_resume_sio, %do.end21)) #11
          to label %if.then17 [label %do.end21], !srcloc !837

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it87_resume_sio.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.247) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body11
  %or = or i8 %15, 2
  %17 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sioaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !847
  tail call void @arm_heavy_mb() #11
  %and.i43 = and i32 %18, 1048575
  %add.i44 = or i32 %and.i43, -18874368
  %19 = inttoptr i32 %add.i44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 44) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !848
  tail call void @arm_heavy_mb() #11
  %add4.i = add i32 %18, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %20 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %or) #11, !srcloc !833
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end5.if.end23_crit_edge
  %21 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sioaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !849
  tail call void @arm_heavy_mb() #11
  %and.i45 = and i32 %22, 1048575
  %add.i46 = or i32 %and.i45, -18874368
  %23 = inttoptr i32 %add.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 2) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !850
  tail call void @arm_heavy_mb() #11
  %add3.i47 = add i32 %22, 1
  %and4.i48 = and i32 %add3.i47, 1048575
  %add5.i49 = or i32 %and4.i48, -18874368
  %24 = inttoptr i32 %add5.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 2) #11, !srcloc !833
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %22, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_select(i32 noundef %ioreg, i32 noundef %ldn) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !843
  tail call void @arm_heavy_mb() #11
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !844
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %ldn to i8
  %add3 = add i32 %ioreg, 1
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %1 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv) #11, !srcloc !833
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inb(i32 noundef %ioreg, i32 noundef %reg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !845
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %reg to i8
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #11, !srcloc !833
  %add1 = add i32 %ioreg, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !846
  %conv6 = zext i8 %2 to i32
  ret i32 %conv6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_outb(i32 noundef %ioreg, i32 noundef %val) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !847
  tail call void @arm_heavy_mb() #11
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 44) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !848
  tail call void @arm_heavy_mb() #11
  %conv3 = trunc i32 %val to i8
  %add4 = add i32 %ioreg, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %1 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv3) #11, !srcloc !833
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it87_find(i32 noundef %sioaddr, ptr nocapture noundef %address, ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !839
  tail call void @arm_heavy_mb() #11
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !840
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 1) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !841
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 85) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !842
  tail call void @arm_heavy_mb() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %sioaddr)
  %cmp.i = icmp eq i32 %sioaddr, 78
  %conv.i = select i1 %cmp.i, i8 -86, i8 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv.i) #11, !srcloc !833
  %1 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call3, %cond.false ]
  %conv5 = and i32 %cond, 65535
  %trunc = trunc i32 %cond to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.299)
  switch i16 %trunc, label %do.body [
    i16 -30971, label %cond.end.sw.epilog_crit_edge
    i16 -30958, label %sw.bb6
    i16 -30954, label %cond.end.sw.bb8_crit_edge
    i16 -30938, label %cond.end.sw.bb8_crit_edge938
    i16 -30952, label %sw.bb10
    i16 -30944, label %sw.bb12
    i16 -30943, label %sw.bb14
    i16 -30936, label %sw.bb16
    i16 -30926, label %sw.bb18
    i16 -30925, label %sw.bb20
    i16 -30863, label %sw.bb22
    i16 -30862, label %sw.bb24
    i16 -30847, label %sw.bb26
    i16 -30846, label %sw.bb28
    i16 -30845, label %sw.bb30
    i16 -30842, label %sw.bb32
    i16 -30832, label %sw.bb34
    i16 -31229, label %cond.end.sw.bb36_crit_edge
    i16 -31197, label %cond.end.sw.bb36_crit_edge939
    i16 -31200, label %sw.bb38
    i16 -31198, label %sw.bb40
    i16 -31192, label %sw.bb42
    i16 -1, label %cond.end.exit_crit_edge
  ]

cond.end.exit_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

cond.end.sw.bb36_crit_edge939:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

cond.end.sw.bb36_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

cond.end.sw.bb8_crit_edge938:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

cond.end.sw.bb8_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %cond.end.sw.bb8_crit_edge, %cond.end.sw.bb8_crit_edge938
  br label %sw.epilog

sw.bb10:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb12:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb14:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb18:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb20:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb22:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb24:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb28:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb30:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb32:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb34:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb36:                                          ; preds = %cond.end.sw.bb36_crit_edge, %cond.end.sw.bb36_crit_edge939
  br label %sw.epilog

sw.bb38:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb40:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb42:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it87_find.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@it87_find, %exit)) #11
          to label %if.then50 [label %exit], !srcloc !837

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @it87_find.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.250, i32 noundef %conv5) #11
  br label %exit

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %cond.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 19, %sw.bb42 ], [ 18, %sw.bb40 ], [ 17, %sw.bb38 ], [ 16, %sw.bb36 ], [ 14, %sw.bb34 ], [ 13, %sw.bb32 ], [ 12, %sw.bb30 ], [ 11, %sw.bb28 ], [ 10, %sw.bb26 ], [ 9, %sw.bb24 ], [ 8, %sw.bb22 ], [ 15, %sw.bb20 ], [ 7, %sw.bb18 ], [ 6, %sw.bb16 ], [ 5, %sw.bb14 ], [ 4, %sw.bb12 ], [ 3, %sw.bb10 ], [ 2, %sw.bb8 ], [ 1, %sw.bb6 ], [ 0, %cond.end.sw.epilog_crit_edge ]
  %type43 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 1
  %3 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %type43, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !843
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !844
  tail call void @arm_heavy_mb() #11
  %add3.i = add i32 %sioaddr, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %4 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !845
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #11, !srcloc !833
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !846
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool54.not = icmp eq i8 %6, 0
  br i1 %tobool54.not, label %do.end58, label %if.end61

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251) #15
  br label %exit

if.end61:                                         ; preds = %sw.epilog
  %call62 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 96)
  %7 = trunc i32 %call62 to i16
  %conv64 = and i16 %7, -8
  %8 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv64, ptr %address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv64)
  %cmp = icmp eq i16 %conv64, 0
  br i1 %cmp, label %do.end70, label %if.end73

do.end70:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #15
  br label %exit

if.end73:                                         ; preds = %if.end61
  %9 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sioaddr, ptr %sio_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !845
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 34) #11, !srcloc !833
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !846
  %conv77 = and i8 %10, 15
  %revision = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 2
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv77, ptr %revision, align 4
  %type83 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 1
  %12 = ptrtoint ptr %type83 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type83, align 4
  %suffix = getelementptr [20 x %struct.it87_devices], ptr @it87_devices, i32 0, i32 %13, i32 1
  %14 = ptrtoint ptr %suffix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suffix, align 4
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %address, align 2
  %conv84 = zext i16 %17 to i32
  %conv86 = zext i8 %conv77 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, i32 noundef %conv5, ptr noundef %15, i32 noundef %conv84, i32 noundef %conv86) #15
  %18 = ptrtoint ptr %type83 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type83, align 4
  %20 = and i32 %19, 268435455
  %21 = lshr i32 7199, %20
  %22 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool91.not.not = icmp eq i32 %22, 0
  br i1 %tobool91.not.not, label %if.then92, label %if.end73.if.end95_crit_edge

if.end73.if.end95_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then92:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %internal = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 5
  %23 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %internal, align 1
  %25 = or i8 %24, 2
  store i8 %25, ptr %internal, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end73.if.end95_crit_edge
  %internal96 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 5
  %26 = ptrtoint ptr %internal96 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %internal96, align 1
  %28 = or i8 %27, 4
  store i8 %28, ptr %internal96, align 1
  %29 = and i32 %19, 268435453
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %29)
  %.not = icmp eq i32 %29, 16
  br i1 %.not, label %if.end111.thread, label %if.end111

if.end111:                                        ; preds = %if.end95
  %skip_in = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %30 = ptrtoint ptr %skip_in to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %skip_in, align 2
  %32 = or i16 %31, 512
  store i16 %32, ptr %skip_in, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %20)
  %tobool114.not = icmp ult i32 %20, 17
  br i1 %tobool114.not, label %if.end111.if.end129_crit_edge, label %if.else119

if.end111.if.end129_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.end111.thread:                                 ; preds = %if.end95
  %33 = or i8 %27, 12
  %34 = ptrtoint ptr %internal96 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %internal96, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %20)
  %tobool114.not931 = icmp ult i32 %20, 17
  br i1 %tobool114.not931, label %if.end111.thread.if.end129_crit_edge, label %if.end111.thread.if.then123_crit_edge

if.end111.thread.if.then123_crit_edge:            ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then123

if.end111.thread.if.end129_crit_edge:             ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.else119:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %29)
  %.not906 = icmp eq i32 %29, 17
  br i1 %.not906, label %if.else119.if.then133_crit_edge, label %if.else119.if.then123_crit_edge

if.else119.if.then123_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then123

if.else119.if.then133_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133

if.then123:                                       ; preds = %if.else119.if.then123_crit_edge, %if.end111.thread.if.then123_crit_edge
  %skip_pwm124 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %35 = ptrtoint ptr %skip_pwm124 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %skip_pwm124, align 2
  %37 = or i8 %36, 32
  store i8 %37, ptr %skip_pwm124, align 2
  br label %if.then133

if.end129:                                        ; preds = %if.end111.thread.if.end129_crit_edge, %if.end111.if.end129_crit_edge
  %skip_pwm = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %38 = ptrtoint ptr %skip_pwm to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %skip_pwm, align 2
  %40 = or i8 %39, 56
  store i8 %40, ptr %skip_pwm, align 2
  %41 = add nsw i32 %20, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %41)
  %tobool132.not = icmp ult i32 %41, -4
  br i1 %tobool132.not, label %if.end129.if.then133_crit_edge, label %if.end129.if.end134_crit_edge

if.end129.if.end134_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.end129.if.then133_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133

if.then133:                                       ; preds = %if.end129.if.then133_crit_edge, %if.then123, %if.else119.if.then133_crit_edge
  %skip_vid = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 8
  %42 = ptrtoint ptr %skip_vid to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %skip_vid, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end129.if.end134_crit_edge
  %43 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %19, label %if.else499 [
    i32 0, label %if.then138
    i32 12, label %if.then146
    i32 16, label %if.then257
    i32 17, label %if.end134.if.then313_crit_edge
    i32 19, label %if.end134.if.then313_crit_edge940
    i32 18, label %if.then417
  ]

if.end134.if.then313_crit_edge940:                ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then313

if.end134.if.then313_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then313

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef 5)
  br label %if.end665

if.then146:                                       ; preds = %if.end134
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef 7)
  %call147 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 37)
  %call148 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 39)
  %call149 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 42)
  %call150 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 44)
  %call151 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 239)
  %and152 = and i32 %call148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %tobool153.not.not = xor i1 %tobool153.not, true
  %and154 = and i32 %call150, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  %or.cond = select i1 %tobool153.not.not, i1 true, i1 %tobool155.not
  br i1 %or.cond, label %if.then156, label %if.then146.if.end160_crit_edge

if.then146.if.end160_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then156:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %44 = ptrtoint ptr %skip_fan to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %skip_fan, align 1
  %46 = or i8 %45, 4
  store i8 %46, ptr %skip_fan, align 1
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %if.then146.if.end160_crit_edge
  %and161 = and i32 %call147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %lor.lhs.false163, label %if.end160.if.then168_crit_edge

if.end160.if.then168_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

lor.lhs.false163:                                 ; preds = %if.end160
  %and164 = and i32 %call149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp ne i32 %and164, 0
  %and166 = and i32 %call151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  %or.cond907 = select i1 %tobool165.not, i1 true, i1 %tobool167.not
  br i1 %or.cond907, label %lor.lhs.false163.if.end173_crit_edge, label %lor.lhs.false163.if.then168_crit_edge

lor.lhs.false163.if.then168_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

lor.lhs.false163.if.end173_crit_edge:             ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then168:                                       ; preds = %lor.lhs.false163.if.then168_crit_edge, %if.end160.if.then168_crit_edge
  %skip_pwm169 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %47 = ptrtoint ptr %skip_pwm169 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %skip_pwm169, align 2
  %49 = or i8 %48, 4
  store i8 %49, ptr %skip_pwm169, align 2
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %lor.lhs.false163.if.end173_crit_edge
  %and174 = and i32 %call148, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end173.if.end181_crit_edge, label %if.then176

if.end173.if.end181_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan177 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %50 = ptrtoint ptr %skip_fan177 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %skip_fan177, align 1
  %52 = or i8 %51, 2
  store i8 %52, ptr %skip_fan177, align 1
  br label %if.end181

if.end181:                                        ; preds = %if.then176, %if.end173.if.end181_crit_edge
  %and182 = and i32 %call148, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end181.if.end189_crit_edge, label %if.then184

if.end181.if.end189_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then184:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm185 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %53 = ptrtoint ptr %skip_pwm185 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %skip_pwm185, align 2
  %55 = or i8 %54, 2
  store i8 %55, ptr %skip_pwm185, align 2
  br label %if.end189

if.end189:                                        ; preds = %if.then184, %if.end181.if.end189_crit_edge
  %or.cond908 = select i1 %tobool153.not, i1 %tobool155.not, i1 false
  br i1 %or.cond908, label %if.end189.if.end200_crit_edge, label %if.then195

if.end189.if.end200_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then195:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  %skip_in196 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %56 = ptrtoint ptr %skip_in196 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %skip_in196, align 2
  %58 = or i16 %57, 32
  store i16 %58, ptr %skip_in196, align 2
  br label %if.end200

if.end200:                                        ; preds = %if.then195, %if.end189.if.end200_crit_edge
  %and201 = and i32 %call148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end200.if.end208_crit_edge, label %if.then203

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %skip_in204 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %59 = ptrtoint ptr %skip_in204 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %skip_in204, align 2
  %61 = or i16 %60, 64
  store i16 %61, ptr %skip_in204, align 2
  br label %if.end208

if.end208:                                        ; preds = %if.then203, %if.end200.if.end208_crit_edge
  %and209 = and i32 %call148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.if.end232_crit_edge, label %if.then211

if.end208.if.end232_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end232

if.then211:                                       ; preds = %if.end208
  %and212 = and i32 %call150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.then214, label %if.then211.do.end224_crit_edge

if.then211.do.end224_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end224

if.then214:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #13
  %or215 = or i32 %call150, 2
  tail call fastcc void @superio_outb(i32 noundef %sioaddr, i32 noundef %or215)
  %need_in7_reroute = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 6
  %62 = ptrtoint ptr %need_in7_reroute to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %need_in7_reroute, align 4
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259) #15
  br label %do.end224

do.end224:                                        ; preds = %if.then214, %if.then211.do.end224_crit_edge
  %reg2c.0 = phi i32 [ %call150, %if.then211.do.end224_crit_edge ], [ %or215, %if.then214 ]
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #15
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #15
  br label %if.end232

if.end232:                                        ; preds = %do.end224, %if.end208.if.end232_crit_edge
  %reg2c.1 = phi i32 [ %reg2c.0, %do.end224 ], [ %call150, %if.end208.if.end232_crit_edge ]
  %and233 = and i32 %reg2c.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end232.if.end240_crit_edge, label %if.then235

if.end232.if.end240_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end240

if.then235:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %internal96 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %internal96, align 1
  %65 = or i8 %64, 1
  store i8 %65, ptr %internal96, align 1
  br label %if.end240

if.end240:                                        ; preds = %if.then235, %if.end232.if.end240_crit_edge
  %and241 = and i32 %reg2c.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %if.end240.if.end665_crit_edge, label %if.then243

if.end240.if.end665_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end665

if.then243:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %internal96 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %internal96, align 1
  %68 = or i8 %67, 2
  store i8 %68, ptr %internal96, align 1
  br label %if.end665

if.then257:                                       ; preds = %if.end134
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef 7)
  %call259 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 39)
  %and260 = and i32 %call259, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.then257.if.end267_crit_edge, label %if.then262

if.then257.if.end267_crit_edge:                   ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

if.then262:                                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm263 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %69 = ptrtoint ptr %skip_pwm263 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %skip_pwm263, align 2
  %71 = or i8 %70, 4
  store i8 %71, ptr %skip_pwm263, align 2
  br label %if.end267

if.end267:                                        ; preds = %if.then262, %if.then257.if.end267_crit_edge
  %and268 = and i32 %call259, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %if.end267.if.end275_crit_edge, label %if.then270

if.end267.if.end275_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end275

if.then270:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan271 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %72 = ptrtoint ptr %skip_fan271 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %skip_fan271, align 1
  %74 = or i8 %73, 4
  store i8 %74, ptr %skip_fan271, align 1
  br label %if.end275

if.end275:                                        ; preds = %if.then270, %if.end267.if.end275_crit_edge
  %call276 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 41)
  %and277 = and i32 %call276, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %if.end275.if.end284_crit_edge, label %if.then279

if.end275.if.end284_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end284

if.then279:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm280 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %75 = ptrtoint ptr %skip_pwm280 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %skip_pwm280, align 2
  %77 = or i8 %76, 2
  store i8 %77, ptr %skip_pwm280, align 2
  br label %if.end284

if.end284:                                        ; preds = %if.then279, %if.end275.if.end284_crit_edge
  %and285 = and i32 %call276, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %if.end284.if.end292_crit_edge, label %if.then287

if.end284.if.end292_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end292

if.then287:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan288 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %78 = ptrtoint ptr %skip_fan288 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %skip_fan288, align 1
  %80 = or i8 %79, 2
  store i8 %80, ptr %skip_fan288, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.then287, %if.end284.if.end292_crit_edge
  %skip_in293 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %81 = ptrtoint ptr %skip_in293 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %skip_in293, align 2
  %83 = or i16 %82, 96
  store i16 %83, ptr %skip_in293, align 2
  br label %if.end665

if.then313:                                       ; preds = %if.end134.if.then313_crit_edge, %if.end134.if.then313_crit_edge940
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef 7)
  %call314 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 37)
  %and315 = and i32 %call314, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.then313.if.end322_crit_edge, label %if.then317

if.then313.if.end322_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end322

if.then317:                                       ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm318 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %84 = ptrtoint ptr %skip_pwm318 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %skip_pwm318, align 2
  %86 = or i8 %85, 16
  store i8 %86, ptr %skip_pwm318, align 2
  br label %if.end322

if.end322:                                        ; preds = %if.then317, %if.then313.if.end322_crit_edge
  %call323 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 38)
  %and324 = and i32 %call323, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %if.then326, label %if.end322.if.end331_crit_edge

if.end322.if.end331_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end331

if.then326:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan327 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %87 = ptrtoint ptr %skip_fan327 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %skip_fan327, align 1
  %89 = or i8 %88, 8
  store i8 %89, ptr %skip_fan327, align 1
  br label %if.end331

if.end331:                                        ; preds = %if.then326, %if.end322.if.end331_crit_edge
  %and332 = and i32 %call323, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and332)
  %tobool333.not = icmp eq i32 %and332, 0
  br i1 %tobool333.not, label %if.then334, label %if.end331.if.end339_crit_edge

if.end331.if.end339_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

if.then334:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan335 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %90 = ptrtoint ptr %skip_fan335 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %skip_fan335, align 1
  %92 = or i8 %91, 16
  store i8 %92, ptr %skip_fan335, align 1
  br label %if.end339

if.end339:                                        ; preds = %if.then334, %if.end331.if.end339_crit_edge
  %call340 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 39)
  %and341 = and i32 %call340, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %tobool342.not = icmp eq i32 %and341, 0
  br i1 %tobool342.not, label %if.end339.if.end348_crit_edge, label %if.then343

if.end339.if.end348_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end348

if.then343:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm344 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %93 = ptrtoint ptr %skip_pwm344 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %skip_pwm344, align 2
  %95 = or i8 %94, 4
  store i8 %95, ptr %skip_pwm344, align 2
  br label %if.end348

if.end348:                                        ; preds = %if.then343, %if.end339.if.end348_crit_edge
  %and349 = and i32 %call340, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.end348.if.end356_crit_edge, label %if.then351

if.end348.if.end356_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end356

if.then351:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan352 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %96 = ptrtoint ptr %skip_fan352 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %skip_fan352, align 1
  %98 = or i8 %97, 4
  store i8 %98, ptr %skip_fan352, align 1
  br label %if.end356

if.end356:                                        ; preds = %if.then351, %if.end348.if.end356_crit_edge
  %call357 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 40)
  %and358 = and i32 %call357, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %if.end356.if.end365_crit_edge, label %if.then360

if.end356.if.end365_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end365

if.then360:                                       ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm361 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %99 = ptrtoint ptr %skip_pwm361 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %skip_pwm361, align 2
  %101 = or i8 %100, 8
  store i8 %101, ptr %skip_pwm361, align 2
  br label %if.end365

if.end365:                                        ; preds = %if.then360, %if.end356.if.end365_crit_edge
  %call366 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 41)
  %and367 = and i32 %call366, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367)
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %if.end365.if.end374_crit_edge, label %if.then369

if.end365.if.end374_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end374

if.then369:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm370 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %102 = ptrtoint ptr %skip_pwm370 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %skip_pwm370, align 2
  %104 = or i8 %103, 2
  store i8 %104, ptr %skip_pwm370, align 2
  br label %if.end374

if.end374:                                        ; preds = %if.then369, %if.end365.if.end374_crit_edge
  %and375 = and i32 %call366, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375)
  %tobool376.not = icmp eq i32 %and375, 0
  br i1 %tobool376.not, label %if.end374.if.end382_crit_edge, label %if.then377

if.end374.if.end382_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

if.then377:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan378 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %105 = ptrtoint ptr %skip_fan378 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %skip_fan378, align 1
  %107 = or i8 %106, 2
  store i8 %107, ptr %skip_fan378, align 1
  br label %if.end382

if.end382:                                        ; preds = %if.then377, %if.end374.if.end382_crit_edge
  %and383 = and i32 %call366, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383)
  %tobool384.not = icmp eq i32 %and383, 0
  br i1 %tobool384.not, label %if.then385, label %if.end382.if.end394_crit_edge

if.end382.if.end394_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end394

if.then385:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm386 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %108 = ptrtoint ptr %skip_pwm386 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %skip_pwm386, align 2
  %110 = or i8 %109, 32
  store i8 %110, ptr %skip_pwm386, align 2
  %skip_fan390 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %111 = ptrtoint ptr %skip_fan390 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %skip_fan390, align 1
  %113 = or i8 %112, 32
  store i8 %113, ptr %skip_fan390, align 1
  br label %if.end394

if.end394:                                        ; preds = %if.then385, %if.end382.if.end394_crit_edge
  %call395 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 44)
  %and396 = and i32 %call395, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396)
  %tobool397.not = icmp eq i32 %and396, 0
  br i1 %tobool397.not, label %if.else403, label %if.then398

if.then398:                                       ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %internal96 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %internal96, align 1
  %116 = or i8 %115, 1
  store i8 %116, ptr %internal96, align 1
  br label %if.end665

if.else403:                                       ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #13
  %skip_in404 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %117 = ptrtoint ptr %skip_in404 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %skip_in404, align 2
  %119 = or i16 %118, 512
  store i16 %119, ptr %skip_in404, align 2
  br label %if.end665

if.then417:                                       ; preds = %if.end134
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef 7)
  %call419 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 37)
  %and420 = and i32 %call419, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420)
  %tobool421.not = icmp eq i32 %and420, 0
  br i1 %tobool421.not, label %if.then417.if.end427_crit_edge, label %if.then422

if.then417.if.end427_crit_edge:                   ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end427

if.then422:                                       ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan423 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %120 = ptrtoint ptr %skip_fan423 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %skip_fan423, align 1
  %122 = or i8 %121, 8
  store i8 %122, ptr %skip_fan423, align 1
  br label %if.end427

if.end427:                                        ; preds = %if.then422, %if.then417.if.end427_crit_edge
  %and428 = and i32 %call419, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %tobool429.not = icmp eq i32 %and428, 0
  br i1 %tobool429.not, label %if.end427.if.end435_crit_edge, label %if.then430

if.end427.if.end435_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end435

if.then430:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm431 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %123 = ptrtoint ptr %skip_pwm431 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %skip_pwm431, align 2
  %125 = or i8 %124, 8
  store i8 %125, ptr %skip_pwm431, align 2
  br label %if.end435

if.end435:                                        ; preds = %if.then430, %if.end427.if.end435_crit_edge
  %call436 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 39)
  %and437 = and i32 %call436, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437)
  %tobool438.not = icmp eq i32 %and437, 0
  br i1 %tobool438.not, label %if.end435.if.end444_crit_edge, label %if.then439

if.end435.if.end444_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end444

if.then439:                                       ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm440 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %126 = ptrtoint ptr %skip_pwm440 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %skip_pwm440, align 2
  %128 = or i8 %127, 4
  store i8 %128, ptr %skip_pwm440, align 2
  br label %if.end444

if.end444:                                        ; preds = %if.then439, %if.end435.if.end444_crit_edge
  %and445 = and i32 %call436, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and445)
  %tobool446.not = icmp eq i32 %and445, 0
  br i1 %tobool446.not, label %if.end444.if.end452_crit_edge, label %if.then447

if.end444.if.end452_crit_edge:                    ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end452

if.then447:                                       ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan448 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %129 = ptrtoint ptr %skip_fan448 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %skip_fan448, align 1
  %131 = or i8 %130, 4
  store i8 %131, ptr %skip_fan448, align 1
  br label %if.end452

if.end452:                                        ; preds = %if.then447, %if.end444.if.end452_crit_edge
  %and453 = and i32 %call436, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and453)
  %tobool454.not = icmp eq i32 %and453, 0
  br i1 %tobool454.not, label %if.end452.if.end460_crit_edge, label %if.then455

if.end452.if.end460_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end460

if.then455:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm456 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %132 = ptrtoint ptr %skip_pwm456 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %skip_pwm456, align 2
  %134 = or i8 %133, 16
  store i8 %134, ptr %skip_pwm456, align 2
  br label %if.end460

if.end460:                                        ; preds = %if.then455, %if.end452.if.end460_crit_edge
  %and461 = and i32 %call436, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and461)
  %tobool462.not = icmp eq i32 %and461, 0
  br i1 %tobool462.not, label %if.end460.if.end468_crit_edge, label %if.then463

if.end460.if.end468_crit_edge:                    ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end468

if.then463:                                       ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan464 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %135 = ptrtoint ptr %skip_fan464 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %skip_fan464, align 1
  %137 = or i8 %136, 16
  store i8 %137, ptr %skip_fan464, align 1
  br label %if.end468

if.end468:                                        ; preds = %if.then463, %if.end460.if.end468_crit_edge
  %call469 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 41)
  %and470 = and i32 %call469, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and470)
  %tobool471.not = icmp eq i32 %and470, 0
  br i1 %tobool471.not, label %if.end468.if.end477_crit_edge, label %if.then472

if.end468.if.end477_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end477

if.then472:                                       ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm473 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %138 = ptrtoint ptr %skip_pwm473 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %skip_pwm473, align 2
  %140 = or i8 %139, 2
  store i8 %140, ptr %skip_pwm473, align 2
  br label %if.end477

if.end477:                                        ; preds = %if.then472, %if.end468.if.end477_crit_edge
  %and478 = and i32 %call469, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and478)
  %tobool479.not = icmp eq i32 %and478, 0
  br i1 %tobool479.not, label %if.end477.if.end485_crit_edge, label %if.then480

if.end477.if.end485_crit_edge:                    ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end485

if.then480:                                       ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan481 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %141 = ptrtoint ptr %skip_fan481 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %skip_fan481, align 1
  %143 = or i8 %142, 2
  store i8 %143, ptr %skip_fan481, align 1
  br label %if.end485

if.end485:                                        ; preds = %if.then480, %if.end477.if.end485_crit_edge
  %call486 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 44)
  %and487 = and i32 %call486, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and487)
  %tobool488.not = icmp eq i32 %and487, 0
  br i1 %tobool488.not, label %if.then489, label %if.end485.if.end665_crit_edge

if.end485.if.end665_crit_edge:                    ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end665

if.then489:                                       ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #13
  %skip_in490 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %144 = ptrtoint ptr %skip_in490 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %skip_in490, align 2
  %146 = or i16 %145, 512
  store i16 %146, ptr %skip_in490, align 2
  br label %if.end665

if.else499:                                       ; preds = %if.end134
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef 7)
  %147 = lshr i32 130947, %20
  %148 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool503.not.not = icmp eq i32 %148, 0
  br i1 %tobool503.not.not, label %if.then504, label %if.else499.if.end543_crit_edge

if.else499.if.end543_crit_edge:                   ; preds = %if.else499
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543

if.then504:                                       ; preds = %if.else499
  %call505 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 38)
  %149 = ptrtoint ptr %type83 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %type83, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.301)
  switch i32 %150, label %if.then504.if.end543_crit_edge [
    i32 3, label %sw.bb507
    i32 4, label %if.then504.sw.bb524_crit_edge
    i32 5, label %if.then504.sw.bb524_crit_edge941
    i32 6, label %if.then504.sw.bb524_crit_edge942
  ]

if.then504.sw.bb524_crit_edge942:                 ; preds = %if.then504
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb524

if.then504.sw.bb524_crit_edge941:                 ; preds = %if.then504
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb524

if.then504.sw.bb524_crit_edge:                    ; preds = %if.then504
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb524

if.then504.if.end543_crit_edge:                   ; preds = %if.then504
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543

sw.bb507:                                         ; preds = %if.then504
  %and508 = and i32 %call505, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and508)
  %tobool509.not = icmp eq i32 %and508, 0
  br i1 %tobool509.not, label %sw.bb507.if.end515_crit_edge, label %if.then510

sw.bb507.if.end515_crit_edge:                     ; preds = %sw.bb507
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end515

if.then510:                                       ; preds = %sw.bb507
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan511 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %152 = ptrtoint ptr %skip_fan511 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %skip_fan511, align 1
  %154 = or i8 %153, 8
  store i8 %154, ptr %skip_fan511, align 1
  br label %if.end515

if.end515:                                        ; preds = %if.then510, %sw.bb507.if.end515_crit_edge
  %and516 = and i32 %call505, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and516)
  %tobool517.not = icmp eq i32 %and516, 0
  br i1 %tobool517.not, label %if.end515.if.end543_crit_edge, label %if.end515.if.end543.sink.split_crit_edge

if.end515.if.end543.sink.split_crit_edge:         ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543.sink.split

if.end515.if.end543_crit_edge:                    ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543

sw.bb524:                                         ; preds = %if.then504.sw.bb524_crit_edge, %if.then504.sw.bb524_crit_edge941, %if.then504.sw.bb524_crit_edge942
  %and525 = and i32 %call505, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and525)
  %tobool526.not = icmp eq i32 %and525, 0
  br i1 %tobool526.not, label %if.then527, label %sw.bb524.if.end532_crit_edge

sw.bb524.if.end532_crit_edge:                     ; preds = %sw.bb524
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end532

if.then527:                                       ; preds = %sw.bb524
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan528 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %155 = ptrtoint ptr %skip_fan528 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %skip_fan528, align 1
  %157 = or i8 %156, 8
  store i8 %157, ptr %skip_fan528, align 1
  br label %if.end532

if.end532:                                        ; preds = %if.then527, %sw.bb524.if.end532_crit_edge
  %and533 = and i32 %call505, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and533)
  %tobool534.not = icmp eq i32 %and533, 0
  br i1 %tobool534.not, label %if.end532.if.end543.sink.split_crit_edge, label %if.end532.if.end543_crit_edge

if.end532.if.end543_crit_edge:                    ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543

if.end532.if.end543.sink.split_crit_edge:         ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543.sink.split

if.end543.sink.split:                             ; preds = %if.end532.if.end543.sink.split_crit_edge, %if.end515.if.end543.sink.split_crit_edge
  %skip_fan536 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %158 = ptrtoint ptr %skip_fan536 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %skip_fan536, align 1
  %160 = or i8 %159, 16
  store i8 %160, ptr %skip_fan536, align 1
  br label %if.end543

if.end543:                                        ; preds = %if.end543.sink.split, %if.end532.if.end543_crit_edge, %if.end515.if.end543_crit_edge, %if.then504.if.end543_crit_edge, %if.else499.if.end543_crit_edge
  %call544 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 39)
  %skip_vid545 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 8
  %161 = ptrtoint ptr %skip_vid545 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %skip_vid545, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool546.not = icmp ne i8 %162, 0
  %and548 = and i32 %call544, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and548)
  %tobool549.not = icmp eq i32 %and548, 0
  %or.cond909 = select i1 %tobool546.not, i1 true, i1 %tobool549.not
  br i1 %or.cond909, label %if.end543.if.end558_crit_edge, label %do.end553

if.end543.if.end558_crit_edge:                    ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end558

do.end553:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #13
  %call555 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #15
  %163 = ptrtoint ptr %skip_vid545 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %skip_vid545, align 4
  br label %if.end558

if.end558:                                        ; preds = %do.end553, %if.end543.if.end558_crit_edge
  %and559 = and i32 %call544, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and559)
  %tobool560.not = icmp eq i32 %and559, 0
  br i1 %tobool560.not, label %if.end558.if.end566_crit_edge, label %if.then561

if.end558.if.end566_crit_edge:                    ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end566

if.then561:                                       ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm562 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %164 = ptrtoint ptr %skip_pwm562 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %skip_pwm562, align 2
  %166 = or i8 %165, 4
  store i8 %166, ptr %skip_pwm562, align 2
  br label %if.end566

if.end566:                                        ; preds = %if.then561, %if.end558.if.end566_crit_edge
  %and567 = and i32 %call544, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and567)
  %tobool568.not = icmp eq i32 %and567, 0
  br i1 %tobool568.not, label %if.end566.if.end574_crit_edge, label %if.then569

if.end566.if.end574_crit_edge:                    ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end574

if.then569:                                       ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan570 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %167 = ptrtoint ptr %skip_fan570 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %skip_fan570, align 1
  %169 = or i8 %168, 4
  store i8 %169, ptr %skip_fan570, align 1
  br label %if.end574

if.end574:                                        ; preds = %if.then569, %if.end566.if.end574_crit_edge
  %call575 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 41)
  %and576 = and i32 %call575, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and576)
  %tobool577.not = icmp eq i32 %and576, 0
  br i1 %tobool577.not, label %if.end574.if.end583_crit_edge, label %if.then578

if.end574.if.end583_crit_edge:                    ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end583

if.then578:                                       ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #13
  %skip_pwm579 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 10
  %170 = ptrtoint ptr %skip_pwm579 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %skip_pwm579, align 2
  %172 = or i8 %171, 2
  store i8 %172, ptr %skip_pwm579, align 2
  br label %if.end583

if.end583:                                        ; preds = %if.then578, %if.end574.if.end583_crit_edge
  %and584 = and i32 %call575, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and584)
  %tobool585.not = icmp eq i32 %and584, 0
  br i1 %tobool585.not, label %if.end583.if.end591_crit_edge, label %if.then586

if.end583.if.end591_crit_edge:                    ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end591

if.then586:                                       ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #13
  %skip_fan587 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 9
  %173 = ptrtoint ptr %skip_fan587 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %skip_fan587, align 1
  %175 = or i8 %174, 2
  store i8 %175, ptr %skip_fan587, align 1
  br label %if.end591

if.end591:                                        ; preds = %if.then586, %if.end583.if.end591_crit_edge
  %176 = ptrtoint ptr %type83 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %type83, align 4
  %.off = add i32 %177, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true599, label %if.end591.if.end605_crit_edge

if.end591.if.end605_crit_edge:                    ; preds = %if.end591
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end605

land.lhs.true599:                                 ; preds = %if.end591
  %178 = ptrtoint ptr %skip_vid545 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %skip_vid545, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool601.not = icmp eq i8 %179, 0
  br i1 %tobool601.not, label %if.then602, label %land.lhs.true599.if.end605_crit_edge

land.lhs.true599.if.end605_crit_edge:             ; preds = %land.lhs.true599
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end605

if.then602:                                       ; preds = %land.lhs.true599
  call void @__sanitizer_cov_trace_pc() #13
  %call603 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 252)
  %conv604 = trunc i32 %call603 to i8
  %vid_value = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 3
  %180 = ptrtoint ptr %vid_value to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv604, ptr %vid_value, align 1
  br label %if.end605

if.end605:                                        ; preds = %if.then602, %land.lhs.true599.if.end605_crit_edge, %if.end591.if.end605_crit_edge
  %call606 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 44)
  %181 = ptrtoint ptr %type83 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %type83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %182)
  %cmp608 = icmp eq i32 %182, 11
  %and610 = and i32 %call606, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and610)
  %tobool611 = icmp ne i32 %and610, 0
  %183 = select i1 %cmp608, i1 %tobool611, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %182)
  %cmp614 = icmp eq i32 %182, 4
  %brmerge = select i1 %cmp614, i1 true, i1 %183
  %and620 = and i32 %call606, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and620)
  %tobool621.not = icmp eq i32 %and620, 0
  %or.cond910 = select i1 %brmerge, i1 %tobool621.not, i1 false
  br i1 %or.cond910, label %if.then622, label %if.end605.if.end630_crit_edge

if.end605.if.end630_crit_edge:                    ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end630

if.then622:                                       ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #13
  %or623 = or i32 %call606, 2
  tail call fastcc void @superio_outb(i32 noundef %sioaddr, i32 noundef %or623)
  %need_in7_reroute624 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 6
  %184 = ptrtoint ptr %need_in7_reroute624 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %need_in7_reroute624, align 4
  %call629 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271) #15
  br label %if.end630

if.end630:                                        ; preds = %if.then622, %if.end605.if.end630_crit_edge
  %reg500.0 = phi i32 [ %or623, %if.then622 ], [ %call606, %if.end605.if.end630_crit_edge ]
  %and631 = and i32 %reg500.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and631)
  %tobool632.not = icmp eq i32 %and631, 0
  br i1 %tobool632.not, label %if.end630.if.end638_crit_edge, label %if.then633

if.end630.if.end638_crit_edge:                    ; preds = %if.end630
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end638

if.then633:                                       ; preds = %if.end630
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %internal96 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %internal96, align 1
  %187 = or i8 %186, 1
  store i8 %187, ptr %internal96, align 1
  br label %if.end638

if.end638:                                        ; preds = %if.then633, %if.end630.if.end638_crit_edge
  %and639 = and i32 %reg500.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639)
  %tobool640.not = icmp eq i32 %and639, 0
  br i1 %tobool640.not, label %if.end638.if.end646_crit_edge, label %if.then641

if.end638.if.end646_crit_edge:                    ; preds = %if.end638
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end646

if.then641:                                       ; preds = %if.end638
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %internal96 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %internal96, align 1
  %190 = or i8 %189, 2
  store i8 %190, ptr %internal96, align 1
  br label %if.end646

if.end646:                                        ; preds = %if.then641, %if.end638.if.end646_crit_edge
  br i1 %183, label %if.then648, label %if.end646.if.end665_crit_edge

if.end646.if.end665_crit_edge:                    ; preds = %if.end646
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end665

if.then648:                                       ; preds = %if.end646
  call void @__sanitizer_cov_trace_pc() #13
  %skip_in649 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 7
  %191 = ptrtoint ptr %skip_in649 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %skip_in649, align 2
  %193 = or i16 %192, 96
  store i16 %193, ptr %skip_in649, align 2
  %skip_temp = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 11
  %194 = ptrtoint ptr %skip_temp to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %skip_temp, align 1
  %196 = or i8 %195, 4
  store i8 %196, ptr %skip_temp, align 1
  br label %if.end665

if.end665:                                        ; preds = %if.then648, %if.end646.if.end665_crit_edge, %if.then489, %if.end485.if.end665_crit_edge, %if.else403, %if.then398, %if.end292, %if.then243, %if.end240.if.end665_crit_edge, %if.then138
  %call249 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 246)
  %197 = trunc i32 %call249 to i8
  %conv251 = and i8 %197, 63
  %beep_pin252 = getelementptr inbounds %struct.it87_sio_data, ptr %sio_data, i32 0, i32 4
  %198 = ptrtoint ptr %beep_pin252 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv251, ptr %beep_pin252, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv251)
  %tobool667.not = icmp eq i8 %conv251, 0
  br i1 %tobool667.not, label %if.end665.exit_crit_edge, label %do.end671

if.end665.exit_crit_edge:                         ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end671:                                        ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #13
  %call673 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274) #15
  br label %exit

exit:                                             ; preds = %do.end671, %if.end665.exit_crit_edge, %do.end70, %do.end58, %if.then50, %do.body, %cond.end.exit_crit_edge
  %err.0 = phi i32 [ -19, %if.then50 ], [ -19, %cond.end.exit_crit_edge ], [ -19, %do.end70 ], [ -19, %do.end58 ], [ 0, %do.end671 ], [ 0, %if.end665.exit_crit_edge ], [ -19, %do.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !849
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #11, !srcloc !833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !850
  tail call void @arm_heavy_mb() #11
  %add3.i925 = add i32 %sioaddr, 1
  %and4.i926 = and i32 %add3.i925, 1048575
  %add5.i927 = or i32 %and4.i926, -18874368
  %199 = inttoptr i32 %add5.i927 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 2) #11, !srcloc !833
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it87_device_add(i32 noundef %index, i16 noundef zeroext %address, ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #11
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %conv = zext i16 %address to i32
  %add = add nuw nsw i32 %conv, 5
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %res, align 4
  %sub = add nuw nsw i32 %conv, 6
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %2, align 4
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  %call5 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = call i32 @platform_device_add_resources(ptr noundef nonnull %call5, ptr noundef nonnull %res, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, i32 noundef %call9) #15
  br label %exit_device_put

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @platform_device_add_data(ptr noundef nonnull %call5, ptr noundef %sio_data, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284) #15
  br label %exit_device_put

if.end22:                                         ; preds = %if.end13
  %call23 = call i32 @platform_device_add(ptr noundef nonnull %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, i32 noundef %call23) #15
  br label %exit_device_put

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [2 x ptr], ptr @it87_pdev, i32 0, i32 %index
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %arrayidx, align 4
  br label %cleanup

exit_device_put:                                  ; preds = %do.end28, %do.end19, %do.end
  %err.0 = phi i32 [ %call9, %do.end ], [ %call14, %do.end19 ], [ %call23, %do.end28 ]
  call void @platform_device_put(ptr noundef nonnull %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_device_put ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inw(i32 noundef %ioreg, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !851
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %reg to i8
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #11, !srcloc !833
  %add1 = add i32 %ioreg, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !852
  %conv6 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !853
  tail call void @arm_heavy_mb() #11
  %conv10 = add i8 %conv, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv10) #11, !srcloc !833
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #11, !srcloc !834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !854
  %conv21 = zext i8 %3 to i32
  %or = or i32 %shl, %conv21
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 490)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 490)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !151, !153, !154, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !182, !183, !185, !186, !188, !190, !192, !193, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !331, !333, !334, !336, !337, !339, !340, !342, !343, !345, !347, !349, !351, !353, !354, !355, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419, !421, !423, !424, !426, !427, !429, !430, !432, !433, !435, !436, !438, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !461, !462, !464, !465, !467, !468, !470, !471, !473, !474, !476, !477, !479, !480, !482, !483, !485, !486, !488, !489, !491, !492, !494, !495, !497, !498, !500, !501, !503, !504, !506, !508, !510, !511, !513, !514, !515, !516, !518, !519, !520, !522, !523, !525, !526, !528, !530, !531, !533, !534, !536, !537, !539, !540, !542, !543, !545, !546, !548, !549, !551, !552, !554, !555, !557, !558, !560, !561, !563, !564, !566, !567, !569, !570, !572, !573, !575, !576, !578, !579, !581, !582, !584, !585, !587, !588, !590, !591, !593, !595, !597, !598, !600, !601, !603, !604, !606, !607, !609, !610, !612, !613, !615, !616, !618, !619, !621, !622, !624, !625, !627, !628, !630, !631, !633, !634, !636, !637, !639, !640, !642, !643, !645, !646, !648, !649, !651, !652, !654, !655, !657, !658, !660, !661, !663, !664, !666, !667, !669, !670, !672, !673, !675, !676, !678, !679, !681, !682, !684, !685, !687, !688, !690, !691, !693, !694, !696, !697, !699, !700, !702, !703, !705, !706, !708, !709, !711, !712, !714, !715, !717, !718, !720, !721, !723, !724, !726, !727, !729, !730, !732, !733, !735, !736, !738, !739, !741, !742, !744, !745, !747, !748, !750, !752, !753, !754, !755, !757, !758, !759, !760, !762, !763, !764, !765, !767, !768, !769, !771, !772, !773, !775, !776, !777, !779, !780, !781, !783, !784, !785, !787, !788, !789, !791, !792, !793, !795, !796, !797, !799, !800, !801, !803, !805, !807, !808, !809, !811, !812, !813, !814, !816, !817, !818, !820, !821}
!llvm.module.flags = !{!822, !823, !824, !825, !826, !827, !828, !829}
!llvm.ident = !{!830}

!0 = !{ptr @__param_force_id, !1, !"__param_force_id", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/it87.c", i32 69, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_idtype183, !1, !"__UNIQUE_ID_force_idtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_id184, !4, !"__UNIQUE_ID_force_id184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/it87.c", i32 70, i32 1}
!5 = !{ptr @__UNIQUE_ID_author224, !6, !"__UNIQUE_ID_author224", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/it87.c", i32 3359, i32 1}
!7 = !{ptr @__UNIQUE_ID_description225, !8, !"__UNIQUE_ID_description225", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/it87.c", i32 3360, i32 1}
!9 = !{ptr @__param_update_vbat, !10, !"__param_update_vbat", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/it87.c", i32 3361, i32 1}
!11 = !{ptr @__UNIQUE_ID_update_vbattype226, !10, !"__UNIQUE_ID_update_vbattype226", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_update_vbat227, !13, !"__UNIQUE_ID_update_vbat227", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/it87.c", i32 3362, i32 1}
!14 = !{ptr @__param_fix_pwm_polarity, !15, !"__param_fix_pwm_polarity", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/it87.c", i32 3363, i32 1}
!16 = !{ptr @__UNIQUE_ID_fix_pwm_polaritytype228, !15, !"__UNIQUE_ID_fix_pwm_polaritytype228", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_fix_pwm_polarity229, !18, !"__UNIQUE_ID_fix_pwm_polarity229", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/it87.c", i32 3364, i32 1}
!19 = !{ptr @__UNIQUE_ID_file230, !20, !"__UNIQUE_ID_file230", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/it87.c", i32 3366, i32 1}
!21 = !{ptr @__UNIQUE_ID_license231, !20, !"__UNIQUE_ID_license231", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_it87__232_3368_sm_it87_init6, !23, !"__initcall__kmod_it87__232_3368_sm_it87_init6", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/it87.c", i32 3368, i32 1}
!24 = !{ptr @__exitcall_sm_it87_exit, !25, !"__exitcall_sm_it87_exit", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/it87.c", i32 3369, i32 1}
!26 = !{ptr @force_id, !27, !"force_id", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/it87.c", i32 68, i32 23}
!28 = !{ptr @it87_pdev, !29, !"it87_pdev", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/it87.c", i32 72, i32 32}
!30 = !{ptr @update_vbat, !31, !"update_vbat", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/it87.c", i32 176, i32 13}
!32 = !{ptr @fix_pwm_polarity, !33, !"fix_pwm_polarity", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/it87.c", i32 179, i32 13}
!34 = !{ptr @__param_str_force_id, !1, !"__param_str_force_id", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/it87.c", i32 3245, i32 11}
!37 = !{ptr @it87_driver, !38, !"it87_driver", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/it87.c", i32 3243, i32 31}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/it87.c", i32 3046, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @it87_probe._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @it87_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @it87_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/it87.c", i32 3092, i32 2}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/it87.c", i32 3097, i32 3}
!52 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @it87_probe._entry.7, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @it87_probe._entry_ptr.10, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/it87.c", i32 300, i32 13}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/it87.c", i32 304, i32 11}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/it87.c", i32 310, i32 11}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/it87.c", i32 316, i32 11}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/it87.c", i32 324, i32 11}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/it87.c", i32 332, i32 11}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/it87.c", i32 342, i32 11}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/it87.c", i32 350, i32 11}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/it87.c", i32 359, i32 11}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/it87.c", i32 360, i32 13}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/it87.c", i32 371, i32 11}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/it87.c", i32 383, i32 11}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/it87.c", i32 390, i32 11}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/it87.c", i32 397, i32 11}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/it87.c", i32 398, i32 13}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/it87.c", i32 404, i32 11}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/it87.c", i32 412, i32 11}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/it87.c", i32 420, i32 11}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/it87.c", i32 429, i32 11}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/it87.c", i32 437, i32 11}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/it87.c", i32 446, i32 11}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/it87.c", i32 455, i32 11}
!99 = !{ptr @it87_devices, !100, !"it87_devices", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/it87.c", i32 297, i32 34}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/it87.c", i32 3010, i32 5}
!103 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @it87_check_pwm._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @it87_check_pwm._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/it87.c", i32 3021, i32 4}
!108 = !{ptr @it87_check_pwm._entry.35, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @it87_check_pwm._entry_ptr.37, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/it87.c", i32 3027, i32 3}
!112 = !{ptr @it87_check_pwm._entry.38, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @it87_check_pwm._entry_ptr.40, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @IT87_REG_PWM, !115, !"IT87_REG_PWM", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/it87.c", i32 232, i32 17}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/it87.c", i32 2892, i32 3}
!118 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @it87_check_tachometers_16bit_mode.__UNIQUE_ID_ddebug222, !117, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!120 = !{ptr @it87_group, !121, !"it87_group", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/it87.c", i32 2153, i32 37}
!122 = !{ptr @it87_attributes, !123, !"it87_attributes", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/it87.c", i32 2141, i32 26}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/it87.c", i32 1807, i32 8}
!126 = !{ptr @dev_attr_alarms, !125, !"dev_attr_alarms", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/it87.c", i32 1805, i32 22}
!129 = !{ptr @IT87_REG_VIN, !130, !"IT87_REG_VIN", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/it87.c", i32 235, i32 17}
!131 = !{ptr @IT87_REG_FAN_MIN, !132, !"IT87_REG_FAN_MIN", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/it87.c", i32 225, i32 17}
!133 = !{ptr @IT87_REG_FAN, !134, !"IT87_REG_FAN", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/it87.c", i32 224, i32 17}
!135 = !{ptr @IT87_REG_FANX, !136, !"IT87_REG_FANX", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/it87.c", i32 226, i32 17}
!137 = !{ptr @IT87_REG_FANX_MIN, !138, !"IT87_REG_FANX_MIN", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/it87.c", i32 227, i32 17}
!139 = !{ptr @IT87_REG_TEMP_OFFSET, !140, !"IT87_REG_TEMP_OFFSET", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/it87.c", i32 228, i32 17}
!141 = !{ptr @IT87_REG_PWM_DUTY, !142, !"IT87_REG_PWM_DUTY", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/it87.c", i32 233, i32 17}
!143 = !{ptr @IT87_REG_AUTO_BASE, !144, !"IT87_REG_AUTO_BASE", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/it87.c", i32 252, i32 17}
!145 = !{ptr @.str.45, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/it87.c", i32 1861, i32 8}
!147 = !{ptr @sensor_dev_attr_intrusion0_alarm, !146, !"sensor_dev_attr_intrusion0_alarm", i1 false, i1 false}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/it87.c", i32 1936, i32 8}
!150 = !{ptr @dev_attr_vrm, !149, !"dev_attr_vrm", i1 false, i1 false}
!151 = !{ptr @.str.47, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/it87.c", i32 1945, i32 8}
!153 = !{ptr @dev_attr_cpu0_vid, !152, !"dev_attr_cpu0_vid", i1 false, i1 false}
!154 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/it87.c", i32 1943, i32 22}
!156 = !{ptr @.str.49, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/it87.c", i32 1975, i32 8}
!158 = !{ptr @sensor_dev_attr_in3_label, !157, !"sensor_dev_attr_in3_label", i1 false, i1 false}
!159 = !{ptr @.str.50, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/it87.c", i32 1951, i32 3}
!161 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/it87.c", i32 1952, i32 3}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/it87.c", i32 1953, i32 3}
!165 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/it87.c", i32 1954, i32 3}
!167 = !{ptr @show_label.labels, !168, !"labels", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/it87.c", i32 1950, i32 28}
!169 = !{ptr @.str.54, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/it87.c", i32 1957, i32 3}
!171 = !{ptr @.str.55, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/it87.c", i32 1958, i32 3}
!173 = !{ptr @show_label.labels_it8721, !174, !"labels_it8721", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/it87.c", i32 1956, i32 28}
!175 = !{ptr @.str.56, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/it87.c", i32 1973, i32 22}
!177 = !{ptr @.str.57, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/it87.c", i32 1976, i32 8}
!179 = !{ptr @sensor_dev_attr_in7_label, !178, !"sensor_dev_attr_in7_label", i1 false, i1 false}
!180 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/it87.c", i32 1977, i32 8}
!182 = !{ptr @sensor_dev_attr_in8_label, !181, !"sensor_dev_attr_in8_label", i1 false, i1 false}
!183 = !{ptr @.str.59, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/it87.c", i32 1979, i32 8}
!185 = !{ptr @sensor_dev_attr_in9_label, !184, !"sensor_dev_attr_in9_label", i1 false, i1 false}
!186 = !{ptr @it87_group_in, !187, !"it87_group_in", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/it87.c", i32 2060, i32 37}
!188 = !{ptr @it87_attributes_in, !189, !"it87_attributes_in", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/it87.c", i32 2003, i32 26}
!190 = !{ptr @.str.60, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/it87.c", i32 888, i32 8}
!192 = !{ptr @sensor_dev_attr_in0_input, !191, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!193 = !{ptr @.str.61, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/it87.c", i32 863, i32 22}
!195 = !{ptr @.str.62, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/it87.c", i32 889, i32 8}
!197 = !{ptr @sensor_dev_attr_in0_min, !196, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!198 = !{ptr @.str.63, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/it87.c", i32 891, i32 8}
!200 = !{ptr @sensor_dev_attr_in0_max, !199, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!201 = !{ptr @.str.64, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/it87.c", i32 1844, i32 8}
!203 = !{ptr @sensor_dev_attr_in0_alarm, !202, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!204 = !{ptr @.str.65, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/it87.c", i32 1894, i32 8}
!206 = !{ptr @sensor_dev_attr_in0_beep, !205, !"sensor_dev_attr_in0_beep", i1 false, i1 false}
!207 = !{ptr @.str.66, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/it87.c", i32 894, i32 8}
!209 = !{ptr @sensor_dev_attr_in1_input, !208, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!210 = !{ptr @.str.67, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/it87.c", i32 895, i32 8}
!212 = !{ptr @sensor_dev_attr_in1_min, !211, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!213 = !{ptr @.str.68, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/it87.c", i32 897, i32 8}
!215 = !{ptr @sensor_dev_attr_in1_max, !214, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!216 = !{ptr @.str.69, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/it87.c", i32 1845, i32 8}
!218 = !{ptr @sensor_dev_attr_in1_alarm, !217, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!219 = !{ptr @.str.70, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/it87.c", i32 1896, i32 8}
!221 = !{ptr @sensor_dev_attr_in1_beep, !220, !"sensor_dev_attr_in1_beep", i1 false, i1 false}
!222 = !{ptr @.str.71, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/it87.c", i32 900, i32 8}
!224 = !{ptr @sensor_dev_attr_in2_input, !223, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!225 = !{ptr @.str.72, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/it87.c", i32 901, i32 8}
!227 = !{ptr @sensor_dev_attr_in2_min, !226, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!228 = !{ptr @.str.73, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/it87.c", i32 903, i32 8}
!230 = !{ptr @sensor_dev_attr_in2_max, !229, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!231 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/it87.c", i32 1846, i32 8}
!233 = !{ptr @sensor_dev_attr_in2_alarm, !232, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!234 = !{ptr @.str.75, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/it87.c", i32 1897, i32 8}
!236 = !{ptr @sensor_dev_attr_in2_beep, !235, !"sensor_dev_attr_in2_beep", i1 false, i1 false}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/it87.c", i32 906, i32 8}
!239 = !{ptr @sensor_dev_attr_in3_input, !238, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!240 = !{ptr @.str.77, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/it87.c", i32 907, i32 8}
!242 = !{ptr @sensor_dev_attr_in3_min, !241, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!243 = !{ptr @.str.78, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/it87.c", i32 909, i32 8}
!245 = !{ptr @sensor_dev_attr_in3_max, !244, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!246 = !{ptr @.str.79, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/it87.c", i32 1847, i32 8}
!248 = !{ptr @sensor_dev_attr_in3_alarm, !247, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!249 = !{ptr @.str.80, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/it87.c", i32 1898, i32 8}
!251 = !{ptr @sensor_dev_attr_in3_beep, !250, !"sensor_dev_attr_in3_beep", i1 false, i1 false}
!252 = !{ptr @.str.81, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/it87.c", i32 912, i32 8}
!254 = !{ptr @sensor_dev_attr_in4_input, !253, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!255 = !{ptr @.str.82, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/it87.c", i32 913, i32 8}
!257 = !{ptr @sensor_dev_attr_in4_min, !256, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!258 = !{ptr @.str.83, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/it87.c", i32 915, i32 8}
!260 = !{ptr @sensor_dev_attr_in4_max, !259, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!261 = !{ptr @.str.84, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/it87.c", i32 1848, i32 8}
!263 = !{ptr @sensor_dev_attr_in4_alarm, !262, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!264 = !{ptr @.str.85, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/it87.c", i32 1899, i32 8}
!266 = !{ptr @sensor_dev_attr_in4_beep, !265, !"sensor_dev_attr_in4_beep", i1 false, i1 false}
!267 = !{ptr @.str.86, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/it87.c", i32 918, i32 8}
!269 = !{ptr @sensor_dev_attr_in5_input, !268, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!270 = !{ptr @.str.87, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/it87.c", i32 919, i32 8}
!272 = !{ptr @sensor_dev_attr_in5_min, !271, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!273 = !{ptr @.str.88, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/it87.c", i32 921, i32 8}
!275 = !{ptr @sensor_dev_attr_in5_max, !274, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!276 = !{ptr @.str.89, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/it87.c", i32 1849, i32 8}
!278 = !{ptr @sensor_dev_attr_in5_alarm, !277, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!279 = !{ptr @.str.90, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/it87.c", i32 1900, i32 8}
!281 = !{ptr @sensor_dev_attr_in5_beep, !280, !"sensor_dev_attr_in5_beep", i1 false, i1 false}
!282 = !{ptr @.str.91, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/it87.c", i32 924, i32 8}
!284 = !{ptr @sensor_dev_attr_in6_input, !283, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!285 = !{ptr @.str.92, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/it87.c", i32 925, i32 8}
!287 = !{ptr @sensor_dev_attr_in6_min, !286, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!288 = !{ptr @.str.93, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/it87.c", i32 927, i32 8}
!290 = !{ptr @sensor_dev_attr_in6_max, !289, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!291 = !{ptr @.str.94, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/it87.c", i32 1850, i32 8}
!293 = !{ptr @sensor_dev_attr_in6_alarm, !292, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!294 = !{ptr @.str.95, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/it87.c", i32 1901, i32 8}
!296 = !{ptr @sensor_dev_attr_in6_beep, !295, !"sensor_dev_attr_in6_beep", i1 false, i1 false}
!297 = !{ptr @.str.96, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/hwmon/it87.c", i32 930, i32 8}
!299 = !{ptr @sensor_dev_attr_in7_input, !298, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!300 = !{ptr @.str.97, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/it87.c", i32 931, i32 8}
!302 = !{ptr @sensor_dev_attr_in7_min, !301, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!303 = !{ptr @.str.98, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/it87.c", i32 933, i32 8}
!305 = !{ptr @sensor_dev_attr_in7_max, !304, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!306 = !{ptr @.str.99, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/it87.c", i32 1851, i32 8}
!308 = !{ptr @sensor_dev_attr_in7_alarm, !307, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!309 = !{ptr @.str.100, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hwmon/it87.c", i32 1902, i32 8}
!311 = !{ptr @sensor_dev_attr_in7_beep, !310, !"sensor_dev_attr_in7_beep", i1 false, i1 false}
!312 = !{ptr @.str.101, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/it87.c", i32 936, i32 8}
!314 = !{ptr @sensor_dev_attr_in8_input, !313, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!315 = !{ptr @.str.102, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hwmon/it87.c", i32 937, i32 8}
!317 = !{ptr @sensor_dev_attr_in9_input, !316, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!318 = !{ptr @.str.103, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hwmon/it87.c", i32 938, i32 8}
!320 = !{ptr @sensor_dev_attr_in10_input, !319, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!321 = !{ptr @.str.104, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/hwmon/it87.c", i32 939, i32 8}
!323 = !{ptr @sensor_dev_attr_in11_input, !322, !"sensor_dev_attr_in11_input", i1 false, i1 false}
!324 = !{ptr @.str.105, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/hwmon/it87.c", i32 940, i32 8}
!326 = !{ptr @sensor_dev_attr_in12_input, !325, !"sensor_dev_attr_in12_input", i1 false, i1 false}
!327 = !{ptr @it87_group_temp, !328, !"it87_group_temp", i1 false, i1 false}
!328 = !{!"../drivers/hwmon/it87.c", i32 2121, i32 37}
!329 = !{ptr @it87_attributes_temp, !330, !"it87_attributes_temp", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/it87.c", i32 2090, i32 26}
!331 = !{ptr @.str.106, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/it87.c", i32 994, i32 8}
!333 = !{ptr @sensor_dev_attr_temp1_input, !332, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!334 = !{ptr @.str.107, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/it87.c", i32 997, i32 8}
!336 = !{ptr @sensor_dev_attr_temp1_max, !335, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!337 = !{ptr @.str.108, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/it87.c", i32 995, i32 8}
!339 = !{ptr @sensor_dev_attr_temp1_min, !338, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!340 = !{ptr @.str.109, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/it87.c", i32 1087, i32 8}
!342 = !{ptr @sensor_dev_attr_temp1_type, !341, !"sensor_dev_attr_temp1_type", i1 false, i1 false}
!343 = !{ptr @.str.110, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/hwmon/it87.c", i32 1030, i32 23}
!345 = !{ptr @.str.111, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/hwmon/it87.c", i32 1032, i32 23}
!347 = !{ptr @.str.112, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/it87.c", i32 1034, i32 23}
!349 = !{ptr @.str.113, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/it87.c", i32 1035, i32 22}
!351 = !{ptr @.str.114, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/hwmon/it87.c", i32 1060, i32 3}
!353 = !{ptr @.str.115, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.116, !352, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @set_temp_type._entry, !352, !"_entry", i1 false, i1 false}
!356 = !{ptr @set_temp_type._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.117, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/hwmon/it87.c", i32 1858, i32 8}
!359 = !{ptr @sensor_dev_attr_temp1_alarm, !358, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!360 = !{ptr @.str.118, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/hwmon/it87.c", i32 999, i32 8}
!362 = !{ptr @sensor_dev_attr_temp1_offset, !361, !"sensor_dev_attr_temp1_offset", i1 false, i1 false}
!363 = !{ptr @.str.119, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/hwmon/it87.c", i32 1910, i32 8}
!365 = !{ptr @sensor_dev_attr_temp1_beep, !364, !"sensor_dev_attr_temp1_beep", i1 false, i1 false}
!366 = !{ptr @.str.120, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/hwmon/it87.c", i32 1001, i32 8}
!368 = !{ptr @sensor_dev_attr_temp2_input, !367, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!369 = !{ptr @.str.121, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/hwmon/it87.c", i32 1004, i32 8}
!371 = !{ptr @sensor_dev_attr_temp2_max, !370, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!372 = !{ptr @.str.122, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/hwmon/it87.c", i32 1002, i32 8}
!374 = !{ptr @sensor_dev_attr_temp2_min, !373, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!375 = !{ptr @.str.123, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/hwmon/it87.c", i32 1089, i32 8}
!377 = !{ptr @sensor_dev_attr_temp2_type, !376, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!378 = !{ptr @.str.124, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/hwmon/it87.c", i32 1859, i32 8}
!380 = !{ptr @sensor_dev_attr_temp2_alarm, !379, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!381 = !{ptr @.str.125, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/hwmon/it87.c", i32 1006, i32 8}
!383 = !{ptr @sensor_dev_attr_temp2_offset, !382, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!384 = !{ptr @.str.126, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/hwmon/it87.c", i32 1912, i32 8}
!386 = !{ptr @sensor_dev_attr_temp2_beep, !385, !"sensor_dev_attr_temp2_beep", i1 false, i1 false}
!387 = !{ptr @.str.127, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/it87.c", i32 1008, i32 8}
!389 = !{ptr @sensor_dev_attr_temp3_input, !388, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!390 = !{ptr @.str.128, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/hwmon/it87.c", i32 1011, i32 8}
!392 = !{ptr @sensor_dev_attr_temp3_max, !391, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!393 = !{ptr @.str.129, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/hwmon/it87.c", i32 1009, i32 8}
!395 = !{ptr @sensor_dev_attr_temp3_min, !394, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!396 = !{ptr @.str.130, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/hwmon/it87.c", i32 1091, i32 8}
!398 = !{ptr @sensor_dev_attr_temp3_type, !397, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!399 = !{ptr @.str.131, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/hwmon/it87.c", i32 1860, i32 8}
!401 = !{ptr @sensor_dev_attr_temp3_alarm, !400, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!402 = !{ptr @.str.132, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/hwmon/it87.c", i32 1013, i32 8}
!404 = !{ptr @sensor_dev_attr_temp3_offset, !403, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!405 = !{ptr @.str.133, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/hwmon/it87.c", i32 1913, i32 8}
!407 = !{ptr @sensor_dev_attr_temp3_beep, !406, !"sensor_dev_attr_temp3_beep", i1 false, i1 false}
!408 = !{ptr @.str.134, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/hwmon/it87.c", i32 1015, i32 8}
!410 = !{ptr @sensor_dev_attr_temp4_input, !409, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!411 = !{ptr @.str.135, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/hwmon/it87.c", i32 1016, i32 8}
!413 = !{ptr @sensor_dev_attr_temp5_input, !412, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!414 = !{ptr @.str.136, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/hwmon/it87.c", i32 1017, i32 8}
!416 = !{ptr @sensor_dev_attr_temp6_input, !415, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!417 = !{ptr @it87_group_fan, !418, !"it87_group_fan", i1 false, i1 false}
!418 = !{!"../drivers/hwmon/it87.c", i32 2224, i32 37}
!419 = !{ptr @it87_attributes_fan, !420, !"it87_attributes_fan", i1 false, i1 false}
!420 = !{!"../drivers/hwmon/it87.c", i32 2188, i32 26}
!421 = !{ptr @.str.137, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/hwmon/it87.c", i32 1624, i32 8}
!423 = !{ptr @sensor_dev_attr_fan1_input, !422, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!424 = !{ptr @.str.138, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/hwmon/it87.c", i32 1625, i32 8}
!426 = !{ptr @sensor_dev_attr_fan1_min, !425, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!427 = !{ptr @.str.139, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/hwmon/it87.c", i32 1852, i32 8}
!429 = !{ptr @sensor_dev_attr_fan1_alarm, !428, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!430 = !{ptr @.str.140, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/it87.c", i32 1904, i32 8}
!432 = !{ptr @sensor_dev_attr_fan1_beep, !431, !"sensor_dev_attr_fan1_beep", i1 false, i1 false}
!433 = !{ptr @.str.141, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/hwmon/it87.c", i32 1627, i32 8}
!435 = !{ptr @sensor_dev_attr_fan1_div, !434, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!436 = !{ptr @.str.142, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/hwmon/it87.c", i32 1132, i32 22}
!438 = !{ptr @.str.143, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/hwmon/it87.c", i32 1630, i32 8}
!440 = !{ptr @sensor_dev_attr_fan2_input, !439, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!441 = !{ptr @.str.144, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/hwmon/it87.c", i32 1631, i32 8}
!443 = !{ptr @sensor_dev_attr_fan2_min, !442, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!444 = !{ptr @.str.145, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/hwmon/it87.c", i32 1853, i32 8}
!446 = !{ptr @sensor_dev_attr_fan2_alarm, !445, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!447 = !{ptr @.str.146, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/hwmon/it87.c", i32 1905, i32 8}
!449 = !{ptr @sensor_dev_attr_fan2_beep, !448, !"sensor_dev_attr_fan2_beep", i1 false, i1 false}
!450 = !{ptr @.str.147, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/hwmon/it87.c", i32 1633, i32 8}
!452 = !{ptr @sensor_dev_attr_fan2_div, !451, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!453 = !{ptr @.str.148, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/hwmon/it87.c", i32 1636, i32 8}
!455 = !{ptr @sensor_dev_attr_fan3_input, !454, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!456 = !{ptr @.str.149, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/hwmon/it87.c", i32 1637, i32 8}
!458 = !{ptr @sensor_dev_attr_fan3_min, !457, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!459 = !{ptr @.str.150, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/hwmon/it87.c", i32 1854, i32 8}
!461 = !{ptr @sensor_dev_attr_fan3_alarm, !460, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!462 = !{ptr @.str.151, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/hwmon/it87.c", i32 1906, i32 8}
!464 = !{ptr @sensor_dev_attr_fan3_beep, !463, !"sensor_dev_attr_fan3_beep", i1 false, i1 false}
!465 = !{ptr @.str.152, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/hwmon/it87.c", i32 1639, i32 8}
!467 = !{ptr @sensor_dev_attr_fan3_div, !466, !"sensor_dev_attr_fan3_div", i1 false, i1 false}
!468 = !{ptr @.str.153, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/hwmon/it87.c", i32 1642, i32 8}
!470 = !{ptr @sensor_dev_attr_fan4_input, !469, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!471 = !{ptr @.str.154, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/hwmon/it87.c", i32 1643, i32 8}
!473 = !{ptr @sensor_dev_attr_fan4_min, !472, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!474 = !{ptr @.str.155, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/hwmon/it87.c", i32 1855, i32 8}
!476 = !{ptr @sensor_dev_attr_fan4_alarm, !475, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!477 = !{ptr @.str.156, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/hwmon/it87.c", i32 1907, i32 8}
!479 = !{ptr @sensor_dev_attr_fan4_beep, !478, !"sensor_dev_attr_fan4_beep", i1 false, i1 false}
!480 = !{ptr @.str.157, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/hwmon/it87.c", i32 1646, i32 8}
!482 = !{ptr @sensor_dev_attr_fan5_input, !481, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!483 = !{ptr @.str.158, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/hwmon/it87.c", i32 1647, i32 8}
!485 = !{ptr @sensor_dev_attr_fan5_min, !484, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!486 = !{ptr @.str.159, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/hwmon/it87.c", i32 1856, i32 8}
!488 = !{ptr @sensor_dev_attr_fan5_alarm, !487, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!489 = !{ptr @.str.160, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/hwmon/it87.c", i32 1908, i32 8}
!491 = !{ptr @sensor_dev_attr_fan5_beep, !490, !"sensor_dev_attr_fan5_beep", i1 false, i1 false}
!492 = !{ptr @.str.161, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/hwmon/it87.c", i32 1650, i32 8}
!494 = !{ptr @sensor_dev_attr_fan6_input, !493, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!495 = !{ptr @.str.162, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/hwmon/it87.c", i32 1651, i32 8}
!497 = !{ptr @sensor_dev_attr_fan6_min, !496, !"sensor_dev_attr_fan6_min", i1 false, i1 false}
!498 = !{ptr @.str.163, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/hwmon/it87.c", i32 1857, i32 8}
!500 = !{ptr @sensor_dev_attr_fan6_alarm, !499, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!501 = !{ptr @.str.164, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/hwmon/it87.c", i32 1909, i32 8}
!503 = !{ptr @sensor_dev_attr_fan6_beep, !502, !"sensor_dev_attr_fan6_beep", i1 false, i1 false}
!504 = !{ptr @it87_group_pwm, !505, !"it87_group_pwm", i1 false, i1 false}
!505 = !{!"../drivers/hwmon/it87.c", i32 2285, i32 37}
!506 = !{ptr @it87_attributes_pwm, !507, !"it87_attributes_pwm", i1 false, i1 false}
!507 = !{!"../drivers/hwmon/it87.c", i32 2251, i32 26}
!508 = !{ptr @.str.165, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/hwmon/it87.c", i32 1654, i32 8}
!510 = !{ptr @sensor_dev_attr_pwm1_enable, !509, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!511 = !{ptr @.str.166, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/hwmon/it87.c", i32 1288, i32 3}
!513 = !{ptr @.str.167, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @check_trip_points._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @check_trip_points._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.169, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/hwmon/it87.c", i32 1290, i32 3}
!518 = !{ptr @check_trip_points._entry.168, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @check_trip_points._entry_ptr.170, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.171, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/hwmon/it87.c", i32 1656, i32 8}
!522 = !{ptr @sensor_dev_attr_pwm1, !521, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!523 = !{ptr @.str.172, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/hwmon/it87.c", i32 1657, i32 8}
!525 = !{ptr @sensor_dev_attr_pwm1_freq, !524, !"sensor_dev_attr_pwm1_freq", i1 false, i1 false}
!526 = !{ptr @pwm_freq, !527, !"pwm_freq", i1 false, i1 false}
!527 = !{!"../drivers/hwmon/it87.c", i32 654, i32 27}
!528 = !{ptr @.str.173, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/hwmon/it87.c", i32 1659, i32 8}
!530 = !{ptr @sensor_dev_attr_pwm1_auto_channels_temp, !529, !"sensor_dev_attr_pwm1_auto_channels_temp", i1 false, i1 false}
!531 = !{ptr @.str.174, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/hwmon/it87.c", i32 1684, i32 8}
!533 = !{ptr @sensor_dev_attr_pwm2_enable, !532, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!534 = !{ptr @.str.175, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/hwmon/it87.c", i32 1686, i32 8}
!536 = !{ptr @sensor_dev_attr_pwm2, !535, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!537 = !{ptr @.str.176, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/hwmon/it87.c", i32 1687, i32 8}
!539 = !{ptr @sensor_dev_attr_pwm2_freq, !538, !"sensor_dev_attr_pwm2_freq", i1 false, i1 false}
!540 = !{ptr @.str.177, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/hwmon/it87.c", i32 1688, i32 8}
!542 = !{ptr @sensor_dev_attr_pwm2_auto_channels_temp, !541, !"sensor_dev_attr_pwm2_auto_channels_temp", i1 false, i1 false}
!543 = !{ptr @.str.178, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/hwmon/it87.c", i32 1713, i32 8}
!545 = !{ptr @sensor_dev_attr_pwm3_enable, !544, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!546 = !{ptr @.str.179, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/hwmon/it87.c", i32 1715, i32 8}
!548 = !{ptr @sensor_dev_attr_pwm3, !547, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!549 = !{ptr @.str.180, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/hwmon/it87.c", i32 1716, i32 8}
!551 = !{ptr @sensor_dev_attr_pwm3_freq, !550, !"sensor_dev_attr_pwm3_freq", i1 false, i1 false}
!552 = !{ptr @.str.181, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/hwmon/it87.c", i32 1717, i32 8}
!554 = !{ptr @sensor_dev_attr_pwm3_auto_channels_temp, !553, !"sensor_dev_attr_pwm3_auto_channels_temp", i1 false, i1 false}
!555 = !{ptr @.str.182, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/hwmon/it87.c", i32 1742, i32 8}
!557 = !{ptr @sensor_dev_attr_pwm4_enable, !556, !"sensor_dev_attr_pwm4_enable", i1 false, i1 false}
!558 = !{ptr @.str.183, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/hwmon/it87.c", i32 1744, i32 8}
!560 = !{ptr @sensor_dev_attr_pwm4, !559, !"sensor_dev_attr_pwm4", i1 false, i1 false}
!561 = !{ptr @.str.184, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/hwmon/it87.c", i32 1745, i32 8}
!563 = !{ptr @sensor_dev_attr_pwm4_freq, !562, !"sensor_dev_attr_pwm4_freq", i1 false, i1 false}
!564 = !{ptr @.str.185, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/hwmon/it87.c", i32 1746, i32 8}
!566 = !{ptr @sensor_dev_attr_pwm4_auto_channels_temp, !565, !"sensor_dev_attr_pwm4_auto_channels_temp", i1 false, i1 false}
!567 = !{ptr @.str.186, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/hwmon/it87.c", i32 1761, i32 8}
!569 = !{ptr @sensor_dev_attr_pwm5_enable, !568, !"sensor_dev_attr_pwm5_enable", i1 false, i1 false}
!570 = !{ptr @.str.187, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/hwmon/it87.c", i32 1763, i32 8}
!572 = !{ptr @sensor_dev_attr_pwm5, !571, !"sensor_dev_attr_pwm5", i1 false, i1 false}
!573 = !{ptr @.str.188, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/hwmon/it87.c", i32 1764, i32 8}
!575 = !{ptr @sensor_dev_attr_pwm5_freq, !574, !"sensor_dev_attr_pwm5_freq", i1 false, i1 false}
!576 = !{ptr @.str.189, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/hwmon/it87.c", i32 1765, i32 8}
!578 = !{ptr @sensor_dev_attr_pwm5_auto_channels_temp, !577, !"sensor_dev_attr_pwm5_auto_channels_temp", i1 false, i1 false}
!579 = !{ptr @.str.190, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/hwmon/it87.c", i32 1780, i32 8}
!581 = !{ptr @sensor_dev_attr_pwm6_enable, !580, !"sensor_dev_attr_pwm6_enable", i1 false, i1 false}
!582 = !{ptr @.str.191, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/hwmon/it87.c", i32 1782, i32 8}
!584 = !{ptr @sensor_dev_attr_pwm6, !583, !"sensor_dev_attr_pwm6", i1 false, i1 false}
!585 = !{ptr @.str.192, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/hwmon/it87.c", i32 1783, i32 8}
!587 = !{ptr @sensor_dev_attr_pwm6_freq, !586, !"sensor_dev_attr_pwm6_freq", i1 false, i1 false}
!588 = !{ptr @.str.193, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/hwmon/it87.c", i32 1784, i32 8}
!590 = !{ptr @sensor_dev_attr_pwm6_auto_channels_temp, !589, !"sensor_dev_attr_pwm6_auto_channels_temp", i1 false, i1 false}
!591 = !{ptr @it87_group_auto_pwm, !592, !"it87_group_auto_pwm", i1 false, i1 false}
!592 = !{!"../drivers/hwmon/it87.c", i32 2381, i32 37}
!593 = !{ptr @it87_attributes_auto_pwm, !594, !"it87_attributes_auto_pwm", i1 false, i1 false}
!594 = !{!"../drivers/hwmon/it87.c", i32 2320, i32 26}
!595 = !{ptr @.str.194, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/hwmon/it87.c", i32 1661, i32 8}
!597 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !596, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!598 = !{ptr @.str.195, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/hwmon/it87.c", i32 1663, i32 8}
!600 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !599, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!601 = !{ptr @.str.196, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/hwmon/it87.c", i32 1665, i32 8}
!603 = !{ptr @sensor_dev_attr_pwm1_auto_point3_pwm, !602, !"sensor_dev_attr_pwm1_auto_point3_pwm", i1 false, i1 false}
!604 = !{ptr @.str.197, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/hwmon/it87.c", i32 1667, i32 8}
!606 = !{ptr @sensor_dev_attr_pwm1_auto_point4_pwm, !605, !"sensor_dev_attr_pwm1_auto_point4_pwm", i1 false, i1 false}
!607 = !{ptr @.str.198, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/hwmon/it87.c", i32 1669, i32 8}
!609 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !608, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!610 = !{ptr @.str.199, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/hwmon/it87.c", i32 1671, i32 8}
!612 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, !611, !"sensor_dev_attr_pwm1_auto_point1_temp_hyst", i1 false, i1 false}
!613 = !{ptr @.str.200, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/hwmon/it87.c", i32 1673, i32 8}
!615 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !614, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!616 = !{ptr @.str.201, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/hwmon/it87.c", i32 1675, i32 8}
!618 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp, !617, !"sensor_dev_attr_pwm1_auto_point3_temp", i1 false, i1 false}
!619 = !{ptr @.str.202, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/hwmon/it87.c", i32 1677, i32 8}
!621 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp, !620, !"sensor_dev_attr_pwm1_auto_point4_temp", i1 false, i1 false}
!622 = !{ptr @.str.203, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/hwmon/it87.c", i32 1679, i32 8}
!624 = !{ptr @sensor_dev_attr_pwm1_auto_start, !623, !"sensor_dev_attr_pwm1_auto_start", i1 false, i1 false}
!625 = !{ptr @.str.204, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/hwmon/it87.c", i32 1681, i32 8}
!627 = !{ptr @sensor_dev_attr_pwm1_auto_slope, !626, !"sensor_dev_attr_pwm1_auto_slope", i1 false, i1 false}
!628 = !{ptr @.str.205, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/hwmon/it87.c", i32 1690, i32 8}
!630 = !{ptr @sensor_dev_attr_pwm2_auto_point1_pwm, !629, !"sensor_dev_attr_pwm2_auto_point1_pwm", i1 false, i1 false}
!631 = !{ptr @.str.206, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/hwmon/it87.c", i32 1692, i32 8}
!633 = !{ptr @sensor_dev_attr_pwm2_auto_point2_pwm, !632, !"sensor_dev_attr_pwm2_auto_point2_pwm", i1 false, i1 false}
!634 = !{ptr @.str.207, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/hwmon/it87.c", i32 1694, i32 8}
!636 = !{ptr @sensor_dev_attr_pwm2_auto_point3_pwm, !635, !"sensor_dev_attr_pwm2_auto_point3_pwm", i1 false, i1 false}
!637 = !{ptr @.str.208, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/hwmon/it87.c", i32 1696, i32 8}
!639 = !{ptr @sensor_dev_attr_pwm2_auto_point4_pwm, !638, !"sensor_dev_attr_pwm2_auto_point4_pwm", i1 false, i1 false}
!640 = !{ptr @.str.209, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/hwmon/it87.c", i32 1698, i32 8}
!642 = !{ptr @sensor_dev_attr_pwm2_auto_point1_temp, !641, !"sensor_dev_attr_pwm2_auto_point1_temp", i1 false, i1 false}
!643 = !{ptr @.str.210, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/hwmon/it87.c", i32 1700, i32 8}
!645 = !{ptr @sensor_dev_attr_pwm2_auto_point1_temp_hyst, !644, !"sensor_dev_attr_pwm2_auto_point1_temp_hyst", i1 false, i1 false}
!646 = !{ptr @.str.211, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/hwmon/it87.c", i32 1702, i32 8}
!648 = !{ptr @sensor_dev_attr_pwm2_auto_point2_temp, !647, !"sensor_dev_attr_pwm2_auto_point2_temp", i1 false, i1 false}
!649 = !{ptr @.str.212, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/hwmon/it87.c", i32 1704, i32 8}
!651 = !{ptr @sensor_dev_attr_pwm2_auto_point3_temp, !650, !"sensor_dev_attr_pwm2_auto_point3_temp", i1 false, i1 false}
!652 = !{ptr @.str.213, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/hwmon/it87.c", i32 1706, i32 8}
!654 = !{ptr @sensor_dev_attr_pwm2_auto_point4_temp, !653, !"sensor_dev_attr_pwm2_auto_point4_temp", i1 false, i1 false}
!655 = !{ptr @.str.214, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/hwmon/it87.c", i32 1708, i32 8}
!657 = !{ptr @sensor_dev_attr_pwm2_auto_start, !656, !"sensor_dev_attr_pwm2_auto_start", i1 false, i1 false}
!658 = !{ptr @.str.215, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/hwmon/it87.c", i32 1710, i32 8}
!660 = !{ptr @sensor_dev_attr_pwm2_auto_slope, !659, !"sensor_dev_attr_pwm2_auto_slope", i1 false, i1 false}
!661 = !{ptr @.str.216, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/hwmon/it87.c", i32 1719, i32 8}
!663 = !{ptr @sensor_dev_attr_pwm3_auto_point1_pwm, !662, !"sensor_dev_attr_pwm3_auto_point1_pwm", i1 false, i1 false}
!664 = !{ptr @.str.217, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/hwmon/it87.c", i32 1721, i32 8}
!666 = !{ptr @sensor_dev_attr_pwm3_auto_point2_pwm, !665, !"sensor_dev_attr_pwm3_auto_point2_pwm", i1 false, i1 false}
!667 = !{ptr @.str.218, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/hwmon/it87.c", i32 1723, i32 8}
!669 = !{ptr @sensor_dev_attr_pwm3_auto_point3_pwm, !668, !"sensor_dev_attr_pwm3_auto_point3_pwm", i1 false, i1 false}
!670 = !{ptr @.str.219, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/hwmon/it87.c", i32 1725, i32 8}
!672 = !{ptr @sensor_dev_attr_pwm3_auto_point4_pwm, !671, !"sensor_dev_attr_pwm3_auto_point4_pwm", i1 false, i1 false}
!673 = !{ptr @.str.220, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/hwmon/it87.c", i32 1727, i32 8}
!675 = !{ptr @sensor_dev_attr_pwm3_auto_point1_temp, !674, !"sensor_dev_attr_pwm3_auto_point1_temp", i1 false, i1 false}
!676 = !{ptr @.str.221, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/hwmon/it87.c", i32 1729, i32 8}
!678 = !{ptr @sensor_dev_attr_pwm3_auto_point1_temp_hyst, !677, !"sensor_dev_attr_pwm3_auto_point1_temp_hyst", i1 false, i1 false}
!679 = !{ptr @.str.222, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/hwmon/it87.c", i32 1731, i32 8}
!681 = !{ptr @sensor_dev_attr_pwm3_auto_point2_temp, !680, !"sensor_dev_attr_pwm3_auto_point2_temp", i1 false, i1 false}
!682 = !{ptr @.str.223, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/hwmon/it87.c", i32 1733, i32 8}
!684 = !{ptr @sensor_dev_attr_pwm3_auto_point3_temp, !683, !"sensor_dev_attr_pwm3_auto_point3_temp", i1 false, i1 false}
!685 = !{ptr @.str.224, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/hwmon/it87.c", i32 1735, i32 8}
!687 = !{ptr @sensor_dev_attr_pwm3_auto_point4_temp, !686, !"sensor_dev_attr_pwm3_auto_point4_temp", i1 false, i1 false}
!688 = !{ptr @.str.225, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/hwmon/it87.c", i32 1737, i32 8}
!690 = !{ptr @sensor_dev_attr_pwm3_auto_start, !689, !"sensor_dev_attr_pwm3_auto_start", i1 false, i1 false}
!691 = !{ptr @.str.226, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/hwmon/it87.c", i32 1739, i32 8}
!693 = !{ptr @sensor_dev_attr_pwm3_auto_slope, !692, !"sensor_dev_attr_pwm3_auto_slope", i1 false, i1 false}
!694 = !{ptr @.str.227, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/hwmon/it87.c", i32 1748, i32 8}
!696 = !{ptr @sensor_dev_attr_pwm4_auto_point1_temp, !695, !"sensor_dev_attr_pwm4_auto_point1_temp", i1 false, i1 false}
!697 = !{ptr @.str.228, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/hwmon/it87.c", i32 1750, i32 8}
!699 = !{ptr @sensor_dev_attr_pwm4_auto_point1_temp_hyst, !698, !"sensor_dev_attr_pwm4_auto_point1_temp_hyst", i1 false, i1 false}
!700 = !{ptr @.str.229, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/hwmon/it87.c", i32 1752, i32 8}
!702 = !{ptr @sensor_dev_attr_pwm4_auto_point2_temp, !701, !"sensor_dev_attr_pwm4_auto_point2_temp", i1 false, i1 false}
!703 = !{ptr @.str.230, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/hwmon/it87.c", i32 1754, i32 8}
!705 = !{ptr @sensor_dev_attr_pwm4_auto_point3_temp, !704, !"sensor_dev_attr_pwm4_auto_point3_temp", i1 false, i1 false}
!706 = !{ptr @.str.231, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/hwmon/it87.c", i32 1756, i32 8}
!708 = !{ptr @sensor_dev_attr_pwm4_auto_start, !707, !"sensor_dev_attr_pwm4_auto_start", i1 false, i1 false}
!709 = !{ptr @.str.232, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/hwmon/it87.c", i32 1758, i32 8}
!711 = !{ptr @sensor_dev_attr_pwm4_auto_slope, !710, !"sensor_dev_attr_pwm4_auto_slope", i1 false, i1 false}
!712 = !{ptr @.str.233, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/hwmon/it87.c", i32 1767, i32 8}
!714 = !{ptr @sensor_dev_attr_pwm5_auto_point1_temp, !713, !"sensor_dev_attr_pwm5_auto_point1_temp", i1 false, i1 false}
!715 = !{ptr @.str.234, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/hwmon/it87.c", i32 1769, i32 8}
!717 = !{ptr @sensor_dev_attr_pwm5_auto_point1_temp_hyst, !716, !"sensor_dev_attr_pwm5_auto_point1_temp_hyst", i1 false, i1 false}
!718 = !{ptr @.str.235, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/hwmon/it87.c", i32 1771, i32 8}
!720 = !{ptr @sensor_dev_attr_pwm5_auto_point2_temp, !719, !"sensor_dev_attr_pwm5_auto_point2_temp", i1 false, i1 false}
!721 = !{ptr @.str.236, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/hwmon/it87.c", i32 1773, i32 8}
!723 = !{ptr @sensor_dev_attr_pwm5_auto_point3_temp, !722, !"sensor_dev_attr_pwm5_auto_point3_temp", i1 false, i1 false}
!724 = !{ptr @.str.237, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/hwmon/it87.c", i32 1775, i32 8}
!726 = !{ptr @sensor_dev_attr_pwm5_auto_start, !725, !"sensor_dev_attr_pwm5_auto_start", i1 false, i1 false}
!727 = !{ptr @.str.238, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/hwmon/it87.c", i32 1777, i32 8}
!729 = !{ptr @sensor_dev_attr_pwm5_auto_slope, !728, !"sensor_dev_attr_pwm5_auto_slope", i1 false, i1 false}
!730 = !{ptr @.str.239, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/hwmon/it87.c", i32 1786, i32 8}
!732 = !{ptr @sensor_dev_attr_pwm6_auto_point1_temp, !731, !"sensor_dev_attr_pwm6_auto_point1_temp", i1 false, i1 false}
!733 = !{ptr @.str.240, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/hwmon/it87.c", i32 1788, i32 8}
!735 = !{ptr @sensor_dev_attr_pwm6_auto_point1_temp_hyst, !734, !"sensor_dev_attr_pwm6_auto_point1_temp_hyst", i1 false, i1 false}
!736 = !{ptr @.str.241, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/hwmon/it87.c", i32 1790, i32 8}
!738 = !{ptr @sensor_dev_attr_pwm6_auto_point2_temp, !737, !"sensor_dev_attr_pwm6_auto_point2_temp", i1 false, i1 false}
!739 = !{ptr @.str.242, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/hwmon/it87.c", i32 1792, i32 8}
!741 = !{ptr @sensor_dev_attr_pwm6_auto_point3_temp, !740, !"sensor_dev_attr_pwm6_auto_point3_temp", i1 false, i1 false}
!742 = !{ptr @.str.243, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/hwmon/it87.c", i32 1794, i32 8}
!744 = !{ptr @sensor_dev_attr_pwm6_auto_start, !743, !"sensor_dev_attr_pwm6_auto_start", i1 false, i1 false}
!745 = !{ptr @.str.244, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../drivers/hwmon/it87.c", i32 1796, i32 8}
!747 = !{ptr @sensor_dev_attr_pwm6_auto_slope, !746, !"sensor_dev_attr_pwm6_auto_slope", i1 false, i1 false}
!748 = !{ptr @it87_dev_pm_ops, !749, !"it87_dev_pm_ops", i1 false, i1 false}
!749 = !{!"../drivers/hwmon/it87.c", i32 3241, i32 8}
!750 = !{ptr @.str.245, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/hwmon/it87.c", i32 3193, i32 3}
!752 = !{ptr @.str.246, !751, !"<string literal>", i1 false, i1 false}
!753 = !{ptr @it87_resume_sio._entry, !751, !"_entry", i1 false, i1 false}
!754 = !{ptr @it87_resume_sio._entry_ptr, !751, !"_entry_ptr", i1 false, i1 false}
!755 = !{ptr @.str.247, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/hwmon/it87.c", i32 3203, i32 3}
!757 = !{ptr @it87_resume_sio.__UNIQUE_ID_ddebug223, !756, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!758 = !{ptr @__param_str_update_vbat, !10, !"__param_str_update_vbat", i1 false, i1 false}
!759 = !{ptr @__param_str_fix_pwm_polarity, !15, !"__param_str_fix_pwm_polarity", i1 false, i1 false}
!760 = !{ptr @.str.248, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/hwmon/it87.c", i32 2468, i32 3}
!762 = !{ptr @.str.249, !761, !"<string literal>", i1 false, i1 false}
!763 = !{ptr @it87_find.__UNIQUE_ID_ddebug221, !761, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!764 = !{ptr @.str.250, !761, !"<string literal>", i1 false, i1 false}
!765 = !{ptr @.str.251, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/hwmon/it87.c", i32 2474, i32 3}
!767 = !{ptr @it87_find._entry, !766, !"_entry", i1 false, i1 false}
!768 = !{ptr @it87_find._entry_ptr, !766, !"_entry_ptr", i1 false, i1 false}
!769 = !{ptr @.str.253, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/hwmon/it87.c", i32 2480, i32 3}
!771 = !{ptr @it87_find._entry.252, !770, !"_entry", i1 false, i1 false}
!772 = !{ptr @it87_find._entry_ptr.254, !770, !"_entry_ptr", i1 false, i1 false}
!773 = !{ptr @.str.256, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../drivers/hwmon/it87.c", i32 2487, i32 2}
!775 = !{ptr @it87_find._entry.255, !774, !"_entry", i1 false, i1 false}
!776 = !{ptr @it87_find._entry_ptr.257, !774, !"_entry_ptr", i1 false, i1 false}
!777 = !{ptr @.str.259, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../drivers/hwmon/it87.c", i32 2575, i32 5}
!779 = !{ptr @it87_find._entry.258, !778, !"_entry", i1 false, i1 false}
!780 = !{ptr @it87_find._entry_ptr.260, !778, !"_entry_ptr", i1 false, i1 false}
!781 = !{ptr @.str.262, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../drivers/hwmon/it87.c", i32 2577, i32 4}
!783 = !{ptr @it87_find._entry.261, !782, !"_entry", i1 false, i1 false}
!784 = !{ptr @it87_find._entry_ptr.263, !782, !"_entry_ptr", i1 false, i1 false}
!785 = !{ptr @.str.265, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../drivers/hwmon/it87.c", i32 2578, i32 4}
!787 = !{ptr @it87_find._entry.264, !786, !"_entry", i1 false, i1 false}
!788 = !{ptr @it87_find._entry_ptr.266, !786, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @.str.268, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../drivers/hwmon/it87.c", i32 2733, i32 5}
!791 = !{ptr @it87_find._entry.267, !790, !"_entry", i1 false, i1 false}
!792 = !{ptr @it87_find._entry_ptr.269, !790, !"_entry_ptr", i1 false, i1 false}
!793 = !{ptr @.str.271, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/hwmon/it87.c", i32 2778, i32 4}
!795 = !{ptr @it87_find._entry.270, !794, !"_entry", i1 false, i1 false}
!796 = !{ptr @it87_find._entry_ptr.272, !794, !"_entry_ptr", i1 false, i1 false}
!797 = !{ptr @.str.274, !798, !"<string literal>", i1 false, i1 false}
!798 = !{!"../drivers/hwmon/it87.c", i32 2803, i32 3}
!799 = !{ptr @it87_find._entry.273, !798, !"_entry", i1 false, i1 false}
!800 = !{ptr @it87_find._entry_ptr.275, !798, !"_entry_ptr", i1 false, i1 false}
!801 = distinct !{null, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../drivers/hwmon/it87.c", i32 2809, i32 28}
!803 = distinct !{null, !804, !"<string literal>", i1 false, i1 false}
!804 = !{!"../drivers/hwmon/it87.c", i32 2810, i32 26}
!805 = !{ptr @.str.279, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../drivers/hwmon/it87.c", i32 2819, i32 4}
!807 = !{ptr @it87_find._entry.278, !806, !"_entry", i1 false, i1 false}
!808 = !{ptr @it87_find._entry_ptr.280, !806, !"_entry_ptr", i1 false, i1 false}
!809 = !{ptr @.str.281, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../drivers/hwmon/it87.c", i32 3273, i32 3}
!811 = !{ptr @.str.282, !810, !"<string literal>", i1 false, i1 false}
!812 = !{ptr @it87_device_add._entry, !810, !"_entry", i1 false, i1 false}
!813 = !{ptr @it87_device_add._entry_ptr, !810, !"_entry_ptr", i1 false, i1 false}
!814 = !{ptr @.str.284, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../drivers/hwmon/it87.c", i32 3280, i32 3}
!816 = !{ptr @it87_device_add._entry.283, !815, !"_entry", i1 false, i1 false}
!817 = !{ptr @it87_device_add._entry_ptr.285, !815, !"_entry_ptr", i1 false, i1 false}
!818 = !{ptr @.str.287, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../drivers/hwmon/it87.c", i32 3286, i32 3}
!820 = !{ptr @it87_device_add._entry.286, !819, !"_entry", i1 false, i1 false}
!821 = !{ptr @it87_device_add._entry_ptr.288, !819, !"_entry_ptr", i1 false, i1 false}
!822 = !{i32 1, !"wchar_size", i32 2}
!823 = !{i32 1, !"min_enum_size", i32 4}
!824 = !{i32 8, !"branch-target-enforcement", i32 0}
!825 = !{i32 8, !"sign-return-address", i32 0}
!826 = !{i32 8, !"sign-return-address-all", i32 0}
!827 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!828 = !{i32 7, !"uwtable", i32 1}
!829 = !{i32 7, !"frame-pointer", i32 2}
!830 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!831 = !{!"auto-init"}
!832 = !{i64 2153451051}
!833 = !{i64 5922485}
!834 = !{i64 5922880}
!835 = !{i64 2153449066}
!836 = !{i8 0, i8 2}
!837 = !{i64 2149055030, i64 2149055035, i64 2149055048, i64 2149055092, i64 2149055126, i64 2149055147}
!838 = !{i32 0, i32 33}
!839 = !{i64 2153485158}
!840 = !{i64 2153485479}
!841 = !{i64 2153485800}
!842 = !{i64 2153486149}
!843 = !{i64 2153484229}
!844 = !{i64 2153484553}
!845 = !{i64 2153481438}
!846 = !{i64 2153481831}
!847 = !{i64 2153482206}
!848 = !{i64 2153482530}
!849 = !{i64 2153486639}
!850 = !{i64 2153486964}
!851 = !{i64 2153482856}
!852 = !{i64 2153483249}
!853 = !{i64 2153483455}
!854 = !{i64 2153483848}
