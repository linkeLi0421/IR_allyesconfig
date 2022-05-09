; ModuleID = '/llk/IR_all_yes/drivers/hwmon/f71882fg.c_pt.bc'
source_filename = "../drivers/hwmon/f71882fg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.f71882fg_sio_data = type { i32 }
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
%struct.f71882fg_data = type { i16, i32, ptr, %struct.mutex, i32, i8, i8, i32, i32, [11 x i8], i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], i8, i8, [4 x i16], [4 x i8], [4 x i8], [2 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], i8, [2 x i8], [4 x i8], [4 x [5 x i8]], [4 x [4 x i8]] }

@__param_str_force_id = internal constant [18 x i8] c"f71882fg.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype183 = internal constant [34 x i8] c"f71882fg.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id184 = internal constant [55 x i8] c"f71882fg.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@f71882fg_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f71882fg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @f71882fg_probe, ptr @f71882fg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description230 = internal constant [57 x i8] c"f71882fg.description=F71882FG Hardware Monitoring Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [68 x i8] c"f71882fg.author=Hans Edgington, Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [37 x i8] c"f71882fg.file=drivers/hwmon/f71882fg\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [21 x i8] c"f71882fg.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_f71882fg__234_2799_f71882fg_init6 = internal global ptr @f71882fg_init, section ".initcall6.init", align 4
@__exitcall_f71882fg_exit = internal global ptr @f71882fg_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f71882fg\00", [23 x i8] zeroinitializer }, align 32
@f71882fg_nr_fans = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\03\02\03\03\03\03\03\04\03\03\03\03\03\02\03", [17 x i8] zeroinitializer }, align 32
@f71882fg_nr_temps = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\02\02\03\03\03\03\03\03\03\03\03\03\03\02\03", [17 x i8] zeroinitializer }, align 32
@f71882fg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@f71882fg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Hardware monitor is powered down\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f71882fg_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hwmon/f71882fg.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f71882fg_probe._entry_ptr = internal global ptr @f71882fg_probe._entry, section ".printk_index", align 4
@f71882fg_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Hardware monitoring not activated\0A\00", [61 x i8] zeroinitializer }, align 32
@f71882fg_probe._entry_ptr.9 = internal global ptr @f71882fg_probe._entry.7, section ".printk_index", align 4
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@f8000_temp_attr = internal global { [15 x %struct.sensor_device_attribute_2], [96 x i8] } { [15 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 2, i8 0 }], [96 x i8] zeroinitializer }, align 32
@f71858fg_temp_attr = internal global { [24 x %struct.sensor_device_attribute_2], [192 x i8] } { [24 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_hyst, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_hyst, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_hyst, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 2, i8 0 }], [192 x i8] zeroinitializer }, align 32
@fxxxx_temp_attr = internal global { [3 x [9 x %struct.sensor_device_attribute_2]], [192 x i8] } { [3 x [9 x %struct.sensor_device_attribute_2]] [[9 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_hyst, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 1, i8 0 }], [9 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_hyst, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 2, i8 0 }], [9 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit, ptr @store_temp_crit }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_hyst, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_alarm, ptr null }, i8 7, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_fault, ptr null }, i8 3, i8 0 }]], [192 x i8] zeroinitializer }, align 32
@f81866_temp_beep_attr = internal global { [3 x [2 x %struct.sensor_device_attribute_2]], [32 x i8] } { [3 x [2 x %struct.sensor_device_attribute_2]] [[2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 4, i8 0 }], [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 5, i8 0 }], [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 6, i8 0 }]], [32 x i8] zeroinitializer }, align 32
@fxxxx_temp_beep_attr = internal global { [3 x [2 x %struct.sensor_device_attribute_2]], [32 x i8] } { [3 x [2 x %struct.sensor_device_attribute_2]] [[2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 5, i8 0 }], [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 6, i8 0 }], [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_beep, ptr @store_temp_beep }, i8 7, i8 0 }]], [32 x i8] zeroinitializer }, align 32
@fxxxx_in_attr = internal global { [11 x %struct.sensor_device_attribute_2], [64 x i8] } { [11 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 7, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 8, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 9, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 10, i8 0 }], [64 x i8] zeroinitializer }, align 32
@fxxxx_in1_alarm_attr = internal global { [3 x %struct.sensor_device_attribute_2], [32 x i8] } { [3 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_beep, ptr @store_in_beep }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_alarm, ptr null }, i8 1, i8 0 }], [32 x i8] zeroinitializer }, align 32
@f71808a_fan3_attr = internal global { [3 x %struct.sensor_device_attribute_2], [32 x i8] } { [3 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_alarm, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_simple_pwm, ptr @store_simple_pwm }, i8 2, i8 0 }], [32 x i8] zeroinitializer }, align 32
@f8000_fan_attr = internal global { [1 x %struct.sensor_device_attribute_2], [32 x i8] } { [1 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 3, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@f71882fg_names = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71808e\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71808a\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f71858fg\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f71862fg\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71868a\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f71869\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71869a\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f71889fg\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f71889ed\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71889a\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"f8000\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f81768d\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f81865f\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f81866a\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_beep\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_beep\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_beep\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_crit_beep\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_beep\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_crit_beep\00", [16 x i8] zeroinitializer }, align 32
@f71882fg_has_in = internal constant { <{ [11 x i8], [11 x i8], <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i8] }>, [59 x i8] } { <{ [11 x i8], [11 x i8], <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i8] }> <{ [11 x i8] c"\01\01\01\01\01\01\00\01\01\00\00", [11 x i8] c"\01\01\01\01\00\00\00\01\01\00\00", <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 1, i8 1, [8 x i8] zeroinitializer }>, [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\01\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\01\00\00", <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 1, i8 1, [8 x i8] zeroinitializer }>, [11 x i8] c"\01\01\01\01\01\01\01\01\01\01\01", [11 x i8] c"\01\01\01\01\01\01\01\00\00\00\00", [11 x i8] c"\01\01\01\01\01\01\01\01\00\00\00" }>, [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@f71882fg_create_fan_sysfs_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 2260, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid (reserved) pwm settings: 0x%02x, skipping fan %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"f71882fg_create_fan_sysfs_files\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@f71882fg_create_fan_sysfs_files._entry_ptr = internal global ptr @f71882fg_create_fan_sysfs_files._entry, section ".printk_index", align 4
@fxxxx_fan_attr = internal global { [4 x [6 x %struct.sensor_device_attribute_2]], [192 x i8] } { [4 x [6 x %struct.sensor_device_attribute_2]] [[6 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_full_speed, ptr @store_fan_full_speed }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_alarm, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_interpolate, ptr @store_pwm_interpolate }, i8 0, i8 0 }], [6 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_full_speed, ptr @store_fan_full_speed }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_alarm, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_interpolate, ptr @store_pwm_interpolate }, i8 1, i8 0 }], [6 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_full_speed, ptr @store_fan_full_speed }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_alarm, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_interpolate, ptr @store_pwm_interpolate }, i8 2, i8 0 }], [6 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_full_speed, ptr @store_fan_full_speed }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_alarm, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_interpolate, ptr @store_pwm_interpolate }, i8 3, i8 0 }]], [192 x i8] zeroinitializer }, align 32
@fxxxx_fan_beep_attr = internal global { [4 x %struct.sensor_device_attribute_2], [32 x i8] } { [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_beep, ptr @store_fan_beep }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_beep, ptr @store_fan_beep }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_beep, ptr @store_fan_beep }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_beep, ptr @store_fan_beep }, i8 3, i8 0 }], [32 x i8] zeroinitializer }, align 32
@f71882fg_create_fan_sysfs_files._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.4, i32 2278, ptr @.str.85, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fan: %d is in %s mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f71882fg_create_fan_sysfs_files._entry_ptr.86 = internal global ptr @f71882fg_create_fan_sysfs_files._entry.83, section ".printk_index", align 4
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"duty-cycle\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RPM\00", [28 x i8] zeroinitializer }, align 32
@f71882fg_create_fan_sysfs_files._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.4, i32 2296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Auto pwm controlled by raw digital data, disabling pwm auto_point sysfs attributes for fan %d\0A\00", [33 x i8] zeroinitializer }, align 32
@f71882fg_create_fan_sysfs_files._entry_ptr.91 = internal global ptr @f71882fg_create_fan_sysfs_files._entry.89, section ".printk_index", align 4
@f71862fg_auto_pwm_attr = internal global { [3 x [7 x %struct.sensor_device_attribute_2]], [160 x i8] } { [3 x [7 x %struct.sensor_device_attribute_2]] [[7 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 3 }], [7 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 3 }], [7 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 3 }]], [160 x i8] zeroinitializer }, align 32
@f71869_auto_pwm_attr = internal global { [3 x [8 x %struct.sensor_device_attribute_2]], [192 x i8] } { [3 x [8 x %struct.sensor_device_attribute_2]] [[8 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 3 }], [8 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 3 }], [8 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 3 }]], [192 x i8] zeroinitializer }, align 32
@f8000_auto_pwm_attr = internal global { [3 x [14 x %struct.sensor_device_attribute_2]], [320 x i8] } { [3 x [14 x %struct.sensor_device_attribute_2]] [[14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 3 }], [14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 3 }], [14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 3 }]], [320 x i8] zeroinitializer }, align 32
@fxxxx_auto_pwm_attr = internal global { [4 x [14 x %struct.sensor_device_attribute_2]], [448 x i8] } { [4 x [14 x %struct.sensor_device_attribute_2]] [[14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 0, i8 3 }], [14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 1, i8 3 }], [14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.197, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.198, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 2, i8 3 }], [14 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_channel, ptr @store_pwm_auto_point_channel }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @store_pwm_auto_point_pwm }, i8 3, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.208, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.209, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.210, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @store_pwm_auto_point_temp }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.211, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr @store_pwm_auto_point_temp_hyst }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.214, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp_hyst, ptr null }, i8 3, i8 3 }]], [448 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fan1_full_speed\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm1_interpolate\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fan2_full_speed\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm2_interpolate\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fan3_full_speed\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm3_interpolate\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fan4_full_speed\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm4_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm4_interpolate\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan4_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point2_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm2_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm2_auto_point2_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm3_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm3_auto_point2_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point3_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point4_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point3_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point4_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point3_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point4_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point3_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point4_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm2_auto_point3_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm2_auto_point4_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm3_auto_point3_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm3_auto_point4_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm4_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm4_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm4_auto_point2_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm4_auto_point3_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm4_auto_point4_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@f71882fg_find.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.215, ptr @.str.4, ptr @.str.216, i8 2, i8 -112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f71882fg_find\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not a Fintek device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"f71882fg: Not a Fintek device\0A\00", [33 x i8] zeroinitializer }, align 32
@f71882fg_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.215, ptr @.str.4, i32 2681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016f71882fg: Unsupported Fintek device: %04x\0A\00", [51 x i8] zeroinitializer }, align 32
@f71882fg_find._entry_ptr = internal global ptr @f71882fg_find._entry, section ".printk_index", align 4
@f71882fg_find._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.215, ptr @.str.4, i32 2692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014f71882fg: Device not activated\0A\00", [62 x i8] zeroinitializer }, align 32
@f71882fg_find._entry_ptr.221 = internal global ptr @f71882fg_find._entry.219, section ".printk_index", align 4
@f71882fg_find._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.215, ptr @.str.4, i32 2699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014f71882fg: Base address not set\0A\00", [62 x i8] zeroinitializer }, align 32
@f71882fg_find._entry_ptr.224 = internal global ptr @f71882fg_find._entry.222, section ".printk_index", align 4
@f71882fg_find._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.215, ptr @.str.4, i32 2708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016f71882fg: Found %s chip at %#x, revision %d\0A\00", [49 x i8] zeroinitializer }, align 32
@f71882fg_find._entry_ptr.227 = internal global ptr @f71882fg_find._entry.225, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@superio_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.4, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013f71882fg: I/O address 0x%04x already in use\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"superio_enter\00", [18 x i8] zeroinitializer }, align 32
@superio_enter._entry_ptr = internal global ptr @superio_enter._entry, section ".printk_index", align 4
@f71882fg_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.4, i32 2735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013f71882fg: Device resource addition failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f71882fg_device_add\00", [44 x i8] zeroinitializer }, align 32
@f71882fg_device_add._entry_ptr = internal global ptr @f71882fg_device_add._entry, section ".printk_index", align 4
@f71882fg_device_add._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.231, ptr @.str.4, i32 2742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013f71882fg: Platform data allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@f71882fg_device_add._entry_ptr.234 = internal global ptr @f71882fg_device_add._entry.232, section ".printk_index", align 4
@f71882fg_device_add._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.231, ptr @.str.4, i32 2748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013f71882fg: Device addition failed\0A\00", [60 x i8] zeroinitializer }, align 32
@f71882fg_device_add._entry_ptr.237 = internal global ptr @f71882fg_device_add._entry.235, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 11, i64 14]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 11, i64 14]
@__sancov_gen_cov_switch_values.239 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 5, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.240 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.241 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 5, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.242 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 5, i64 11]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 11]
@__sancov_gen_cov_switch_values.244 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 11, i64 14]
@__sancov_gen_cov_switch_values.245 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 11]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.248 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.252 = internal global [18 x i64] [i64 16, i64 16, i64 1287, i64 1345, i64 1409, i64 1537, i64 1796, i64 1827, i64 2068, i64 2305, i64 2313, i64 4097, i64 4101, i64 4103, i64 4112, i64 4358, i64 4624, i64 5378]
@___asan_gen_.253 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 103, i32 23 }
@___asan_gen_.256 = private unnamed_addr constant [14 x i8] c"f71882fg_pdev\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 237, i32 32 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"f71882fg_driver\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 387, i32 31 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 389, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"f71882fg_nr_fans\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 183, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"f71882fg_nr_temps\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 219, i32 19 }
@___asan_gen_.271 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2350, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2355, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2359, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [16 x i8] c"f8000_temp_attr\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 533, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant [19 x i8] c"f71858fg_temp_attr\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 401, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"fxxxx_temp_attr\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 441, i32 41 }
@___asan_gen_.313 = private unnamed_addr constant [22 x i8] c"f81866_temp_beep_attr\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 510, i32 41 }
@___asan_gen_.316 = private unnamed_addr constant [21 x i8] c"fxxxx_temp_beep_attr\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 493, i32 41 }
@___asan_gen_.319 = private unnamed_addr constant [14 x i8] c"fxxxx_in_attr\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 558, i32 41 }
@___asan_gen_.322 = private unnamed_addr constant [21 x i8] c"fxxxx_in1_alarm_attr\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 573, i32 41 }
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"f71808a_fan3_attr\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 629, i32 41 }
@___asan_gen_.328 = private unnamed_addr constant [15 x i8] c"f8000_fan_attr\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 970, i32 41 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 395, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2207, i32 22 }
@___asan_gen_.337 = private unnamed_addr constant [15 x i8] c"f71882fg_names\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 111, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 112, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 113, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 114, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 115, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 116, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 117, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 118, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 120, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 121, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 122, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 123, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 124, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 125, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 126, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 534, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 535, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 537, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 539, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 540, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 541, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 542, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 544, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 546, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 547, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 548, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 549, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 551, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 553, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 554, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1584, i32 22 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1772, i32 23 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1774, i32 23 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 407, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 408, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 410, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 412, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 419, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 420, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 422, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 424, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 431, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 432, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 434, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 436, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 458, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 473, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 488, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 511, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 513, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 516, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 518, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 521, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 523, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [16 x i8] c"f71882fg_has_in\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 129, i32 19 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 559, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 560, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 561, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 562, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 563, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 564, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 565, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 566, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 567, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 568, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 569, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 574, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 576, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 578, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2257, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant [15 x i8] c"fxxxx_fan_attr\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 582, i32 41 }
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c"fxxxx_fan_beep_attr\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 637, i32 41 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2277, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2293, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant [23 x i8] c"f71862fg_auto_pwm_attr\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 652, i32 41 }
@___asan_gen_.586 = private unnamed_addr constant [21 x i8] c"f71869_auto_pwm_attr\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 725, i32 41 }
@___asan_gen_.589 = private unnamed_addr constant [20 x i8] c"f8000_auto_pwm_attr\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 979, i32 41 }
@___asan_gen_.592 = private unnamed_addr constant [20 x i8] c"fxxxx_auto_pwm_attr\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 803, i32 41 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 583, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 584, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 587, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 588, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 589, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 591, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 594, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 595, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 598, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 599, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 600, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 602, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 605, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 606, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 609, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 610, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 611, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 613, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 616, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 617, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 620, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 621, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 622, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 624, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 638, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 640, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 642, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 644, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 653, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 656, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 659, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 662, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 665, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 668, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 672, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 675, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 678, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 681, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 684, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 687, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 690, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 694, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 697, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 700, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 703, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 706, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 709, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 712, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 716, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 735, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 760, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 785, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 983, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 986, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 989, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 992, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 995, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 998, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1001, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1004, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1007, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1010, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1014, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1016, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1018, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1024, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1027, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1030, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1033, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1036, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1039, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1042, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1045, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1048, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1051, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1055, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1057, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1059, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1065, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1068, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1071, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1074, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1077, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1080, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1083, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1086, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1089, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1092, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1096, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1098, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1100, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 816, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 819, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 828, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 831, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 840, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 842, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 857, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 860, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 869, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 872, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 881, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 883, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 898, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 901, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 910, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 913, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 922, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 924, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 927, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 930, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 933, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 936, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 939, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 942, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 945, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 948, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 951, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 954, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 957, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 961, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 963, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 965, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2626, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2680, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2692, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2699, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2706, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 1123, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2735, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2742, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1025 = private constant [28 x i8] c"../drivers/hwmon/f71882fg.c\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1025, i32 2748, i32 3 }
@llvm.compiler.used = appending global [281 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_force_id184, ptr @__UNIQUE_ID_force_idtype183, ptr @__UNIQUE_ID_license233, ptr @__exitcall_f71882fg_exit, ptr @__initcall__kmod_f71882fg__234_2799_f71882fg_init6, ptr @__param_force_id, ptr @f71882fg_create_fan_sysfs_files._entry, ptr @f71882fg_create_fan_sysfs_files._entry.83, ptr @f71882fg_create_fan_sysfs_files._entry.89, ptr @f71882fg_create_fan_sysfs_files._entry_ptr, ptr @f71882fg_create_fan_sysfs_files._entry_ptr.86, ptr @f71882fg_create_fan_sysfs_files._entry_ptr.91, ptr @f71882fg_device_add._entry, ptr @f71882fg_device_add._entry.232, ptr @f71882fg_device_add._entry.235, ptr @f71882fg_device_add._entry_ptr, ptr @f71882fg_device_add._entry_ptr.234, ptr @f71882fg_device_add._entry_ptr.237, ptr @f71882fg_exit, ptr @f71882fg_find._entry, ptr @f71882fg_find._entry.219, ptr @f71882fg_find._entry.222, ptr @f71882fg_find._entry.225, ptr @f71882fg_find._entry_ptr, ptr @f71882fg_find._entry_ptr.221, ptr @f71882fg_find._entry_ptr.224, ptr @f71882fg_find._entry_ptr.227, ptr @f71882fg_probe._entry, ptr @f71882fg_probe._entry.7, ptr @f71882fg_probe._entry_ptr, ptr @f71882fg_probe._entry_ptr.9, ptr @superio_enter._entry, ptr @superio_enter._entry_ptr, ptr @force_id, ptr @f71882fg_pdev, ptr @f71882fg_driver, ptr @.str, ptr @f71882fg_nr_fans, ptr @f71882fg_nr_temps, ptr @f71882fg_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @dev_attr_name, ptr @f8000_temp_attr, ptr @f71858fg_temp_attr, ptr @fxxxx_temp_attr, ptr @f81866_temp_beep_attr, ptr @fxxxx_temp_beep_attr, ptr @fxxxx_in_attr, ptr @fxxxx_in1_alarm_attr, ptr @f71808a_fan3_attr, ptr @f8000_fan_attr, ptr @.str.10, ptr @.str.11, ptr @f71882fg_names, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @f71882fg_has_in, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @fxxxx_fan_attr, ptr @fxxxx_fan_beep_attr, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @f71862fg_auto_pwm_attr, ptr @f71869_auto_pwm_attr, ptr @f8000_auto_pwm_attr, ptr @fxxxx_auto_pwm_attr, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.236], section "llvm.metadata"
@0 = internal global [258 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_nr_fans to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_nr_temps to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f8000_temp_attr to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71858fg_temp_attr to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_temp_attr to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81866_temp_beep_attr to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_temp_beep_attr to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_in_attr to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_in1_alarm_attr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71808a_fan3_attr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f8000_fan_attr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_names to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_has_in to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_create_fan_sysfs_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_fan_attr to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_fan_beep_attr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_create_fan_sysfs_files._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_create_fan_sysfs_files._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71862fg_auto_pwm_attr to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71869_auto_pwm_attr to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f8000_auto_pwm_attr to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxxxx_auto_pwm_attr to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_find._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_find._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_find._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @superio_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_device_add._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71882fg_device_add._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @f71882fg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @f71882fg_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @f71882fg_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @f71882fg_init() #0 section ".init.text" align 64 {
entry:
  %sio_data = alloca %struct.f71882fg_sio_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sio_data) #9
  %0 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sio_data, align 4
  %call = call fastcc i32 @f71882fg_find(i32 noundef 46, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @f71882fg_find(i32 noundef 78, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %address.022 = phi i32 [ %call1, %if.end.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @f71882fg_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = call fastcc i32 @f71882fg_device_add(i32 noundef %address.022, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %exit_driver

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_driver:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @platform_driver_unregister(ptr noundef nonnull @f71882fg_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_driver, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %exit_driver ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sio_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f71882fg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [15 x i8], ptr @f71882fg_nr_fans, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx2 = getelementptr [15 x i8], ptr @f71882fg_nr_temps, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 236, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #9
  %8 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call6, align 4
  %conv7 = trunc i32 %9 to i16
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv7, ptr %call.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %type9 = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type9, align 4
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %lor.rhs [
    i32 2, label %if.end.lor.end_crit_edge
    i32 11, label %if.end.lor.end_crit_edge478
    i32 14, label %if.end.lor.end_crit_edge479
  ]

if.end.lor.end_crit_edge479:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.end.lor.end_crit_edge478:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge, %if.end.lor.end_crit_edge478, %if.end.lor.end_crit_edge479
  %15 = phi i32 [ 0, %if.end.lor.end_crit_edge ], [ 1, %lor.rhs ], [ 0, %if.end.lor.end_crit_edge478 ], [ 0, %if.end.lor.end_crit_edge479 ]
  %temp_start = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %temp_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %temp_start, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @f71882fg_probe.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call.i, align 4
  %conv.i = zext i16 %19 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %20 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 1) #9, !srcloc !535
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %call.i, align 4
  %conv3.i = zext i16 %22 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %23 = inttoptr i32 %add6.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv19 = zext i8 %24 to i32
  %and = and i32 %conv19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end26:                                         ; preds = %lor.end
  %and28 = and i32 %conv19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %call37 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.exit_unregister_sysfs_crit_edge

if.end35.exit_unregister_sysfs_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.end40:                                         ; preds = %if.end35
  %and42 = and i32 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end104_crit_edge, label %if.then44

if.end40.if.end104_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then44:                                        ; preds = %if.end40
  %25 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type9, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %26, label %sw.default [
    i32 2, label %sw.bb
    i32 11, label %for.body.i261.preheader
    i32 14, label %if.then44.for.body.i272_crit_edge
  ]

if.then44.for.body.i272_crit_edge:                ; preds = %if.then44
  br label %for.body.i272

for.body.i261.preheader:                          ; preds = %if.then44
  %call.i259 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @f8000_temp_attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool.not.i260 = icmp eq i32 %call.i259, 0
  br i1 %tobool.not.i260, label %for.cond.i256, label %for.body.i261.preheader.exit_unregister_sysfs_crit_edge

for.body.i261.preheader.exit_unregister_sysfs_crit_edge: ; preds = %for.body.i261.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

sw.bb:                                            ; preds = %if.then44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call.i, align 4
  %conv.i237 = zext i16 %29 to i32
  %add1.i238 = add nuw nsw i32 %conv.i237, -18874363
  %30 = inttoptr i32 %add1.i238 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 105) #9, !srcloc !535
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %call.i, align 4
  %conv3.i239 = zext i16 %32 to i32
  %add6.i240 = add nuw nsw i32 %conv3.i239, -18874362
  %33 = inttoptr i32 %add6.i240 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %temp_config = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 26
  %35 = ptrtoint ptr %temp_config to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %temp_config, align 1
  %36 = and i8 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool50.not = icmp eq i8 %36, 0
  br i1 %tobool50.not, label %sw.bb.for.body.i250_crit_edge, label %for.body.i.preheader

sw.bb.for.body.i250_crit_edge:                    ; preds = %sw.bb
  br label %for.body.i250

for.body.i.preheader:                             ; preds = %sw.bb
  %call.i241 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @f8000_temp_attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool.not.i = icmp eq i32 %call.i241, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.preheader.exit_unregister_sysfs_crit_edge

for.body.i.preheader.exit_unregister_sysfs_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i:                                       ; preds = %for.body.i.preheader
  %call.i241.1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.1)
  %tobool.not.i.1 = icmp eq i32 %call.i241.1, 0
  br i1 %tobool.not.i.1, label %for.cond.i.1, label %for.cond.i.exit_unregister_sysfs_crit_edge

for.cond.i.exit_unregister_sysfs_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.1:                                     ; preds = %for.cond.i
  %call.i241.2 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.2)
  %tobool.not.i.2 = icmp eq i32 %call.i241.2, 0
  br i1 %tobool.not.i.2, label %for.cond.i.2, label %for.cond.i.1.exit_unregister_sysfs_crit_edge

for.cond.i.1.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %call.i241.3 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.3)
  %tobool.not.i.3 = icmp eq i32 %call.i241.3, 0
  br i1 %tobool.not.i.3, label %for.cond.i.3, label %for.cond.i.2.exit_unregister_sysfs_crit_edge

for.cond.i.2.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %call.i241.4 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.4)
  %tobool.not.i.4 = icmp eq i32 %call.i241.4, 0
  br i1 %tobool.not.i.4, label %for.cond.i.4, label %for.cond.i.3.exit_unregister_sysfs_crit_edge

for.cond.i.3.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %call.i241.5 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.5)
  %tobool.not.i.5 = icmp eq i32 %call.i241.5, 0
  br i1 %tobool.not.i.5, label %for.cond.i.5, label %for.cond.i.4.exit_unregister_sysfs_crit_edge

for.cond.i.4.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %call.i241.6 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.6)
  %tobool.not.i.6 = icmp eq i32 %call.i241.6, 0
  br i1 %tobool.not.i.6, label %for.cond.i.6, label %for.cond.i.5.exit_unregister_sysfs_crit_edge

for.cond.i.5.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %call.i241.7 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 7)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.7)
  %tobool.not.i.7 = icmp eq i32 %call.i241.7, 0
  br i1 %tobool.not.i.7, label %for.cond.i.7, label %for.cond.i.6.exit_unregister_sysfs_crit_edge

for.cond.i.6.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.7:                                     ; preds = %for.cond.i.6
  %call.i241.8 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 8)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.8)
  %tobool.not.i.8 = icmp eq i32 %call.i241.8, 0
  br i1 %tobool.not.i.8, label %for.cond.i.8, label %for.cond.i.7.exit_unregister_sysfs_crit_edge

for.cond.i.7.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.8:                                     ; preds = %for.cond.i.7
  %call.i241.9 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 9)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.9)
  %tobool.not.i.9 = icmp eq i32 %call.i241.9, 0
  br i1 %tobool.not.i.9, label %for.cond.i.9, label %for.cond.i.8.exit_unregister_sysfs_crit_edge

for.cond.i.8.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.9:                                     ; preds = %for.cond.i.8
  %call.i241.10 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 10)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.10)
  %tobool.not.i.10 = icmp eq i32 %call.i241.10, 0
  br i1 %tobool.not.i.10, label %for.cond.i.10, label %for.cond.i.9.exit_unregister_sysfs_crit_edge

for.cond.i.9.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.10:                                    ; preds = %for.cond.i.9
  %call.i241.11 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 11)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.11)
  %tobool.not.i.11 = icmp eq i32 %call.i241.11, 0
  br i1 %tobool.not.i.11, label %for.cond.i.11, label %for.cond.i.10.exit_unregister_sysfs_crit_edge

for.cond.i.10.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.11:                                    ; preds = %for.cond.i.10
  %call.i241.12 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 12)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.12)
  %tobool.not.i.12 = icmp eq i32 %call.i241.12, 0
  br i1 %tobool.not.i.12, label %for.cond.i.12, label %for.cond.i.11.exit_unregister_sysfs_crit_edge

for.cond.i.11.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.12:                                    ; preds = %for.cond.i.11
  %call.i241.13 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 13)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.13)
  %tobool.not.i.13 = icmp eq i32 %call.i241.13, 0
  br i1 %tobool.not.i.13, label %for.cond.i.13, label %for.cond.i.12.exit_unregister_sysfs_crit_edge

for.cond.i.12.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.13:                                    ; preds = %for.cond.i.12
  %call.i241.14 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 14)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.14)
  %tobool.not.i.14 = icmp eq i32 %call.i241.14, 0
  br i1 %tobool.not.i.14, label %for.cond.i.13.if.end62thread-pre-split_crit_edge, label %for.cond.i.13.exit_unregister_sysfs_crit_edge

for.cond.i.13.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.13.if.end62thread-pre-split_crit_edge: ; preds = %for.cond.i.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62thread-pre-split

for.cond.i245:                                    ; preds = %for.body.i250
  %inc.i243 = add nuw nsw i32 %i.06.i246, 1
  %exitcond.not.i244 = icmp eq i32 %inc.i243, 24
  br i1 %exitcond.not.i244, label %for.cond.i245.if.end62thread-pre-split_crit_edge, label %for.cond.i245.for.body.i250_crit_edge

for.cond.i245.for.body.i250_crit_edge:            ; preds = %for.cond.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i250

for.cond.i245.if.end62thread-pre-split_crit_edge: ; preds = %for.cond.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62thread-pre-split

for.body.i250:                                    ; preds = %for.cond.i245.for.body.i250_crit_edge, %sw.bb.for.body.i250_crit_edge
  %i.06.i246 = phi i32 [ %inc.i243, %for.cond.i245.for.body.i250_crit_edge ], [ 0, %sw.bb.for.body.i250_crit_edge ]
  %arrayidx.i247 = getelementptr %struct.sensor_device_attribute_2, ptr @f71858fg_temp_attr, i32 %i.06.i246
  %call.i248 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i247) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool.not.i249 = icmp eq i32 %call.i248, 0
  br i1 %tobool.not.i249, label %for.cond.i245, label %for.body.i250.exit_unregister_sysfs_crit_edge

for.body.i250.exit_unregister_sysfs_crit_edge:    ; preds = %for.body.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256:                                    ; preds = %for.body.i261.preheader
  %call.i259.1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.1)
  %tobool.not.i260.1 = icmp eq i32 %call.i259.1, 0
  br i1 %tobool.not.i260.1, label %for.cond.i256.1, label %for.cond.i256.exit_unregister_sysfs_crit_edge

for.cond.i256.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i256
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.1:                                  ; preds = %for.cond.i256
  %call.i259.2 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.2)
  %tobool.not.i260.2 = icmp eq i32 %call.i259.2, 0
  br i1 %tobool.not.i260.2, label %for.cond.i256.2, label %for.cond.i256.1.exit_unregister_sysfs_crit_edge

for.cond.i256.1.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.2:                                  ; preds = %for.cond.i256.1
  %call.i259.3 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.3)
  %tobool.not.i260.3 = icmp eq i32 %call.i259.3, 0
  br i1 %tobool.not.i260.3, label %for.cond.i256.3, label %for.cond.i256.2.exit_unregister_sysfs_crit_edge

for.cond.i256.2.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.3:                                  ; preds = %for.cond.i256.2
  %call.i259.4 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.4)
  %tobool.not.i260.4 = icmp eq i32 %call.i259.4, 0
  br i1 %tobool.not.i260.4, label %for.cond.i256.4, label %for.cond.i256.3.exit_unregister_sysfs_crit_edge

for.cond.i256.3.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.4:                                  ; preds = %for.cond.i256.3
  %call.i259.5 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.5)
  %tobool.not.i260.5 = icmp eq i32 %call.i259.5, 0
  br i1 %tobool.not.i260.5, label %for.cond.i256.5, label %for.cond.i256.4.exit_unregister_sysfs_crit_edge

for.cond.i256.4.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.5:                                  ; preds = %for.cond.i256.4
  %call.i259.6 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.6)
  %tobool.not.i260.6 = icmp eq i32 %call.i259.6, 0
  br i1 %tobool.not.i260.6, label %for.cond.i256.6, label %for.cond.i256.5.exit_unregister_sysfs_crit_edge

for.cond.i256.5.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.6:                                  ; preds = %for.cond.i256.5
  %call.i259.7 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 7)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.7)
  %tobool.not.i260.7 = icmp eq i32 %call.i259.7, 0
  br i1 %tobool.not.i260.7, label %for.cond.i256.7, label %for.cond.i256.6.exit_unregister_sysfs_crit_edge

for.cond.i256.6.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.7:                                  ; preds = %for.cond.i256.6
  %call.i259.8 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 8)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.8)
  %tobool.not.i260.8 = icmp eq i32 %call.i259.8, 0
  br i1 %tobool.not.i260.8, label %for.cond.i256.8, label %for.cond.i256.7.exit_unregister_sysfs_crit_edge

for.cond.i256.7.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.8:                                  ; preds = %for.cond.i256.7
  %call.i259.9 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 9)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.9)
  %tobool.not.i260.9 = icmp eq i32 %call.i259.9, 0
  br i1 %tobool.not.i260.9, label %for.cond.i256.9, label %for.cond.i256.8.exit_unregister_sysfs_crit_edge

for.cond.i256.8.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.9:                                  ; preds = %for.cond.i256.8
  %call.i259.10 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 10)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.10)
  %tobool.not.i260.10 = icmp eq i32 %call.i259.10, 0
  br i1 %tobool.not.i260.10, label %for.cond.i256.10, label %for.cond.i256.9.exit_unregister_sysfs_crit_edge

for.cond.i256.9.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i256.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.10:                                 ; preds = %for.cond.i256.9
  %call.i259.11 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 11)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.11)
  %tobool.not.i260.11 = icmp eq i32 %call.i259.11, 0
  br i1 %tobool.not.i260.11, label %for.cond.i256.11, label %for.cond.i256.10.exit_unregister_sysfs_crit_edge

for.cond.i256.10.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i256.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.11:                                 ; preds = %for.cond.i256.10
  %call.i259.12 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 12)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.12)
  %tobool.not.i260.12 = icmp eq i32 %call.i259.12, 0
  br i1 %tobool.not.i260.12, label %for.cond.i256.12, label %for.cond.i256.11.exit_unregister_sysfs_crit_edge

for.cond.i256.11.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i256.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.12:                                 ; preds = %for.cond.i256.11
  %call.i259.13 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 13)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.13)
  %tobool.not.i260.13 = icmp eq i32 %call.i259.13, 0
  br i1 %tobool.not.i260.13, label %for.cond.i256.13, label %for.cond.i256.12.exit_unregister_sysfs_crit_edge

for.cond.i256.12.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i256.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.13:                                 ; preds = %for.cond.i256.12
  %call.i259.14 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 14)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.14)
  %tobool.not.i260.14 = icmp eq i32 %call.i259.14, 0
  br i1 %tobool.not.i260.14, label %for.cond.i256.13.if.end62thread-pre-split_crit_edge, label %for.cond.i256.13.exit_unregister_sysfs_crit_edge

for.cond.i256.13.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i256.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i256.13.if.end62thread-pre-split_crit_edge: ; preds = %for.cond.i256.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62thread-pre-split

for.cond.i267:                                    ; preds = %for.body.i272
  %inc.i265 = add nuw nsw i32 %i.06.i268, 1
  %exitcond.not.i266 = icmp eq i32 %inc.i265, 24
  br i1 %exitcond.not.i266, label %for.cond.i267.if.end62thread-pre-split_crit_edge, label %for.cond.i267.for.body.i272_crit_edge

for.cond.i267.for.body.i272_crit_edge:            ; preds = %for.cond.i267
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i272

for.cond.i267.if.end62thread-pre-split_crit_edge: ; preds = %for.cond.i267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62thread-pre-split

for.body.i272:                                    ; preds = %for.cond.i267.for.body.i272_crit_edge, %if.then44.for.body.i272_crit_edge
  %i.06.i268 = phi i32 [ %inc.i265, %for.cond.i267.for.body.i272_crit_edge ], [ 0, %if.then44.for.body.i272_crit_edge ]
  %arrayidx.i269 = getelementptr %struct.sensor_device_attribute_2, ptr @f71858fg_temp_attr, i32 %i.06.i268
  %call.i270 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i269) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool.not.i271 = icmp eq i32 %call.i270, 0
  br i1 %tobool.not.i271, label %for.cond.i267, label %for.body.i272.exit_unregister_sysfs_crit_edge

for.body.i272.exit_unregister_sysfs_crit_edge:    ; preds = %for.body.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

sw.default:                                       ; preds = %if.then44
  %mul = mul nuw nsw i32 %conv3, 9
  br label %for.body.i283

for.cond.i278:                                    ; preds = %for.body.i283
  %inc.i276 = add nuw nsw i32 %i.06.i279, 1
  %exitcond.not.i277 = icmp eq i32 %inc.i276, %mul
  br i1 %exitcond.not.i277, label %for.cond.i278.if.end62thread-pre-split_crit_edge, label %for.cond.i278.for.body.i283_crit_edge

for.cond.i278.for.body.i283_crit_edge:            ; preds = %for.cond.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i283

for.cond.i278.if.end62thread-pre-split_crit_edge: ; preds = %for.cond.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62thread-pre-split

for.body.i283:                                    ; preds = %for.cond.i278.for.body.i283_crit_edge, %sw.default
  %i.06.i279 = phi i32 [ %inc.i276, %for.cond.i278.for.body.i283_crit_edge ], [ 0, %sw.default ]
  %arrayidx.i280 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_temp_attr, i32 %i.06.i279
  %call.i281 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i280) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool.not.i282 = icmp eq i32 %call.i281, 0
  br i1 %tobool.not.i282, label %for.cond.i278, label %for.body.i283.exit_unregister_sysfs_crit_edge

for.body.i283.exit_unregister_sysfs_crit_edge:    ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.end62thread-pre-split:                         ; preds = %for.cond.i278.if.end62thread-pre-split_crit_edge, %for.cond.i267.if.end62thread-pre-split_crit_edge, %for.cond.i256.13.if.end62thread-pre-split_crit_edge, %for.cond.i245.if.end62thread-pre-split_crit_edge, %for.cond.i.13.if.end62thread-pre-split_crit_edge
  %37 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %type9, align 4
  %38 = lshr i32 2053, %.pr
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool65.not.not = icmp eq i32 %39, 0
  br i1 %tobool65.not.not, label %if.then66, label %if.end62thread-pre-split.if.end80_crit_edge

if.end62thread-pre-split.if.end80_crit_edge:      ; preds = %if.end62thread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then66:                                        ; preds = %if.end62thread-pre-split
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr)
  %cmp68 = icmp eq i32 %.pr, 14
  %mul71 = shl nuw nsw i32 %conv3, 1
  br i1 %cmp68, label %if.then66.for.body.i295_crit_edge, label %if.then66.for.body.i307_crit_edge

if.then66.for.body.i307_crit_edge:                ; preds = %if.then66
  br label %for.body.i307

if.then66.for.body.i295_crit_edge:                ; preds = %if.then66
  br label %for.body.i295

for.cond.i290:                                    ; preds = %for.body.i295
  %inc.i288 = add nuw nsw i32 %i.06.i291, 1
  %exitcond.not.i289 = icmp eq i32 %inc.i288, %mul71
  br i1 %exitcond.not.i289, label %for.cond.i290.if.end80_crit_edge, label %for.cond.i290.for.body.i295_crit_edge

for.cond.i290.for.body.i295_crit_edge:            ; preds = %for.cond.i290
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i295

for.cond.i290.if.end80_crit_edge:                 ; preds = %for.cond.i290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.body.i295:                                    ; preds = %for.cond.i290.for.body.i295_crit_edge, %if.then66.for.body.i295_crit_edge
  %i.06.i291 = phi i32 [ %inc.i288, %for.cond.i290.for.body.i295_crit_edge ], [ 0, %if.then66.for.body.i295_crit_edge ]
  %arrayidx.i292 = getelementptr %struct.sensor_device_attribute_2, ptr @f81866_temp_beep_attr, i32 %i.06.i291
  %call.i293 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i292) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool.not.i294 = icmp eq i32 %call.i293, 0
  br i1 %tobool.not.i294, label %for.cond.i290, label %for.body.i295.exit_unregister_sysfs_crit_edge

for.body.i295.exit_unregister_sysfs_crit_edge:    ; preds = %for.body.i295
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i302:                                    ; preds = %for.body.i307
  %inc.i300 = add nuw nsw i32 %i.06.i303, 1
  %exitcond.not.i301 = icmp eq i32 %inc.i300, %mul71
  br i1 %exitcond.not.i301, label %for.cond.i302.if.end80_crit_edge, label %for.cond.i302.for.body.i307_crit_edge

for.cond.i302.for.body.i307_crit_edge:            ; preds = %for.cond.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i307

for.cond.i302.if.end80_crit_edge:                 ; preds = %for.cond.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.body.i307:                                    ; preds = %for.cond.i302.for.body.i307_crit_edge, %if.then66.for.body.i307_crit_edge
  %i.06.i303 = phi i32 [ %inc.i300, %for.cond.i302.for.body.i307_crit_edge ], [ 0, %if.then66.for.body.i307_crit_edge ]
  %arrayidx.i304 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_temp_beep_attr, i32 %i.06.i303
  %call.i305 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i304) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %tobool.not.i306 = icmp eq i32 %call.i305, 0
  br i1 %tobool.not.i306, label %for.cond.i302, label %for.body.i307.exit_unregister_sysfs_crit_edge

for.body.i307.exit_unregister_sysfs_crit_edge:    ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.end80:                                         ; preds = %for.cond.i302.if.end80_crit_edge, %for.cond.i290.if.end80_crit_edge, %if.end62thread-pre-split.if.end80_crit_edge
  %40 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type9, align 4
  %arrayidx85 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %41, i32 0
  %42 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool86.not = icmp eq i8 %43, 0
  br i1 %tobool86.not, label %if.end80.for.inc_crit_edge, label %if.then87

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then87:                                        ; preds = %if.end80
  %call90 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @fxxxx_in_attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then87.for.inc_crit_edge, label %if.then87.exit_unregister_sysfs_crit_edge

if.then87.exit_unregister_sysfs_crit_edge:        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.for.inc_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.then87.for.inc_crit_edge, %if.end80.for.inc_crit_edge
  %44 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type9, align 4
  %arrayidx85.1 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %45, i32 1
  %46 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx85.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool86.not.1 = icmp eq i8 %47, 0
  br i1 %tobool86.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then87.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then87.1:                                      ; preds = %for.inc
  %call90.1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.1)
  %tobool91.not.1 = icmp eq i32 %call90.1, 0
  br i1 %tobool91.not.1, label %if.then87.1.for.inc.1_crit_edge, label %if.then87.1.exit_unregister_sysfs_crit_edge

if.then87.1.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.1.for.inc.1_crit_edge:                  ; preds = %if.then87.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then87.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %48 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type9, align 4
  %arrayidx85.2 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %49, i32 2
  %50 = ptrtoint ptr %arrayidx85.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx85.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool86.not.2 = icmp eq i8 %51, 0
  br i1 %tobool86.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then87.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then87.2:                                      ; preds = %for.inc.1
  %call90.2 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.2)
  %tobool91.not.2 = icmp eq i32 %call90.2, 0
  br i1 %tobool91.not.2, label %if.then87.2.for.inc.2_crit_edge, label %if.then87.2.exit_unregister_sysfs_crit_edge

if.then87.2.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.2.for.inc.2_crit_edge:                  ; preds = %if.then87.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then87.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %52 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type9, align 4
  %arrayidx85.3 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %53, i32 3
  %54 = ptrtoint ptr %arrayidx85.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx85.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool86.not.3 = icmp eq i8 %55, 0
  br i1 %tobool86.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then87.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then87.3:                                      ; preds = %for.inc.2
  %call90.3 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.3)
  %tobool91.not.3 = icmp eq i32 %call90.3, 0
  br i1 %tobool91.not.3, label %if.then87.3.for.inc.3_crit_edge, label %if.then87.3.exit_unregister_sysfs_crit_edge

if.then87.3.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.3.for.inc.3_crit_edge:                  ; preds = %if.then87.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then87.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %56 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type9, align 4
  %arrayidx85.4 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %57, i32 4
  %58 = ptrtoint ptr %arrayidx85.4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx85.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool86.not.4 = icmp eq i8 %59, 0
  br i1 %tobool86.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then87.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then87.4:                                      ; preds = %for.inc.3
  %call90.4 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.4)
  %tobool91.not.4 = icmp eq i32 %call90.4, 0
  br i1 %tobool91.not.4, label %if.then87.4.for.inc.4_crit_edge, label %if.then87.4.exit_unregister_sysfs_crit_edge

if.then87.4.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.4.for.inc.4_crit_edge:                  ; preds = %if.then87.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then87.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %60 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type9, align 4
  %arrayidx85.5 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %61, i32 5
  %62 = ptrtoint ptr %arrayidx85.5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx85.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool86.not.5 = icmp eq i8 %63, 0
  br i1 %tobool86.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then87.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then87.5:                                      ; preds = %for.inc.4
  %call90.5 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.5)
  %tobool91.not.5 = icmp eq i32 %call90.5, 0
  br i1 %tobool91.not.5, label %if.then87.5.for.inc.5_crit_edge, label %if.then87.5.exit_unregister_sysfs_crit_edge

if.then87.5.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.5.for.inc.5_crit_edge:                  ; preds = %if.then87.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then87.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %64 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type9, align 4
  %arrayidx85.6 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %65, i32 6
  %66 = ptrtoint ptr %arrayidx85.6 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx85.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool86.not.6 = icmp eq i8 %67, 0
  br i1 %tobool86.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then87.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then87.6:                                      ; preds = %for.inc.5
  %call90.6 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.6)
  %tobool91.not.6 = icmp eq i32 %call90.6, 0
  br i1 %tobool91.not.6, label %if.then87.6.for.inc.6_crit_edge, label %if.then87.6.exit_unregister_sysfs_crit_edge

if.then87.6.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.6.for.inc.6_crit_edge:                  ; preds = %if.then87.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then87.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %68 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type9, align 4
  %arrayidx85.7 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %69, i32 7
  %70 = ptrtoint ptr %arrayidx85.7 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx85.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool86.not.7 = icmp eq i8 %71, 0
  br i1 %tobool86.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then87.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then87.7:                                      ; preds = %for.inc.6
  %call90.7 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 7)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.7)
  %tobool91.not.7 = icmp eq i32 %call90.7, 0
  br i1 %tobool91.not.7, label %if.then87.7.for.inc.7_crit_edge, label %if.then87.7.exit_unregister_sysfs_crit_edge

if.then87.7.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.7.for.inc.7_crit_edge:                  ; preds = %if.then87.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then87.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %72 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type9, align 4
  %arrayidx85.8 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %73, i32 8
  %74 = ptrtoint ptr %arrayidx85.8 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx85.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool86.not.8 = icmp eq i8 %75, 0
  br i1 %tobool86.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then87.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then87.8:                                      ; preds = %for.inc.7
  %call90.8 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 8)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.8)
  %tobool91.not.8 = icmp eq i32 %call90.8, 0
  br i1 %tobool91.not.8, label %if.then87.8.for.inc.8_crit_edge, label %if.then87.8.exit_unregister_sysfs_crit_edge

if.then87.8.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.8.for.inc.8_crit_edge:                  ; preds = %if.then87.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then87.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %76 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type9, align 4
  %arrayidx85.9 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %77, i32 9
  %78 = ptrtoint ptr %arrayidx85.9 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx85.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool86.not.9 = icmp eq i8 %79, 0
  br i1 %tobool86.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then87.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then87.9:                                      ; preds = %for.inc.8
  %call90.9 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 9)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.9)
  %tobool91.not.9 = icmp eq i32 %call90.9, 0
  br i1 %tobool91.not.9, label %if.then87.9.for.inc.9_crit_edge, label %if.then87.9.exit_unregister_sysfs_crit_edge

if.then87.9.exit_unregister_sysfs_crit_edge:      ; preds = %if.then87.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.9.for.inc.9_crit_edge:                  ; preds = %if.then87.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then87.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %80 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type9, align 4
  %arrayidx85.10 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %81, i32 10
  %82 = ptrtoint ptr %arrayidx85.10 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx85.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool86.not.10 = icmp eq i8 %83, 0
  br i1 %tobool86.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then87.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

if.then87.10:                                     ; preds = %for.inc.9
  %call90.10 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 10)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.10)
  %tobool91.not.10 = icmp eq i32 %call90.10, 0
  br i1 %tobool91.not.10, label %if.then87.10.for.inc.10_crit_edge, label %if.then87.10.exit_unregister_sysfs_crit_edge

if.then87.10.exit_unregister_sysfs_crit_edge:     ; preds = %if.then87.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then87.10.for.inc.10_crit_edge:                ; preds = %if.then87.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then87.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %84 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type9, align 4
  %86 = lshr i32 2175, %85
  %87 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool97.not.not = icmp eq i32 %87, 0
  br i1 %tobool97.not.not, label %for.body.i318.preheader, label %for.inc.10.if.end104_crit_edge

for.inc.10.if.end104_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

for.body.i318.preheader:                          ; preds = %for.inc.10
  %call.i316 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @fxxxx_in1_alarm_attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool.not.i317 = icmp eq i32 %call.i316, 0
  br i1 %tobool.not.i317, label %for.cond.i313, label %for.body.i318.preheader.exit_unregister_sysfs_crit_edge

for.body.i318.preheader.exit_unregister_sysfs_crit_edge: ; preds = %for.body.i318.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i313:                                    ; preds = %for.body.i318.preheader
  %call.i316.1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @fxxxx_in1_alarm_attr, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316.1)
  %tobool.not.i317.1 = icmp eq i32 %call.i316.1, 0
  br i1 %tobool.not.i317.1, label %for.cond.i313.1, label %for.cond.i313.exit_unregister_sysfs_crit_edge

for.cond.i313.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i313
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i313.1:                                  ; preds = %for.cond.i313
  %call.i316.2 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @fxxxx_in1_alarm_attr, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316.2)
  %tobool.not.i317.2 = icmp eq i32 %call.i316.2, 0
  br i1 %tobool.not.i317.2, label %for.cond.i313.1.if.end104_crit_edge, label %for.cond.i313.1.exit_unregister_sysfs_crit_edge

for.cond.i313.1.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i313.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i313.1.if.end104_crit_edge:              ; preds = %for.cond.i313.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.end104:                                        ; preds = %for.cond.i313.1.if.end104_crit_edge, %for.inc.10.if.end104_crit_edge, %if.end40.if.end104_crit_edge
  %and106 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.if.end146_crit_edge, label %if.then108

if.end104.if.end146_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then108:                                       ; preds = %if.end104
  %88 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type9, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %89, label %if.then108.for.body128.preheader_crit_edge [
    i32 0, label %if.then108.sw.bb110_crit_edge
    i32 1, label %if.then108.sw.bb110_crit_edge480
    i32 5, label %if.then108.sw.bb110_crit_edge481
    i32 6, label %if.then108.sw.bb110_crit_edge482
    i32 8, label %if.then108.sw.bb111_crit_edge
    i32 9, label %if.then108.sw.bb111_crit_edge483
    i32 10, label %if.then108.sw.bb111_crit_edge484
  ]

if.then108.sw.bb111_crit_edge484:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb111

if.then108.sw.bb111_crit_edge483:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb111

if.then108.sw.bb111_crit_edge:                    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb111

if.then108.sw.bb110_crit_edge482:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb110

if.then108.sw.bb110_crit_edge481:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb110

if.then108.sw.bb110_crit_edge480:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb110

if.then108.sw.bb110_crit_edge:                    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb110

if.then108.for.body128.preheader_crit_edge:       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body128.preheader

sw.bb110:                                         ; preds = %if.then108.sw.bb110_crit_edge, %if.then108.sw.bb110_crit_edge480, %if.then108.sw.bb110_crit_edge481, %if.then108.sw.bb110_crit_edge482
  %auto_point_temp_signed = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 6
  %91 = ptrtoint ptr %auto_point_temp_signed to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %auto_point_temp_signed, align 1
  br label %sw.bb111

sw.bb111:                                         ; preds = %sw.bb110, %if.then108.sw.bb111_crit_edge, %if.then108.sw.bb111_crit_edge483, %if.then108.sw.bb111_crit_edge484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %call.i, align 4
  %conv.i321 = zext i16 %93 to i32
  %add1.i322 = add nuw nsw i32 %conv.i321, -18874363
  %94 = inttoptr i32 %add1.i322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 -97) #9, !srcloc !535
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %call.i, align 4
  %conv3.i323 = zext i16 %96 to i32
  %add6.i324 = add nuw nsw i32 %conv3.i323, -18874362
  %97 = inttoptr i32 %add6.i324 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %99 = and i8 %98, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool115.not = icmp eq i8 %99, 0
  br i1 %tobool115.not, label %sw.bb111.if.end118_crit_edge, label %if.then116

sw.bb111.if.end118_crit_edge:                     ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then116:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %auto_point_temp_signed117 = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 6
  %100 = ptrtoint ptr %auto_point_temp_signed117 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %auto_point_temp_signed117, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %sw.bb111.if.end118_crit_edge
  %and120 = and i8 %98, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  tail call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %call.i, align 4
  %conv.i325 = zext i16 %102 to i32
  %add1.i326 = add nuw nsw i32 %conv.i325, -18874363
  %103 = inttoptr i32 %add1.i326 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 -97) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %call.i, align 4
  %conv5.i = zext i16 %105 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %106 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %and120) #9, !srcloc !535
  br label %for.body128.preheader

for.body128.preheader:                            ; preds = %if.end118, %if.then108.for.body128.preheader_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %call.i, align 4
  %conv.i327 = zext i16 %108 to i32
  %add1.i328 = add nuw nsw i32 %conv.i327, -18874363
  %109 = inttoptr i32 %add1.i328 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 -106) #9, !srcloc !535
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %call.i, align 4
  %conv3.i329 = zext i16 %111 to i32
  %add6.i330 = add nuw nsw i32 %conv3.i329, -18874362
  %112 = inttoptr i32 %add6.i330 to ptr
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %112) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 28
  %114 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %pwm_enable, align 2
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  br label %for.body128

for.body128:                                      ; preds = %for.inc133.for.body128_crit_edge, %for.body128.preheader
  %i.1401 = phi i32 [ %inc134.pre-phi, %for.inc133.for.body128_crit_edge ], [ 0, %for.body128.preheader ]
  %115 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %driver_data.i.i, align 4
  %type.i = getelementptr inbounds %struct.f71882fg_data, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %type.i, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %118, label %for.body128.if.end26.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.epilog.i
    i32 11, label %sw.bb12.i
  ]

for.body128.if.end26.i_crit_edge:                 ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

sw.bb.i:                                          ; preds = %for.body128
  %pwm_enable.i = getelementptr inbounds %struct.f71882fg_data, ptr %116, i32 0, i32 28
  %120 = ptrtoint ptr %pwm_enable.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pwm_enable.i, align 2
  %conv.i331 = zext i8 %121 to i32
  %mul.i = shl i32 %i.1401, 1
  %shr.i = lshr i32 %conv.i331, %mul.i
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 3
  br i1 %cmp.not.i, label %sw.bb.i.do.end.i_crit_edge, label %sw.bb.i.if.end26.i_crit_edge

sw.bb.i.if.end26.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

sw.bb.i.do.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

sw.bb12.i:                                        ; preds = %for.body128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1401)
  %cmp13.i = icmp eq i32 %i.1401, 2
  br i1 %cmp13.i, label %if.then15.i, label %sw.bb12.i.if.end26.i_crit_edge

sw.bb12.i.if.end26.i_crit_edge:                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then15.i:                                      ; preds = %sw.bb12.i
  %pwm_enable16.i = getelementptr inbounds %struct.f71882fg_data, ptr %116, i32 0, i32 28
  %122 = ptrtoint ptr %pwm_enable16.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pwm_enable16.i, align 2
  %124 = and i8 %123, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %phi.cmp.i = icmp eq i8 %124, 0
  br i1 %phi.cmp.i, label %if.then15.i.if.end26.i_crit_edge, label %if.then15.i.do.end.i_crit_edge

if.then15.i.do.end.i_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then15.i.if.end26.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

sw.epilog.i:                                      ; preds = %for.body128
  %pwm_enable3.i = getelementptr inbounds %struct.f71882fg_data, ptr %116, i32 0, i32 28
  %125 = ptrtoint ptr %pwm_enable3.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %pwm_enable3.i, align 2
  %conv4.i = zext i8 %126 to i32
  %mul5.i = shl i32 %i.1401, 1
  %127 = shl nuw i32 1, %mul5.i
  %128 = and i32 %127, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp8.not.not.not.i = icmp eq i32 %128, 0
  br i1 %cmp8.not.not.not.i, label %sw.epilog.i.do.end.i_crit_edge, label %sw.epilog.i.if.end26.i_crit_edge

sw.epilog.i.if.end26.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

sw.epilog.i.do.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %sw.epilog.i.do.end.i_crit_edge, %if.then15.i.do.end.i_crit_edge, %sw.bb.i.do.end.i_crit_edge
  %mul23.pre-phi.i = phi i32 [ %mul.i, %sw.bb.i.do.end.i_crit_edge ], [ %mul5.i, %sw.epilog.i.do.end.i_crit_edge ], [ 4, %if.then15.i.do.end.i_crit_edge ]
  %pwm_enable21.i = getelementptr inbounds %struct.f71882fg_data, ptr %116, i32 0, i32 28
  %129 = ptrtoint ptr %pwm_enable21.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pwm_enable21.i, align 2
  %conv22.i = zext i8 %130 to i32
  %shr24.i = lshr i32 %conv22.i, %mul23.pre-phi.i
  %and25.i = and i32 %shr24.i, 3
  %add.i = add nuw nsw i32 %i.1401, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %and25.i, i32 noundef %add.i) #13
  br label %for.inc133

if.end26.i:                                       ; preds = %sw.epilog.i.if.end26.i_crit_edge, %if.then15.i.if.end26.i_crit_edge, %sw.bb12.i.if.end26.i_crit_edge, %sw.bb.i.if.end26.i_crit_edge, %for.body128.if.end26.i_crit_edge
  %arrayidx.i333 = getelementptr [4 x [6 x %struct.sensor_device_attribute_2]], ptr @fxxxx_fan_attr, i32 0, i32 %i.1401
  %call.i.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i333) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.end26.i.exit_unregister_sysfs_crit_edge

if.end26.i.exit_unregister_sysfs_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.i:                                     ; preds = %if.end26.i
  %arrayidx.i.1.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx.i333, i32 1
  %call.i.1.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.cond.i.1.i, label %for.cond.i.i.exit_unregister_sysfs_crit_edge

for.cond.i.i.exit_unregister_sysfs_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
  %arrayidx.i.2.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx.i333, i32 2
  %call.i.2.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %for.cond.i.2.i, label %for.cond.i.1.i.exit_unregister_sysfs_crit_edge

for.cond.i.1.i.exit_unregister_sysfs_crit_edge:   ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.2.i:                                   ; preds = %for.cond.i.1.i
  %arrayidx.i.3.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx.i333, i32 3
  %call.i.3.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %for.cond.i.3.i, label %for.cond.i.2.i.exit_unregister_sysfs_crit_edge

for.cond.i.2.i.exit_unregister_sysfs_crit_edge:   ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.3.i:                                   ; preds = %for.cond.i.2.i
  %arrayidx.i.4.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx.i333, i32 4
  %call.i.4.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i.4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %call.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %for.cond.i.4.i, label %for.cond.i.3.i.exit_unregister_sysfs_crit_edge

for.cond.i.3.i.exit_unregister_sysfs_crit_edge:   ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.4.i:                                   ; preds = %for.cond.i.3.i
  %arrayidx.i.5.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx.i333, i32 5
  %call.i.5.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i.5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i)
  %tobool.not.i.5.i = icmp eq i32 %call.i.5.i, 0
  br i1 %tobool.not.i.5.i, label %for.cond.i.5.i, label %for.cond.i.4.i.exit_unregister_sysfs_crit_edge

for.cond.i.4.i.exit_unregister_sysfs_crit_edge:   ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i.5.i:                                   ; preds = %for.cond.i.4.i
  %131 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %type.i, align 4
  %133 = lshr i32 2055, %132
  %134 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool34.not.not.i = icmp eq i32 %134, 0
  br i1 %tobool34.not.not.i, label %if.then35.i, label %for.cond.i.5.i.do.end44.i_crit_edge

for.cond.i.5.i.do.end44.i_crit_edge:              ; preds = %for.cond.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

if.then35.i:                                      ; preds = %for.cond.i.5.i
  %arrayidx36.i = getelementptr [4 x %struct.sensor_device_attribute_2], ptr @fxxxx_fan_beep_attr, i32 0, i32 %i.1401
  %call.i149.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx36.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %tobool.not.i150.i = icmp eq i32 %call.i149.i, 0
  br i1 %tobool.not.i150.i, label %if.then35.i.do.end44.i_crit_edge, label %if.then35.i.exit_unregister_sysfs_crit_edge

if.then35.i.exit_unregister_sysfs_crit_edge:      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

if.then35.i.do.end44.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then35.i.do.end44.i_crit_edge, %for.cond.i.5.i.do.end44.i_crit_edge
  %add46.i = add nuw nsw i32 %i.1401, 1
  %pwm_enable47.i = getelementptr inbounds %struct.f71882fg_data, ptr %116, i32 0, i32 28
  %135 = ptrtoint ptr %pwm_enable47.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pwm_enable47.i, align 2
  %conv48.i = zext i8 %136 to i32
  %mul49.i = shl i32 %i.1401, 1
  %shl.i = shl nuw i32 1, %mul49.i
  %and50.i = and i32 %shl.i, %conv48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %cond.i = select i1 %tobool51.not.i, ptr @.str.88, ptr @.str.87
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %add46.i, ptr noundef nonnull %cond.i) #13
  %137 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i, align 4
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %138, label %do.end44.i.sw.epilog78.i_crit_edge [
    i32 0, label %do.end44.i.sw.bb53.i_crit_edge
    i32 1, label %do.end44.i.sw.bb53.i_crit_edge485
    i32 5, label %do.end44.i.sw.bb53.i_crit_edge486
    i32 6, label %do.end44.i.sw.bb53.i_crit_edge487
    i32 8, label %do.end44.i.sw.bb53.i_crit_edge488
    i32 9, label %do.end44.i.sw.bb53.i_crit_edge489
    i32 10, label %do.end44.i.sw.bb53.i_crit_edge490
  ]

do.end44.i.sw.bb53.i_crit_edge490:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.bb53.i_crit_edge489:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.bb53.i_crit_edge488:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.bb53.i_crit_edge487:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.bb53.i_crit_edge486:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.bb53.i_crit_edge485:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.bb53.i_crit_edge:                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

do.end44.i.sw.epilog78.i_crit_edge:               ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog78.i

sw.bb53.i:                                        ; preds = %do.end44.i.sw.bb53.i_crit_edge, %do.end44.i.sw.bb53.i_crit_edge485, %do.end44.i.sw.bb53.i_crit_edge486, %do.end44.i.sw.bb53.i_crit_edge487, %do.end44.i.sw.bb53.i_crit_edge488, %do.end44.i.sw.bb53.i_crit_edge489, %do.end44.i.sw.bb53.i_crit_edge490
  %idx.tr.i = trunc i32 %i.1401 to i8
  %140 = shl i8 %idx.tr.i, 4
  %conv56.i = add i8 %140, -81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %141 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %116, align 4
  %conv.i.i = zext i16 %142 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, -18874363
  %143 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 %conv56.i) #9, !srcloc !535
  %144 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %116, align 4
  %conv3.i.i = zext i16 %145 to i32
  %add6.i.i = add nuw nsw i32 %conv3.i.i, -18874362
  %146 = inttoptr i32 %add6.i.i to ptr
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %146) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx58.i = getelementptr %struct.f71882fg_data, ptr %116, i32 0, i32 30, i32 %i.1401
  %148 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx58.i, align 1
  %conv61.i = zext i8 %147 to i32
  %and62.i = and i32 %conv61.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp ne i32 %and62.i, 0
  %and67.i = and i32 %conv61.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %cmp68.i = icmp eq i32 %and67.i, 0
  %or.cond.i = or i1 %tobool63.not.i, %cmp68.i
  br i1 %or.cond.i, label %do.end73.i, label %sw.epilog78thread-pre-split.i

do.end73.i:                                       ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %add46.i) #13
  br label %for.inc133

sw.epilog78thread-pre-split.i:                    ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pr.i = load i32, ptr %type.i, align 4
  br label %sw.epilog78.i

sw.epilog78.i:                                    ; preds = %sw.epilog78thread-pre-split.i, %do.end44.i.sw.epilog78.i_crit_edge
  %150 = phi i32 [ %.pr.i, %sw.epilog78thread-pre-split.i ], [ %138, %do.end44.i.sw.epilog78.i_crit_edge ]
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %150, label %sw.default92.i [
    i32 3, label %sw.bb80.i
    i32 0, label %sw.epilog78.i.sw.bb84.i_crit_edge
    i32 5, label %sw.epilog78.i.sw.bb84.i_crit_edge491
    i32 11, label %sw.bb88.i
  ]

sw.epilog78.i.sw.bb84.i_crit_edge491:             ; preds = %sw.epilog78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb84.i

sw.epilog78.i.sw.bb84.i_crit_edge:                ; preds = %sw.epilog78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb84.i

sw.bb80.i:                                        ; preds = %sw.epilog78.i
  %arrayidx81.i = getelementptr [3 x [7 x %struct.sensor_device_attribute_2]], ptr @f71862fg_auto_pwm_attr, i32 0, i32 %i.1401
  %call.i160.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx81.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool.not.i161.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool.not.i161.i, label %for.cond.i157.i, label %sw.bb80.i.exit_unregister_sysfs_crit_edge

sw.bb80.i.exit_unregister_sysfs_crit_edge:        ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i157.i:                                  ; preds = %sw.bb80.i
  %arrayidx.i159.1.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx81.i, i32 1
  %call.i160.1.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i159.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.1.i)
  %tobool.not.i161.1.i = icmp eq i32 %call.i160.1.i, 0
  br i1 %tobool.not.i161.1.i, label %for.cond.i157.1.i, label %for.cond.i157.i.exit_unregister_sysfs_crit_edge

for.cond.i157.i.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i157.1.i:                                ; preds = %for.cond.i157.i
  %arrayidx.i159.2.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx81.i, i32 2
  %call.i160.2.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i159.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.2.i)
  %tobool.not.i161.2.i = icmp eq i32 %call.i160.2.i, 0
  br i1 %tobool.not.i161.2.i, label %for.cond.i157.2.i, label %for.cond.i157.1.i.exit_unregister_sysfs_crit_edge

for.cond.i157.1.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i157.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i157.2.i:                                ; preds = %for.cond.i157.1.i
  %arrayidx.i159.3.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx81.i, i32 3
  %call.i160.3.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i159.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.3.i)
  %tobool.not.i161.3.i = icmp eq i32 %call.i160.3.i, 0
  br i1 %tobool.not.i161.3.i, label %for.cond.i157.3.i, label %for.cond.i157.2.i.exit_unregister_sysfs_crit_edge

for.cond.i157.2.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i157.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i157.3.i:                                ; preds = %for.cond.i157.2.i
  %arrayidx.i159.4.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx81.i, i32 4
  %call.i160.4.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i159.4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.4.i)
  %tobool.not.i161.4.i = icmp eq i32 %call.i160.4.i, 0
  br i1 %tobool.not.i161.4.i, label %for.cond.i157.4.i, label %for.cond.i157.3.i.exit_unregister_sysfs_crit_edge

for.cond.i157.3.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i157.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i157.4.i:                                ; preds = %for.cond.i157.3.i
  %arrayidx.i159.5.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx81.i, i32 5
  %call.i160.5.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i159.5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.5.i)
  %tobool.not.i161.5.i = icmp eq i32 %call.i160.5.i, 0
  br i1 %tobool.not.i161.5.i, label %for.cond.i157.5.i, label %for.cond.i157.4.i.exit_unregister_sysfs_crit_edge

for.cond.i157.4.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i157.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i157.5.i:                                ; preds = %for.cond.i157.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i159.6.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx81.i, i32 6
  br label %f71882fg_create_fan_sysfs_files.exit

sw.bb84.i:                                        ; preds = %sw.epilog78.i.sw.bb84.i_crit_edge, %sw.epilog78.i.sw.bb84.i_crit_edge491
  %arrayidx85.i = getelementptr [3 x [8 x %struct.sensor_device_attribute_2]], ptr @f71869_auto_pwm_attr, i32 0, i32 %i.1401
  %call.i171.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx85.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i)
  %tobool.not.i172.i = icmp eq i32 %call.i171.i, 0
  br i1 %tobool.not.i172.i, label %for.cond.i168.i, label %sw.bb84.i.exit_unregister_sysfs_crit_edge

sw.bb84.i.exit_unregister_sysfs_crit_edge:        ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.i:                                  ; preds = %sw.bb84.i
  %arrayidx.i170.1.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 1
  %call.i171.1.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i170.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.1.i)
  %tobool.not.i172.1.i = icmp eq i32 %call.i171.1.i, 0
  br i1 %tobool.not.i172.1.i, label %for.cond.i168.1.i, label %for.cond.i168.i.exit_unregister_sysfs_crit_edge

for.cond.i168.i.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.1.i:                                ; preds = %for.cond.i168.i
  %arrayidx.i170.2.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 2
  %call.i171.2.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i170.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.2.i)
  %tobool.not.i172.2.i = icmp eq i32 %call.i171.2.i, 0
  br i1 %tobool.not.i172.2.i, label %for.cond.i168.2.i, label %for.cond.i168.1.i.exit_unregister_sysfs_crit_edge

for.cond.i168.1.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i168.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.2.i:                                ; preds = %for.cond.i168.1.i
  %arrayidx.i170.3.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 3
  %call.i171.3.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i170.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.3.i)
  %tobool.not.i172.3.i = icmp eq i32 %call.i171.3.i, 0
  br i1 %tobool.not.i172.3.i, label %for.cond.i168.3.i, label %for.cond.i168.2.i.exit_unregister_sysfs_crit_edge

for.cond.i168.2.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i168.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.3.i:                                ; preds = %for.cond.i168.2.i
  %arrayidx.i170.4.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 4
  %call.i171.4.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i170.4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.4.i)
  %tobool.not.i172.4.i = icmp eq i32 %call.i171.4.i, 0
  br i1 %tobool.not.i172.4.i, label %for.cond.i168.4.i, label %for.cond.i168.3.i.exit_unregister_sysfs_crit_edge

for.cond.i168.3.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i168.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.4.i:                                ; preds = %for.cond.i168.3.i
  %arrayidx.i170.5.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 5
  %call.i171.5.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i170.5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.5.i)
  %tobool.not.i172.5.i = icmp eq i32 %call.i171.5.i, 0
  br i1 %tobool.not.i172.5.i, label %for.cond.i168.5.i, label %for.cond.i168.4.i.exit_unregister_sysfs_crit_edge

for.cond.i168.4.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i168.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.5.i:                                ; preds = %for.cond.i168.4.i
  %arrayidx.i170.6.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 6
  %call.i171.6.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i170.6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.6.i)
  %tobool.not.i172.6.i = icmp eq i32 %call.i171.6.i, 0
  br i1 %tobool.not.i172.6.i, label %for.cond.i168.6.i, label %for.cond.i168.5.i.exit_unregister_sysfs_crit_edge

for.cond.i168.5.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i168.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i168.6.i:                                ; preds = %for.cond.i168.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i170.7.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx85.i, i32 7
  br label %f71882fg_create_fan_sysfs_files.exit

sw.bb88.i:                                        ; preds = %sw.epilog78.i
  %arrayidx89.i = getelementptr [3 x [14 x %struct.sensor_device_attribute_2]], ptr @f8000_auto_pwm_attr, i32 0, i32 %i.1401
  %call.i182.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx89.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.i)
  %tobool.not.i183.i = icmp eq i32 %call.i182.i, 0
  br i1 %tobool.not.i183.i, label %for.cond.i179.i, label %sw.bb88.i.exit_unregister_sysfs_crit_edge

sw.bb88.i.exit_unregister_sysfs_crit_edge:        ; preds = %sw.bb88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.i:                                  ; preds = %sw.bb88.i
  %arrayidx.i181.1.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 1
  %call.i182.1.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.1.i)
  %tobool.not.i183.1.i = icmp eq i32 %call.i182.1.i, 0
  br i1 %tobool.not.i183.1.i, label %for.cond.i179.1.i, label %for.cond.i179.i.exit_unregister_sysfs_crit_edge

for.cond.i179.i.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.1.i:                                ; preds = %for.cond.i179.i
  %arrayidx.i181.2.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 2
  %call.i182.2.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.2.i)
  %tobool.not.i183.2.i = icmp eq i32 %call.i182.2.i, 0
  br i1 %tobool.not.i183.2.i, label %for.cond.i179.2.i, label %for.cond.i179.1.i.exit_unregister_sysfs_crit_edge

for.cond.i179.1.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.2.i:                                ; preds = %for.cond.i179.1.i
  %arrayidx.i181.3.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 3
  %call.i182.3.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.3.i)
  %tobool.not.i183.3.i = icmp eq i32 %call.i182.3.i, 0
  br i1 %tobool.not.i183.3.i, label %for.cond.i179.3.i, label %for.cond.i179.2.i.exit_unregister_sysfs_crit_edge

for.cond.i179.2.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.3.i:                                ; preds = %for.cond.i179.2.i
  %arrayidx.i181.4.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 4
  %call.i182.4.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.4.i)
  %tobool.not.i183.4.i = icmp eq i32 %call.i182.4.i, 0
  br i1 %tobool.not.i183.4.i, label %for.cond.i179.4.i, label %for.cond.i179.3.i.exit_unregister_sysfs_crit_edge

for.cond.i179.3.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.4.i:                                ; preds = %for.cond.i179.3.i
  %arrayidx.i181.5.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 5
  %call.i182.5.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.5.i)
  %tobool.not.i183.5.i = icmp eq i32 %call.i182.5.i, 0
  br i1 %tobool.not.i183.5.i, label %for.cond.i179.5.i, label %for.cond.i179.4.i.exit_unregister_sysfs_crit_edge

for.cond.i179.4.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.5.i:                                ; preds = %for.cond.i179.4.i
  %arrayidx.i181.6.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 6
  %call.i182.6.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.6.i)
  %tobool.not.i183.6.i = icmp eq i32 %call.i182.6.i, 0
  br i1 %tobool.not.i183.6.i, label %for.cond.i179.6.i, label %for.cond.i179.5.i.exit_unregister_sysfs_crit_edge

for.cond.i179.5.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.6.i:                                ; preds = %for.cond.i179.5.i
  %arrayidx.i181.7.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 7
  %call.i182.7.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.7.i)
  %tobool.not.i183.7.i = icmp eq i32 %call.i182.7.i, 0
  br i1 %tobool.not.i183.7.i, label %for.cond.i179.7.i, label %for.cond.i179.6.i.exit_unregister_sysfs_crit_edge

for.cond.i179.6.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.7.i:                                ; preds = %for.cond.i179.6.i
  %arrayidx.i181.8.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 8
  %call.i182.8.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.8.i)
  %tobool.not.i183.8.i = icmp eq i32 %call.i182.8.i, 0
  br i1 %tobool.not.i183.8.i, label %for.cond.i179.8.i, label %for.cond.i179.7.i.exit_unregister_sysfs_crit_edge

for.cond.i179.7.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.8.i:                                ; preds = %for.cond.i179.7.i
  %arrayidx.i181.9.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 9
  %call.i182.9.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.9.i)
  %tobool.not.i183.9.i = icmp eq i32 %call.i182.9.i, 0
  br i1 %tobool.not.i183.9.i, label %for.cond.i179.9.i, label %for.cond.i179.8.i.exit_unregister_sysfs_crit_edge

for.cond.i179.8.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.9.i:                                ; preds = %for.cond.i179.8.i
  %arrayidx.i181.10.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 10
  %call.i182.10.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.10.i)
  %tobool.not.i183.10.i = icmp eq i32 %call.i182.10.i, 0
  br i1 %tobool.not.i183.10.i, label %for.cond.i179.10.i, label %for.cond.i179.9.i.exit_unregister_sysfs_crit_edge

for.cond.i179.9.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.10.i:                               ; preds = %for.cond.i179.9.i
  %arrayidx.i181.11.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 11
  %call.i182.11.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.11.i)
  %tobool.not.i183.11.i = icmp eq i32 %call.i182.11.i, 0
  br i1 %tobool.not.i183.11.i, label %for.cond.i179.11.i, label %for.cond.i179.10.i.exit_unregister_sysfs_crit_edge

for.cond.i179.10.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.11.i:                               ; preds = %for.cond.i179.10.i
  %arrayidx.i181.12.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 12
  %call.i182.12.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i181.12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.12.i)
  %tobool.not.i183.12.i = icmp eq i32 %call.i182.12.i, 0
  br i1 %tobool.not.i183.12.i, label %for.cond.i179.12.i, label %for.cond.i179.11.i.exit_unregister_sysfs_crit_edge

for.cond.i179.11.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i179.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i179.12.i:                               ; preds = %for.cond.i179.11.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i181.13.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx89.i, i32 13
  br label %f71882fg_create_fan_sysfs_files.exit

sw.default92.i:                                   ; preds = %sw.epilog78.i
  %arrayidx93.i = getelementptr [4 x [14 x %struct.sensor_device_attribute_2]], ptr @fxxxx_auto_pwm_attr, i32 0, i32 %i.1401
  %call.i193.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx93.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.i)
  %tobool.not.i194.i = icmp eq i32 %call.i193.i, 0
  br i1 %tobool.not.i194.i, label %for.cond.i190.i, label %sw.default92.i.exit_unregister_sysfs_crit_edge

sw.default92.i.exit_unregister_sysfs_crit_edge:   ; preds = %sw.default92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.i:                                  ; preds = %sw.default92.i
  %arrayidx.i192.1.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 1
  %call.i193.1.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.1.i)
  %tobool.not.i194.1.i = icmp eq i32 %call.i193.1.i, 0
  br i1 %tobool.not.i194.1.i, label %for.cond.i190.1.i, label %for.cond.i190.i.exit_unregister_sysfs_crit_edge

for.cond.i190.i.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.1.i:                                ; preds = %for.cond.i190.i
  %arrayidx.i192.2.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 2
  %call.i193.2.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.2.i)
  %tobool.not.i194.2.i = icmp eq i32 %call.i193.2.i, 0
  br i1 %tobool.not.i194.2.i, label %for.cond.i190.2.i, label %for.cond.i190.1.i.exit_unregister_sysfs_crit_edge

for.cond.i190.1.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.2.i:                                ; preds = %for.cond.i190.1.i
  %arrayidx.i192.3.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 3
  %call.i193.3.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.3.i)
  %tobool.not.i194.3.i = icmp eq i32 %call.i193.3.i, 0
  br i1 %tobool.not.i194.3.i, label %for.cond.i190.3.i, label %for.cond.i190.2.i.exit_unregister_sysfs_crit_edge

for.cond.i190.2.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.3.i:                                ; preds = %for.cond.i190.2.i
  %arrayidx.i192.4.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 4
  %call.i193.4.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.4.i)
  %tobool.not.i194.4.i = icmp eq i32 %call.i193.4.i, 0
  br i1 %tobool.not.i194.4.i, label %for.cond.i190.4.i, label %for.cond.i190.3.i.exit_unregister_sysfs_crit_edge

for.cond.i190.3.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.4.i:                                ; preds = %for.cond.i190.3.i
  %arrayidx.i192.5.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 5
  %call.i193.5.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.5.i)
  %tobool.not.i194.5.i = icmp eq i32 %call.i193.5.i, 0
  br i1 %tobool.not.i194.5.i, label %for.cond.i190.5.i, label %for.cond.i190.4.i.exit_unregister_sysfs_crit_edge

for.cond.i190.4.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.5.i:                                ; preds = %for.cond.i190.4.i
  %arrayidx.i192.6.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 6
  %call.i193.6.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.6.i)
  %tobool.not.i194.6.i = icmp eq i32 %call.i193.6.i, 0
  br i1 %tobool.not.i194.6.i, label %for.cond.i190.6.i, label %for.cond.i190.5.i.exit_unregister_sysfs_crit_edge

for.cond.i190.5.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.6.i:                                ; preds = %for.cond.i190.5.i
  %arrayidx.i192.7.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 7
  %call.i193.7.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.7.i)
  %tobool.not.i194.7.i = icmp eq i32 %call.i193.7.i, 0
  br i1 %tobool.not.i194.7.i, label %for.cond.i190.7.i, label %for.cond.i190.6.i.exit_unregister_sysfs_crit_edge

for.cond.i190.6.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.7.i:                                ; preds = %for.cond.i190.6.i
  %arrayidx.i192.8.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 8
  %call.i193.8.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.8.i)
  %tobool.not.i194.8.i = icmp eq i32 %call.i193.8.i, 0
  br i1 %tobool.not.i194.8.i, label %for.cond.i190.8.i, label %for.cond.i190.7.i.exit_unregister_sysfs_crit_edge

for.cond.i190.7.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.8.i:                                ; preds = %for.cond.i190.7.i
  %arrayidx.i192.9.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 9
  %call.i193.9.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.9.i)
  %tobool.not.i194.9.i = icmp eq i32 %call.i193.9.i, 0
  br i1 %tobool.not.i194.9.i, label %for.cond.i190.9.i, label %for.cond.i190.8.i.exit_unregister_sysfs_crit_edge

for.cond.i190.8.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.9.i:                                ; preds = %for.cond.i190.8.i
  %arrayidx.i192.10.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 10
  %call.i193.10.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.10.i)
  %tobool.not.i194.10.i = icmp eq i32 %call.i193.10.i, 0
  br i1 %tobool.not.i194.10.i, label %for.cond.i190.10.i, label %for.cond.i190.9.i.exit_unregister_sysfs_crit_edge

for.cond.i190.9.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.10.i:                               ; preds = %for.cond.i190.9.i
  %arrayidx.i192.11.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 11
  %call.i193.11.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.11.i)
  %tobool.not.i194.11.i = icmp eq i32 %call.i193.11.i, 0
  br i1 %tobool.not.i194.11.i, label %for.cond.i190.11.i, label %for.cond.i190.10.i.exit_unregister_sysfs_crit_edge

for.cond.i190.10.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.11.i:                               ; preds = %for.cond.i190.10.i
  %arrayidx.i192.12.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 12
  %call.i193.12.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i192.12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.12.i)
  %tobool.not.i194.12.i = icmp eq i32 %call.i193.12.i, 0
  br i1 %tobool.not.i194.12.i, label %for.cond.i190.12.i, label %for.cond.i190.11.i.exit_unregister_sysfs_crit_edge

for.cond.i190.11.i.exit_unregister_sysfs_crit_edge: ; preds = %for.cond.i190.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i190.12.i:                               ; preds = %for.cond.i190.11.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i192.13.i = getelementptr %struct.sensor_device_attribute_2, ptr %arrayidx93.i, i32 13
  br label %f71882fg_create_fan_sysfs_files.exit

f71882fg_create_fan_sysfs_files.exit:             ; preds = %for.cond.i190.12.i, %for.cond.i179.12.i, %for.cond.i168.6.i, %for.cond.i157.5.i
  %arrayidx.i159.6.i.sink = phi ptr [ %arrayidx.i159.6.i, %for.cond.i157.5.i ], [ %arrayidx.i170.7.i, %for.cond.i168.6.i ], [ %arrayidx.i181.13.i, %for.cond.i179.12.i ], [ %arrayidx.i192.13.i, %for.cond.i190.12.i ]
  %call.i160.6.i = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx.i159.6.i.sink) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.6.i)
  %tobool130.not = icmp eq i32 %call.i160.6.i, 0
  br i1 %tobool130.not, label %f71882fg_create_fan_sysfs_files.exit.for.inc133_crit_edge, label %f71882fg_create_fan_sysfs_files.exit.exit_unregister_sysfs_crit_edge

f71882fg_create_fan_sysfs_files.exit.exit_unregister_sysfs_crit_edge: ; preds = %f71882fg_create_fan_sysfs_files.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

f71882fg_create_fan_sysfs_files.exit.for.inc133_crit_edge: ; preds = %f71882fg_create_fan_sysfs_files.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc133

for.inc133:                                       ; preds = %f71882fg_create_fan_sysfs_files.exit.for.inc133_crit_edge, %do.end73.i, %do.end.i
  %inc134.pre-phi = phi i32 [ %add46.i, %do.end73.i ], [ %add.i, %do.end.i ], [ %add46.i, %f71882fg_create_fan_sysfs_files.exit.for.inc133_crit_edge ]
  %exitcond.not = icmp eq i32 %inc134.pre-phi, %smax
  br i1 %exitcond.not, label %for.end135, label %for.inc133.for.body128_crit_edge

for.inc133.for.body128_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body128

for.end135:                                       ; preds = %for.inc133
  %152 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %type9, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %153, label %for.end135.if.end146_crit_edge [
    i32 1, label %for.body.i343.preheader
    i32 11, label %for.body.i354.preheader
  ]

for.end135.if.end146_crit_edge:                   ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

for.body.i354.preheader:                          ; preds = %for.end135
  %call.i352 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @f8000_fan_attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool.not.i353 = icmp eq i32 %call.i352, 0
  br i1 %tobool.not.i353, label %for.body.i354.preheader.if.end146_crit_edge, label %for.body.i354.preheader.exit_unregister_sysfs_crit_edge

for.body.i354.preheader.exit_unregister_sysfs_crit_edge: ; preds = %for.body.i354.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.body.i354.preheader.if.end146_crit_edge:      ; preds = %for.body.i354.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

for.body.i343.preheader:                          ; preds = %for.end135
  %call.i341 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @f71808a_fan3_attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341)
  %tobool.not.i342 = icmp eq i32 %call.i341, 0
  br i1 %tobool.not.i342, label %for.cond.i338, label %for.body.i343.preheader.exit_unregister_sysfs_crit_edge

for.body.i343.preheader.exit_unregister_sysfs_crit_edge: ; preds = %for.body.i343.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i338:                                    ; preds = %for.body.i343.preheader
  %call.i341.1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @f71808a_fan3_attr, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341.1)
  %tobool.not.i342.1 = icmp eq i32 %call.i341.1, 0
  br i1 %tobool.not.i342.1, label %for.cond.i338.1, label %for.cond.i338.exit_unregister_sysfs_crit_edge

for.cond.i338.exit_unregister_sysfs_crit_edge:    ; preds = %for.cond.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i338.1:                                  ; preds = %for.cond.i338
  %call.i341.2 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @f71808a_fan3_attr, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341.2)
  %tobool.not.i342.2 = icmp eq i32 %call.i341.2, 0
  br i1 %tobool.not.i342.2, label %for.cond.i338.1.if.end146_crit_edge, label %for.cond.i338.1.exit_unregister_sysfs_crit_edge

for.cond.i338.1.exit_unregister_sysfs_crit_edge:  ; preds = %for.cond.i338.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister_sysfs

for.cond.i338.1.if.end146_crit_edge:              ; preds = %for.cond.i338.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.end146:                                        ; preds = %for.cond.i338.1.if.end146_crit_edge, %for.body.i354.preheader.if.end146_crit_edge, %for.end135.if.end146_crit_edge, %if.end104.if.end146_crit_edge
  %call148 = tail call ptr @hwmon_device_register(ptr noundef %dev) #9
  %hwmon_dev = getelementptr inbounds %struct.f71882fg_data, ptr %call.i, i32 0, i32 2
  %155 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call148, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then151, label %if.end146.cleanup_crit_edge

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %call148 to i32
  %157 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %hwmon_dev, align 4
  br label %exit_unregister_sysfs

exit_unregister_sysfs:                            ; preds = %if.then151, %for.cond.i338.1.exit_unregister_sysfs_crit_edge, %for.cond.i338.exit_unregister_sysfs_crit_edge, %for.body.i343.preheader.exit_unregister_sysfs_crit_edge, %for.body.i354.preheader.exit_unregister_sysfs_crit_edge, %f71882fg_create_fan_sysfs_files.exit.exit_unregister_sysfs_crit_edge, %for.cond.i190.11.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.10.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.9.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.8.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.7.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.6.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.5.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.4.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.3.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.2.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.1.i.exit_unregister_sysfs_crit_edge, %for.cond.i190.i.exit_unregister_sysfs_crit_edge, %sw.default92.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.11.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.10.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.9.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.8.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.7.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.6.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.5.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.4.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.3.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.2.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.1.i.exit_unregister_sysfs_crit_edge, %for.cond.i179.i.exit_unregister_sysfs_crit_edge, %sw.bb88.i.exit_unregister_sysfs_crit_edge, %for.cond.i168.5.i.exit_unregister_sysfs_crit_edge, %for.cond.i168.4.i.exit_unregister_sysfs_crit_edge, %for.cond.i168.3.i.exit_unregister_sysfs_crit_edge, %for.cond.i168.2.i.exit_unregister_sysfs_crit_edge, %for.cond.i168.1.i.exit_unregister_sysfs_crit_edge, %for.cond.i168.i.exit_unregister_sysfs_crit_edge, %sw.bb84.i.exit_unregister_sysfs_crit_edge, %for.cond.i157.4.i.exit_unregister_sysfs_crit_edge, %for.cond.i157.3.i.exit_unregister_sysfs_crit_edge, %for.cond.i157.2.i.exit_unregister_sysfs_crit_edge, %for.cond.i157.1.i.exit_unregister_sysfs_crit_edge, %for.cond.i157.i.exit_unregister_sysfs_crit_edge, %sw.bb80.i.exit_unregister_sysfs_crit_edge, %if.then35.i.exit_unregister_sysfs_crit_edge, %for.cond.i.4.i.exit_unregister_sysfs_crit_edge, %for.cond.i.3.i.exit_unregister_sysfs_crit_edge, %for.cond.i.2.i.exit_unregister_sysfs_crit_edge, %for.cond.i.1.i.exit_unregister_sysfs_crit_edge, %for.cond.i.i.exit_unregister_sysfs_crit_edge, %if.end26.i.exit_unregister_sysfs_crit_edge, %for.cond.i313.1.exit_unregister_sysfs_crit_edge, %for.cond.i313.exit_unregister_sysfs_crit_edge, %for.body.i318.preheader.exit_unregister_sysfs_crit_edge, %if.then87.10.exit_unregister_sysfs_crit_edge, %if.then87.9.exit_unregister_sysfs_crit_edge, %if.then87.8.exit_unregister_sysfs_crit_edge, %if.then87.7.exit_unregister_sysfs_crit_edge, %if.then87.6.exit_unregister_sysfs_crit_edge, %if.then87.5.exit_unregister_sysfs_crit_edge, %if.then87.4.exit_unregister_sysfs_crit_edge, %if.then87.3.exit_unregister_sysfs_crit_edge, %if.then87.2.exit_unregister_sysfs_crit_edge, %if.then87.1.exit_unregister_sysfs_crit_edge, %if.then87.exit_unregister_sysfs_crit_edge, %for.body.i307.exit_unregister_sysfs_crit_edge, %for.body.i295.exit_unregister_sysfs_crit_edge, %for.body.i283.exit_unregister_sysfs_crit_edge, %for.body.i272.exit_unregister_sysfs_crit_edge, %for.cond.i256.13.exit_unregister_sysfs_crit_edge, %for.cond.i256.12.exit_unregister_sysfs_crit_edge, %for.cond.i256.11.exit_unregister_sysfs_crit_edge, %for.cond.i256.10.exit_unregister_sysfs_crit_edge, %for.cond.i256.9.exit_unregister_sysfs_crit_edge, %for.cond.i256.8.exit_unregister_sysfs_crit_edge, %for.cond.i256.7.exit_unregister_sysfs_crit_edge, %for.cond.i256.6.exit_unregister_sysfs_crit_edge, %for.cond.i256.5.exit_unregister_sysfs_crit_edge, %for.cond.i256.4.exit_unregister_sysfs_crit_edge, %for.cond.i256.3.exit_unregister_sysfs_crit_edge, %for.cond.i256.2.exit_unregister_sysfs_crit_edge, %for.cond.i256.1.exit_unregister_sysfs_crit_edge, %for.cond.i256.exit_unregister_sysfs_crit_edge, %for.body.i250.exit_unregister_sysfs_crit_edge, %for.cond.i.13.exit_unregister_sysfs_crit_edge, %for.cond.i.12.exit_unregister_sysfs_crit_edge, %for.cond.i.11.exit_unregister_sysfs_crit_edge, %for.cond.i.10.exit_unregister_sysfs_crit_edge, %for.cond.i.9.exit_unregister_sysfs_crit_edge, %for.cond.i.8.exit_unregister_sysfs_crit_edge, %for.cond.i.7.exit_unregister_sysfs_crit_edge, %for.cond.i.6.exit_unregister_sysfs_crit_edge, %for.cond.i.5.exit_unregister_sysfs_crit_edge, %for.cond.i.4.exit_unregister_sysfs_crit_edge, %for.cond.i.3.exit_unregister_sysfs_crit_edge, %for.cond.i.2.exit_unregister_sysfs_crit_edge, %for.cond.i.1.exit_unregister_sysfs_crit_edge, %for.cond.i.exit_unregister_sysfs_crit_edge, %for.body.i.preheader.exit_unregister_sysfs_crit_edge, %for.body.i261.preheader.exit_unregister_sysfs_crit_edge, %if.end35.exit_unregister_sysfs_crit_edge
  %err.8 = phi i32 [ %call37, %if.end35.exit_unregister_sysfs_crit_edge ], [ %156, %if.then151 ], [ %call.i341, %for.body.i343.preheader.exit_unregister_sysfs_crit_edge ], [ %call.i341.1, %for.cond.i338.exit_unregister_sysfs_crit_edge ], [ %call.i341.2, %for.cond.i338.1.exit_unregister_sysfs_crit_edge ], [ %call.i352, %for.body.i354.preheader.exit_unregister_sysfs_crit_edge ], [ %call.i316, %for.body.i318.preheader.exit_unregister_sysfs_crit_edge ], [ %call.i316.1, %for.cond.i313.exit_unregister_sysfs_crit_edge ], [ %call.i316.2, %for.cond.i313.1.exit_unregister_sysfs_crit_edge ], [ %call90, %if.then87.exit_unregister_sysfs_crit_edge ], [ %call90.1, %if.then87.1.exit_unregister_sysfs_crit_edge ], [ %call90.2, %if.then87.2.exit_unregister_sysfs_crit_edge ], [ %call90.3, %if.then87.3.exit_unregister_sysfs_crit_edge ], [ %call90.4, %if.then87.4.exit_unregister_sysfs_crit_edge ], [ %call90.5, %if.then87.5.exit_unregister_sysfs_crit_edge ], [ %call90.6, %if.then87.6.exit_unregister_sysfs_crit_edge ], [ %call90.7, %if.then87.7.exit_unregister_sysfs_crit_edge ], [ %call90.8, %if.then87.8.exit_unregister_sysfs_crit_edge ], [ %call90.9, %if.then87.9.exit_unregister_sysfs_crit_edge ], [ %call90.10, %if.then87.10.exit_unregister_sysfs_crit_edge ], [ %call.i241, %for.body.i.preheader.exit_unregister_sysfs_crit_edge ], [ %call.i241.1, %for.cond.i.exit_unregister_sysfs_crit_edge ], [ %call.i241.2, %for.cond.i.1.exit_unregister_sysfs_crit_edge ], [ %call.i241.3, %for.cond.i.2.exit_unregister_sysfs_crit_edge ], [ %call.i241.4, %for.cond.i.3.exit_unregister_sysfs_crit_edge ], [ %call.i241.5, %for.cond.i.4.exit_unregister_sysfs_crit_edge ], [ %call.i241.6, %for.cond.i.5.exit_unregister_sysfs_crit_edge ], [ %call.i241.7, %for.cond.i.6.exit_unregister_sysfs_crit_edge ], [ %call.i241.8, %for.cond.i.7.exit_unregister_sysfs_crit_edge ], [ %call.i241.9, %for.cond.i.8.exit_unregister_sysfs_crit_edge ], [ %call.i241.10, %for.cond.i.9.exit_unregister_sysfs_crit_edge ], [ %call.i241.11, %for.cond.i.10.exit_unregister_sysfs_crit_edge ], [ %call.i241.12, %for.cond.i.11.exit_unregister_sysfs_crit_edge ], [ %call.i241.13, %for.cond.i.12.exit_unregister_sysfs_crit_edge ], [ %call.i241.14, %for.cond.i.13.exit_unregister_sysfs_crit_edge ], [ %call.i259, %for.body.i261.preheader.exit_unregister_sysfs_crit_edge ], [ %call.i259.1, %for.cond.i256.exit_unregister_sysfs_crit_edge ], [ %call.i259.2, %for.cond.i256.1.exit_unregister_sysfs_crit_edge ], [ %call.i259.3, %for.cond.i256.2.exit_unregister_sysfs_crit_edge ], [ %call.i259.4, %for.cond.i256.3.exit_unregister_sysfs_crit_edge ], [ %call.i259.5, %for.cond.i256.4.exit_unregister_sysfs_crit_edge ], [ %call.i259.6, %for.cond.i256.5.exit_unregister_sysfs_crit_edge ], [ %call.i259.7, %for.cond.i256.6.exit_unregister_sysfs_crit_edge ], [ %call.i259.8, %for.cond.i256.7.exit_unregister_sysfs_crit_edge ], [ %call.i259.9, %for.cond.i256.8.exit_unregister_sysfs_crit_edge ], [ %call.i259.10, %for.cond.i256.9.exit_unregister_sysfs_crit_edge ], [ %call.i259.11, %for.cond.i256.10.exit_unregister_sysfs_crit_edge ], [ %call.i259.12, %for.cond.i256.11.exit_unregister_sysfs_crit_edge ], [ %call.i259.13, %for.cond.i256.12.exit_unregister_sysfs_crit_edge ], [ %call.i259.14, %for.cond.i256.13.exit_unregister_sysfs_crit_edge ], [ %call.i193.i, %sw.default92.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.1.i, %for.cond.i190.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.2.i, %for.cond.i190.1.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.3.i, %for.cond.i190.2.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.4.i, %for.cond.i190.3.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.5.i, %for.cond.i190.4.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.6.i, %for.cond.i190.5.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.7.i, %for.cond.i190.6.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.8.i, %for.cond.i190.7.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.9.i, %for.cond.i190.8.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.10.i, %for.cond.i190.9.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.11.i, %for.cond.i190.10.i.exit_unregister_sysfs_crit_edge ], [ %call.i193.12.i, %for.cond.i190.11.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.i, %sw.bb80.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.1.i, %for.cond.i157.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.2.i, %for.cond.i157.1.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.3.i, %for.cond.i157.2.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.4.i, %for.cond.i157.3.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.5.i, %for.cond.i157.4.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.i, %sw.bb84.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.1.i, %for.cond.i168.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.2.i, %for.cond.i168.1.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.3.i, %for.cond.i168.2.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.4.i, %for.cond.i168.3.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.5.i, %for.cond.i168.4.i.exit_unregister_sysfs_crit_edge ], [ %call.i171.6.i, %for.cond.i168.5.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.i, %sw.bb88.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.1.i, %for.cond.i179.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.2.i, %for.cond.i179.1.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.3.i, %for.cond.i179.2.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.4.i, %for.cond.i179.3.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.5.i, %for.cond.i179.4.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.6.i, %for.cond.i179.5.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.7.i, %for.cond.i179.6.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.8.i, %for.cond.i179.7.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.9.i, %for.cond.i179.8.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.10.i, %for.cond.i179.9.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.11.i, %for.cond.i179.10.i.exit_unregister_sysfs_crit_edge ], [ %call.i182.12.i, %for.cond.i179.11.i.exit_unregister_sysfs_crit_edge ], [ %call.i149.i, %if.then35.i.exit_unregister_sysfs_crit_edge ], [ %call.i.i, %if.end26.i.exit_unregister_sysfs_crit_edge ], [ %call.i.1.i, %for.cond.i.i.exit_unregister_sysfs_crit_edge ], [ %call.i.2.i, %for.cond.i.1.i.exit_unregister_sysfs_crit_edge ], [ %call.i.3.i, %for.cond.i.2.i.exit_unregister_sysfs_crit_edge ], [ %call.i.4.i, %for.cond.i.3.i.exit_unregister_sysfs_crit_edge ], [ %call.i.5.i, %for.cond.i.4.i.exit_unregister_sysfs_crit_edge ], [ %call.i160.6.i, %f71882fg_create_fan_sysfs_files.exit.exit_unregister_sysfs_crit_edge ], [ %call.i293, %for.body.i295.exit_unregister_sysfs_crit_edge ], [ %call.i305, %for.body.i307.exit_unregister_sysfs_crit_edge ], [ %call.i281, %for.body.i283.exit_unregister_sysfs_crit_edge ], [ %call.i248, %for.body.i250.exit_unregister_sysfs_crit_edge ], [ %call.i270, %for.body.i272.exit_unregister_sysfs_crit_edge ]
  %call156 = tail call i32 @f71882fg_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %exit_unregister_sysfs, %if.end146.cleanup_crit_edge, %do.end33, %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end24 ], [ %err.8, %exit_unregister_sysfs ], [ -19, %do.end33 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end146.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f71882fg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [15 x i8], ptr @f71882fg_nr_fans, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx2 = getelementptr [15 x i8], ptr @f71882fg_nr_temps, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv.i = zext i16 %9 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 1) #9, !srcloc !535
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %12 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %13 = inttoptr i32 %add6.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %hwmon_dev = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwmon_dev, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hwmon_device_unregister(ptr noundef nonnull %16) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #9
  %conv6 = zext i8 %14 to i32
  %and = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end44_crit_edge, label %if.then8

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb
    i32 11, label %for.body.i123.preheader
    i32 14, label %for.body.i130.preheader
  ]

for.body.i130.preheader:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @f71858fg_temp_attr) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 1)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 2)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 3)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 4)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 5)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 6)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 7)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 8)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 9)) #9
  br label %sw.epilogthread-pre-split.sink.split

for.body.i123.preheader:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @f8000_temp_attr) #9
  br label %sw.epilogthread-pre-split.sink.split

sw.bb:                                            ; preds = %if.then8
  %temp_config = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %temp_config to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %temp_config, align 1
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %for.body.i116.preheader, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @f8000_temp_attr) #9
  br label %sw.epilogthread-pre-split.sink.split

for.body.i116.preheader:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @f71858fg_temp_attr) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 1)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 2)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 3)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 4)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 5)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 6)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 7)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 8)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 9)) #9
  br label %sw.epilogthread-pre-split.sink.split

sw.default:                                       ; preds = %if.then8
  %mul = mul nuw nsw i32 %conv3, 9
  br label %for.body.i137

for.body.i137:                                    ; preds = %for.body.i137.for.body.i137_crit_edge, %sw.default
  %i.04.i133 = phi i32 [ %inc.i135, %for.body.i137.for.body.i137_crit_edge ], [ 0, %sw.default ]
  %arrayidx.i134 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_temp_attr, i32 %i.04.i133
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i134) #9
  %inc.i135 = add nuw nsw i32 %i.04.i133, 1
  %exitcond.not.i136 = icmp eq i32 %inc.i135, %mul
  br i1 %exitcond.not.i136, label %for.body.i137.sw.epilogthread-pre-split_crit_edge, label %for.body.i137.for.body.i137_crit_edge

for.body.i137.for.body.i137_crit_edge:            ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i137

for.body.i137.sw.epilogthread-pre-split_crit_edge: ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split.sink.split:             ; preds = %for.body.i116.preheader, %for.body.i.preheader, %for.body.i123.preheader, %for.body.i130.preheader
  %.sink281 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 10), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 1), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 1), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 10), %for.body.i116.preheader ]
  %.sink280 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 11), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 2), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 2), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 11), %for.body.i116.preheader ]
  %.sink279 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 12), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 3), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 3), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 12), %for.body.i116.preheader ]
  %.sink278 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 13), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 4), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 4), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 13), %for.body.i116.preheader ]
  %.sink277 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 14), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 5), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 5), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 14), %for.body.i116.preheader ]
  %.sink276 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 15), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 6), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 6), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 15), %for.body.i116.preheader ]
  %.sink275 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 16), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 7), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 7), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 16), %for.body.i116.preheader ]
  %.sink274 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 17), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 8), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 8), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 17), %for.body.i116.preheader ]
  %.sink273 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 18), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 9), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 9), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 18), %for.body.i116.preheader ]
  %.sink272 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 19), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 10), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 10), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 19), %for.body.i116.preheader ]
  %.sink271 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 20), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 11), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 11), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 20), %for.body.i116.preheader ]
  %.sink270 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 21), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 12), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 12), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 21), %for.body.i116.preheader ]
  %.sink269 = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 22), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 13), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 13), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 22), %for.body.i116.preheader ]
  %.sink = phi ptr [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 23), %for.body.i130.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 14), %for.body.i123.preheader ], [ getelementptr inbounds ([15 x %struct.sensor_device_attribute_2], ptr @f8000_temp_attr, i32 0, i32 14), %for.body.i.preheader ], [ getelementptr inbounds ([24 x %struct.sensor_device_attribute_2], ptr @f71858fg_temp_attr, i32 0, i32 23), %for.body.i116.preheader ]
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink281) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink280) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink279) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink278) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink277) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink276) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink275) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink274) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink273) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink272) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink271) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink270) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink269) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %.sink) #9
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %sw.epilogthread-pre-split.sink.split, %for.body.i137.sw.epilogthread-pre-split_crit_edge
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %type, align 4
  %24 = lshr i32 2053, %.pr
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not.not = icmp eq i32 %25, 0
  br i1 %tobool19.not.not, label %if.then20, label %sw.epilogthread-pre-split.if.end28_crit_edge

sw.epilogthread-pre-split.if.end28_crit_edge:     ; preds = %sw.epilogthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then20:                                        ; preds = %sw.epilogthread-pre-split
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 14
  %mul24 = shl nuw nsw i32 %conv3, 1
  br i1 %cmp, label %if.then20.for.body.i146_crit_edge, label %if.then20.for.body.i155_crit_edge

if.then20.for.body.i155_crit_edge:                ; preds = %if.then20
  br label %for.body.i155

if.then20.for.body.i146_crit_edge:                ; preds = %if.then20
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.body.i146.for.body.i146_crit_edge, %if.then20.for.body.i146_crit_edge
  %i.04.i142 = phi i32 [ %inc.i144, %for.body.i146.for.body.i146_crit_edge ], [ 0, %if.then20.for.body.i146_crit_edge ]
  %arrayidx.i143 = getelementptr %struct.sensor_device_attribute_2, ptr @f81866_temp_beep_attr, i32 %i.04.i142
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i143) #9
  %inc.i144 = add nuw nsw i32 %i.04.i142, 1
  %exitcond.not.i145 = icmp eq i32 %inc.i144, %mul24
  br i1 %exitcond.not.i145, label %for.body.i146.if.end28_crit_edge, label %for.body.i146.for.body.i146_crit_edge

for.body.i146.for.body.i146_crit_edge:            ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i146

for.body.i146.if.end28_crit_edge:                 ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.body.i155:                                    ; preds = %for.body.i155.for.body.i155_crit_edge, %if.then20.for.body.i155_crit_edge
  %i.04.i151 = phi i32 [ %inc.i153, %for.body.i155.for.body.i155_crit_edge ], [ 0, %if.then20.for.body.i155_crit_edge ]
  %arrayidx.i152 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_temp_beep_attr, i32 %i.04.i151
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i152) #9
  %inc.i153 = add nuw nsw i32 %i.04.i151, 1
  %exitcond.not.i154 = icmp eq i32 %inc.i153, %mul24
  br i1 %exitcond.not.i154, label %for.body.i155.if.end28_crit_edge, label %for.body.i155.for.body.i155_crit_edge

for.body.i155.for.body.i155_crit_edge:            ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i155

for.body.i155.if.end28_crit_edge:                 ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %for.body.i155.if.end28_crit_edge, %for.body.i146.if.end28_crit_edge, %sw.epilogthread-pre-split.if.end28_crit_edge
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %arrayidx33 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %27, i32 0
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool34.not = icmp eq i8 %29, 0
  br i1 %tobool34.not, label %if.end28.for.inc_crit_edge, label %if.then35

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @fxxxx_in_attr) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %if.end28.for.inc_crit_edge
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  %arrayidx33.1 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %31, i32 1
  %32 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx33.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not.1 = icmp eq i8 %33, 0
  br i1 %tobool34.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then35.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then35.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 1)) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then35.1, %for.inc.for.inc.1_crit_edge
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %arrayidx33.2 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %35, i32 2
  %36 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx33.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool34.not.2 = icmp eq i8 %37, 0
  br i1 %tobool34.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then35.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then35.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 2)) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then35.2, %for.inc.1.for.inc.2_crit_edge
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 4
  %arrayidx33.3 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %39, i32 3
  %40 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx33.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool34.not.3 = icmp eq i8 %41, 0
  br i1 %tobool34.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then35.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then35.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 3)) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then35.3, %for.inc.2.for.inc.3_crit_edge
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %arrayidx33.4 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %43, i32 4
  %44 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx33.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool34.not.4 = icmp eq i8 %45, 0
  br i1 %tobool34.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then35.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then35.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 4)) #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then35.4, %for.inc.3.for.inc.4_crit_edge
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 4
  %arrayidx33.5 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %47, i32 5
  %48 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx33.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool34.not.5 = icmp eq i8 %49, 0
  br i1 %tobool34.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then35.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then35.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 5)) #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then35.5, %for.inc.4.for.inc.5_crit_edge
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type, align 4
  %arrayidx33.6 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %51, i32 6
  %52 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx33.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool34.not.6 = icmp eq i8 %53, 0
  br i1 %tobool34.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then35.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then35.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 6)) #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then35.6, %for.inc.5.for.inc.6_crit_edge
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type, align 4
  %arrayidx33.7 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %55, i32 7
  %56 = ptrtoint ptr %arrayidx33.7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx33.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool34.not.7 = icmp eq i8 %57, 0
  br i1 %tobool34.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then35.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then35.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 7)) #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then35.7, %for.inc.6.for.inc.7_crit_edge
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 4
  %arrayidx33.8 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %59, i32 8
  %60 = ptrtoint ptr %arrayidx33.8 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx33.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool34.not.8 = icmp eq i8 %61, 0
  br i1 %tobool34.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then35.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then35.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 8)) #9
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then35.8, %for.inc.7.for.inc.8_crit_edge
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 4
  %arrayidx33.9 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %63, i32 9
  %64 = ptrtoint ptr %arrayidx33.9 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx33.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool34.not.9 = icmp eq i8 %65, 0
  br i1 %tobool34.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then35.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then35.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 9)) #9
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then35.9, %for.inc.8.for.inc.9_crit_edge
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 4
  %arrayidx33.10 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %67, i32 10
  %68 = ptrtoint ptr %arrayidx33.10 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx33.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool34.not.10 = icmp eq i8 %69, 0
  br i1 %tobool34.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then35.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

if.then35.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute_2], ptr @fxxxx_in_attr, i32 0, i32 10)) #9
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then35.10, %for.inc.9.for.inc.10_crit_edge
  %70 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type, align 4
  %72 = lshr i32 2175, %71
  %73 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool41.not.not = icmp eq i32 %73, 0
  br i1 %tobool41.not.not, label %for.body.i163.preheader, label %for.inc.10.if.end44_crit_edge

for.inc.10.if.end44_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body.i163.preheader:                          ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @fxxxx_in1_alarm_attr) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @fxxxx_in1_alarm_attr, i32 0, i32 1)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @fxxxx_in1_alarm_attr, i32 0, i32 2)) #9
  br label %if.end44

if.end44:                                         ; preds = %for.body.i163.preheader, %for.inc.10.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %and46 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end67_crit_edge, label %if.then48

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then48:                                        ; preds = %if.end44
  %mul49 = mul nuw nsw i32 %conv, 6
  br label %for.body.i172

for.body.i172:                                    ; preds = %for.body.i172.for.body.i172_crit_edge, %if.then48
  %i.04.i168 = phi i32 [ %inc.i170, %for.body.i172.for.body.i172_crit_edge ], [ 0, %if.then48 ]
  %arrayidx.i169 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_fan_attr, i32 %i.04.i168
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i169) #9
  %inc.i170 = add nuw nsw i32 %i.04.i168, 1
  %exitcond.not.i171 = icmp eq i32 %inc.i170, %mul49
  br i1 %exitcond.not.i171, label %f71882fg_remove_sysfs_files.exit173, label %for.body.i172.for.body.i172_crit_edge

for.body.i172.for.body.i172_crit_edge:            ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i172

f71882fg_remove_sysfs_files.exit173:              ; preds = %for.body.i172
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type, align 4
  %76 = lshr i32 2055, %75
  %77 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool52.not.not = icmp eq i32 %77, 0
  br i1 %tobool52.not.not, label %f71882fg_remove_sysfs_files.exit173.for.body.i181_crit_edge, label %f71882fg_remove_sysfs_files.exit173.if.end54_crit_edge

f71882fg_remove_sysfs_files.exit173.if.end54_crit_edge: ; preds = %f71882fg_remove_sysfs_files.exit173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

f71882fg_remove_sysfs_files.exit173.for.body.i181_crit_edge: ; preds = %f71882fg_remove_sysfs_files.exit173
  br label %for.body.i181

for.body.i181:                                    ; preds = %for.body.i181.for.body.i181_crit_edge, %f71882fg_remove_sysfs_files.exit173.for.body.i181_crit_edge
  %i.04.i177 = phi i32 [ %inc.i179, %for.body.i181.for.body.i181_crit_edge ], [ 0, %f71882fg_remove_sysfs_files.exit173.for.body.i181_crit_edge ]
  %arrayidx.i178 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_fan_beep_attr, i32 %i.04.i177
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i178) #9
  %inc.i179 = add nuw nsw i32 %i.04.i177, 1
  %exitcond.not.i180 = icmp eq i32 %inc.i179, %conv
  br i1 %exitcond.not.i180, label %if.end54thread-pre-split, label %for.body.i181.for.body.i181_crit_edge

for.body.i181.for.body.i181_crit_edge:            ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i181

if.end54thread-pre-split:                         ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr244 = load i32, ptr %type, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54thread-pre-split, %f71882fg_remove_sysfs_files.exit173.if.end54_crit_edge
  %79 = phi i32 [ %.pr244, %if.end54thread-pre-split ], [ %75, %f71882fg_remove_sysfs_files.exit173.if.end54_crit_edge ]
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %79, label %sw.default64 [
    i32 1, label %sw.bb56
    i32 3, label %sw.bb58
    i32 0, label %if.end54.sw.bb60_crit_edge
    i32 5, label %if.end54.sw.bb60_crit_edge290
    i32 11, label %for.body.i224.preheader
  ]

if.end54.sw.bb60_crit_edge290:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

if.end54.sw.bb60_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

for.body.i224.preheader:                          ; preds = %if.end54
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @f8000_fan_attr) #9
  %mul63 = mul nuw nsw i32 %conv, 14
  br label %for.body.i233

sw.bb56:                                          ; preds = %if.end54
  %mul57 = mul nuw nsw i32 %conv, 14
  br label %for.body.i190

for.body.i190:                                    ; preds = %for.body.i190.for.body.i190_crit_edge, %sw.bb56
  %i.04.i186 = phi i32 [ %inc.i188, %for.body.i190.for.body.i190_crit_edge ], [ 0, %sw.bb56 ]
  %arrayidx.i187 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_auto_pwm_attr, i32 %i.04.i186
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i187) #9
  %inc.i188 = add nuw nsw i32 %i.04.i186, 1
  %exitcond.not.i189 = icmp eq i32 %inc.i188, %mul57
  br i1 %exitcond.not.i189, label %for.body.i198.preheader, label %for.body.i190.for.body.i190_crit_edge

for.body.i190.for.body.i190_crit_edge:            ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i190

for.body.i198.preheader:                          ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @f71808a_fan3_attr) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @f71808a_fan3_attr, i32 0, i32 1)) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute_2], ptr @f71808a_fan3_attr, i32 0, i32 2)) #9
  br label %if.end67

sw.bb58:                                          ; preds = %if.end54
  %mul59 = mul nuw nsw i32 %conv, 7
  br label %for.body.i207

for.body.i207:                                    ; preds = %for.body.i207.for.body.i207_crit_edge, %sw.bb58
  %i.04.i203 = phi i32 [ %inc.i205, %for.body.i207.for.body.i207_crit_edge ], [ 0, %sw.bb58 ]
  %arrayidx.i204 = getelementptr %struct.sensor_device_attribute_2, ptr @f71862fg_auto_pwm_attr, i32 %i.04.i203
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i204) #9
  %inc.i205 = add nuw nsw i32 %i.04.i203, 1
  %exitcond.not.i206 = icmp eq i32 %inc.i205, %mul59
  br i1 %exitcond.not.i206, label %for.body.i207.if.end67_crit_edge, label %for.body.i207.for.body.i207_crit_edge

for.body.i207.for.body.i207_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i207

for.body.i207.if.end67_crit_edge:                 ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

sw.bb60:                                          ; preds = %if.end54.sw.bb60_crit_edge, %if.end54.sw.bb60_crit_edge290
  %mul61 = shl nuw nsw i32 %conv, 3
  br label %for.body.i216

for.body.i216:                                    ; preds = %for.body.i216.for.body.i216_crit_edge, %sw.bb60
  %i.04.i212 = phi i32 [ %inc.i214, %for.body.i216.for.body.i216_crit_edge ], [ 0, %sw.bb60 ]
  %arrayidx.i213 = getelementptr %struct.sensor_device_attribute_2, ptr @f71869_auto_pwm_attr, i32 %i.04.i212
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i213) #9
  %inc.i214 = add nuw nsw i32 %i.04.i212, 1
  %exitcond.not.i215 = icmp eq i32 %inc.i214, %mul61
  br i1 %exitcond.not.i215, label %for.body.i216.if.end67_crit_edge, label %for.body.i216.for.body.i216_crit_edge

for.body.i216.for.body.i216_crit_edge:            ; preds = %for.body.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i216

for.body.i216.if.end67_crit_edge:                 ; preds = %for.body.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

for.body.i233:                                    ; preds = %for.body.i233.for.body.i233_crit_edge, %for.body.i224.preheader
  %i.04.i229 = phi i32 [ %inc.i231, %for.body.i233.for.body.i233_crit_edge ], [ 0, %for.body.i224.preheader ]
  %arrayidx.i230 = getelementptr %struct.sensor_device_attribute_2, ptr @f8000_auto_pwm_attr, i32 %i.04.i229
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i230) #9
  %inc.i231 = add nuw nsw i32 %i.04.i229, 1
  %exitcond.not.i232 = icmp eq i32 %inc.i231, %mul63
  br i1 %exitcond.not.i232, label %for.body.i233.if.end67_crit_edge, label %for.body.i233.for.body.i233_crit_edge

for.body.i233.for.body.i233_crit_edge:            ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i233

for.body.i233.if.end67_crit_edge:                 ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

sw.default64:                                     ; preds = %if.end54
  %mul65 = mul nuw nsw i32 %conv, 14
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.body.i242.for.body.i242_crit_edge, %sw.default64
  %i.04.i238 = phi i32 [ %inc.i240, %for.body.i242.for.body.i242_crit_edge ], [ 0, %sw.default64 ]
  %arrayidx.i239 = getelementptr %struct.sensor_device_attribute_2, ptr @fxxxx_auto_pwm_attr, i32 %i.04.i238
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx.i239) #9
  %inc.i240 = add nuw nsw i32 %i.04.i238, 1
  %exitcond.not.i241 = icmp eq i32 %inc.i240, %mul65
  br i1 %exitcond.not.i241, label %for.body.i242.if.end67_crit_edge, label %for.body.i242.for.body.i242_crit_edge

for.body.i242.for.body.i242_crit_edge:            ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i242

for.body.i242.if.end67_crit_edge:                 ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %for.body.i242.if.end67_crit_edge, %for.body.i233.if.end67_crit_edge, %for.body.i216.if.end67_crit_edge, %for.body.i207.if.end67_crit_edge, %for.body.i198.preheader, %if.end44.if.end67_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [15 x ptr], ptr @f71882fg_names, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %temp_config = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 26
  %4 = ptrtoint ptr %temp_config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temp_config, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %arrayidx12 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 18, i32 %conv
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %8 to i32
  %9 = lshr i32 %conv13, 5
  %10 = lshr i32 %conv13, 5
  %and19 = and i32 %10, 1023
  %sign.0.v = select i1 %tobool.not, i32 32768, i32 1
  %sign.0 = and i32 %sign.0.v, %conv13
  %temp.0 = select i1 %tobool.not, i32 %and19, i32 %9
  %mul = mul nuw nsw i32 %temp.0, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sign.0)
  %tobool20.not = icmp eq i32 %sign.0, 0
  %sub = add nsw i32 %mul, -128000
  %spec.select = select i1 %tobool20.not, i32 %mul, i32 %sub
  br label %if.end28

if.else23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 18, i32 %conv
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %12 to i32
  %mul27 = mul nuw nsw i32 %conv26, 1000
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then
  %temp.1 = phi i32 [ %mul27, %if.else23 ], [ %spec.select, %if.then ]
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %temp.1)
  ret i32 %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_crit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 19, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv1, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_crit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = sdiv i32 %6, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %6)
  %cmp = icmp sgt i32 %6, 999
  %7 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %8 = select i1 %cmp, i32 %7, i32 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 1
  %add = xor i8 %mul, -128
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %11 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %14 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %add) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %16 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %17 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv12) #9, !srcloc !535
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %conv13 = trunc i32 %19 to i8
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 19, i32 %conv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %arrayidx, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 20, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv1, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = sdiv i32 %6, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %6)
  %cmp = icmp sgt i32 %6, 999
  %7 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %8 = select i1 %cmp, i32 %7, i32 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 1
  %add = add i8 %mul, -127
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %11 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %14 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %add) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %16 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %17 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv12) #9, !srcloc !535
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %conv13 = trunc i32 %19 to i8
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 20, i32 %conv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %arrayidx, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %temp_status = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %temp_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_status, align 2
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_fault(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %temp_diode_open = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %temp_diode_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_diode_open, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f71882fg_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [15 x i8], ptr @f71882fg_nr_fans, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx2 = getelementptr [15 x i8], ptr @f71882fg_nr_temps, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_limits = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %last_limits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_limits, align 4
  %add = add i32 %9, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end164_crit_edge

lor.lhs.false.if.end164_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %15 = lshr i32 2175, %14
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.not = icmp eq i32 %16, 0
  br i1 %tobool7.not.not, label %if.then8, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %14)
  %cmp10 = icmp eq i32 %14, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv.i = zext i16 %18 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %19 = inttoptr i32 %add1.i to ptr
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 58) #9, !srcloc !535
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %21 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %22 = inttoptr i32 %add6.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %in1_max = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %in1_max to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %in1_max, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 4
  %conv.i424 = zext i16 %26 to i32
  %add1.i425 = add nuw nsw i32 %conv.i424, -18874363
  %27 = inttoptr i32 %add1.i425 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 23) #9, !srcloc !535
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 4
  %conv3.i426 = zext i16 %29 to i32
  %add6.i427 = add nuw nsw i32 %conv3.i426, -18874362
  %30 = inttoptr i32 %add6.i427 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 50) #9, !srcloc !535
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %conv3.i430 = zext i16 %33 to i32
  %add6.i431 = add nuw nsw i32 %conv3.i430, -18874362
  %34 = inttoptr i32 %add6.i431 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %in1_max16 = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %in1_max16 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %in1_max16, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 4
  %conv.i432 = zext i16 %38 to i32
  %add1.i433 = add nuw nsw i32 %conv.i432, -18874363
  %39 = inttoptr i32 %add1.i433 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 19) #9, !srcloc !535
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  %conv3.i434 = zext i16 %41 to i32
  %add6.i435 = add nuw nsw i32 %conv3.i434, -18874362
  %42 = inttoptr i32 %add6.i435 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else, %if.then12
  %.sink = phi i8 [ %31, %if.then12 ], [ %43, %if.else ]
  %in_beep = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %in_beep to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink, ptr %in_beep, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.then.if.end19_crit_edge
  %temp_start = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %temp_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %temp_start, align 4
  %add21595 = add i32 %46, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add21595)
  %cmp22596 = icmp slt i32 %46, %add21595
  br i1 %cmp22596, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %nr.0597 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %46, %if.end19.for.body_crit_edge ]
  %nr.0.tr = trunc i32 %nr.0597 to i8
  %47 = shl i8 %nr.0.tr, 1
  %conv25 = xor i8 %47, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 4
  %conv.i436 = zext i16 %49 to i32
  %add1.i437 = add nuw nsw i32 %conv.i436, -18874363
  %50 = inttoptr i32 %add1.i437 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv25) #9, !srcloc !535
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %1, align 4
  %conv3.i438 = zext i16 %52 to i32
  %add6.i439 = add nuw nsw i32 %conv3.i438, -18874362
  %53 = inttoptr i32 %add6.i439 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx27 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 19, i32 %nr.0597
  %55 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx27, align 1
  %conv30 = add i8 %47, -127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %1, align 4
  %conv.i440 = zext i16 %57 to i32
  %add1.i441 = add nuw nsw i32 %conv.i440, -18874363
  %58 = inttoptr i32 %add1.i441 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv30) #9, !srcloc !535
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %1, align 4
  %conv3.i442 = zext i16 %60 to i32
  %add6.i443 = add nuw nsw i32 %conv3.i442, -18874362
  %61 = inttoptr i32 %add6.i443 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx32 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 20, i32 %nr.0597
  %63 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx32, align 1
  %inc = add nsw i32 %nr.0597, 1
  %64 = ptrtoint ptr %temp_start to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %temp_start, align 4
  %add21 = add i32 %65, %conv3
  %cmp22 = icmp slt i32 %inc, %add21
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %67)
  %cmp34.not = icmp eq i32 %67, 11
  br i1 %cmp34.not, label %for.end.if.end67_crit_edge, label %if.end42

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end42:                                         ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %1, align 4
  %conv.i444 = zext i16 %69 to i32
  %add1.i445 = add nuw nsw i32 %conv.i444, -18874363
  %70 = inttoptr i32 %add1.i445 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 108) #9, !srcloc !535
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %1, align 4
  %conv3.i446 = zext i16 %72 to i32
  %add6.i447 = add nuw nsw i32 %conv3.i446, -18874362
  %73 = inttoptr i32 %add6.i447 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %temp_hyst = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 21
  %75 = ptrtoint ptr %temp_hyst to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %temp_hyst, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %1, align 4
  %conv.i448 = zext i16 %77 to i32
  %add1.i449 = add nuw nsw i32 %conv.i448, -18874363
  %78 = inttoptr i32 %add1.i449 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 109) #9, !srcloc !535
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %1, align 4
  %conv3.i450 = zext i16 %80 to i32
  %add6.i451 = add nuw nsw i32 %conv3.i450, -18874362
  %81 = inttoptr i32 %add6.i451 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx41 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 21, i32 1
  %83 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx41, align 1
  %84 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load i32, ptr %type, align 4
  %85 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %.pr, label %if.then49 [
    i32 2, label %if.end42.if.end67_crit_edge
    i32 11, label %if.end42.if.end67_crit_edge615
  ]

if.end42.if.end67_crit_edge615:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end42.if.end67_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %1, align 4
  %conv.i452 = zext i16 %87 to i32
  %add1.i453 = add nuw nsw i32 %conv.i452, -18874363
  %88 = inttoptr i32 %add1.i453 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 107) #9, !srcloc !535
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %1, align 4
  %conv3.i454 = zext i16 %90 to i32
  %add6.i455 = add nuw nsw i32 %conv3.i454, -18874362
  %91 = inttoptr i32 %add6.i455 to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv51 = zext i8 %92 to i32
  %and = and i32 %conv51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  %conv53 = select i1 %tobool52.not, i8 4, i8 2
  %arrayidx54 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 22, i32 1
  %93 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv53, ptr %arrayidx54, align 1
  %and55 = and i32 %conv51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %conv58 = select i1 %tobool56.not, i8 4, i8 2
  %arrayidx60 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 22, i32 2
  %94 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv58, ptr %arrayidx60, align 2
  %and61 = and i32 %conv51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %conv64 = select i1 %tobool62.not, i8 4, i8 2
  %arrayidx66 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 22, i32 3
  %95 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv64, ptr %arrayidx66, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then49, %if.end42.if.end67_crit_edge, %if.end42.if.end67_crit_edge615, %for.end.if.end67_crit_edge
  %96 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %type, align 4
  %98 = lshr i32 2055, %97
  %99 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool70.not.not = icmp eq i32 %99, 0
  br i1 %tobool70.not.not, label %if.then71, label %if.end67.if.end73_crit_edge

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %1, align 4
  %conv.i456 = zext i16 %101 to i32
  %add1.i457 = add nuw nsw i32 %conv.i456, -18874363
  %102 = inttoptr i32 %add1.i457 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 -109) #9, !srcloc !535
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %1, align 4
  %conv3.i458 = zext i16 %104 to i32
  %add6.i459 = add nuw nsw i32 %conv3.i458, -18874362
  %105 = inttoptr i32 %add6.i459 to ptr
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %fan_beep = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 17
  %107 = ptrtoint ptr %fan_beep to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %fan_beep, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67.if.end73_crit_edge
  %108 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type, align 4
  %110 = lshr i32 2053, %109
  %111 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool76.not.not = icmp eq i32 %111, 0
  br i1 %tobool76.not.not, label %if.then77, label %if.end73.for.body89.preheader_crit_edge

if.end73.for.body89.preheader_crit_edge:          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89.preheader

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %1, align 4
  %conv.i460 = zext i16 %113 to i32
  %add1.i461 = add nuw nsw i32 %conv.i460, -18874363
  %114 = inttoptr i32 %add1.i461 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 99) #9, !srcloc !535
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %1, align 4
  %conv3.i462 = zext i16 %116 to i32
  %add6.i463 = add nuw nsw i32 %conv3.i462, -18874362
  %117 = inttoptr i32 %add6.i463 to ptr
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %117) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %temp_beep = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 24
  %119 = ptrtoint ptr %temp_beep to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %temp_beep, align 1
  br label %for.body89.preheader

for.body89.preheader:                             ; preds = %if.then77, %if.end73.for.body89.preheader_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %1, align 4
  %conv.i464 = zext i16 %121 to i32
  %add1.i465 = add nuw nsw i32 %conv.i464, -18874363
  %122 = inttoptr i32 %add1.i465 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 -106) #9, !srcloc !535
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %1, align 4
  %conv3.i466 = zext i16 %124 to i32
  %add6.i467 = add nuw nsw i32 %conv3.i466, -18874362
  %125 = inttoptr i32 %add6.i467 to ptr
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %125) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 28
  %127 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %pwm_enable, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %1, align 4
  %conv.i468 = zext i16 %129 to i32
  %add1.i469 = add nuw nsw i32 %conv.i468, -18874363
  %130 = inttoptr i32 %add1.i469 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 -104) #9, !srcloc !535
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %1, align 4
  %conv3.i470 = zext i16 %132 to i32
  %add6.i471 = add nuw nsw i32 %conv3.i470, -18874362
  %133 = inttoptr i32 %add6.i471 to ptr
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %133) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %pwm_auto_point_hyst = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 29
  %135 = ptrtoint ptr %pwm_auto_point_hyst to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %pwm_auto_point_hyst, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %1, align 4
  %conv.i472 = zext i16 %137 to i32
  %add1.i473 = add nuw nsw i32 %conv.i472, -18874363
  %138 = inttoptr i32 %add1.i473 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 -103) #9, !srcloc !535
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %1, align 4
  %conv3.i474 = zext i16 %140 to i32
  %add6.i475 = add nuw nsw i32 %conv3.i474, -18874362
  %141 = inttoptr i32 %add6.i475 to ptr
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %141) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx85 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 29, i32 1
  %143 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx85, align 1
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  br label %for.body89

for.body89:                                       ; preds = %for.inc160.for.body89_crit_edge, %for.body89.preheader
  %nr.1601 = phi i32 [ %inc161, %for.inc160.for.body89_crit_edge ], [ 0, %for.body89.preheader ]
  %mul90 = shl i32 %nr.1601, 4
  %144 = trunc i32 %mul90 to i8
  %conv92 = add i8 %144, -81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %1, align 4
  %conv.i476 = zext i16 %146 to i32
  %add1.i477 = add nuw nsw i32 %conv.i476, -18874363
  %147 = inttoptr i32 %add1.i477 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %147, i8 %conv92) #9, !srcloc !535
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %1, align 4
  %conv3.i478 = zext i16 %149 to i32
  %add6.i479 = add nuw nsw i32 %conv3.i478, -18874362
  %150 = inttoptr i32 %add6.i479 to ptr
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %150) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx94 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 30, i32 %nr.1601
  %152 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx94, align 1
  %153 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %type, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %154, label %for.cond96.preheader [
    i32 0, label %for.body89.sw.bb_crit_edge
    i32 5, label %for.body89.sw.bb_crit_edge616
    i32 3, label %for.body89.sw.bb131_crit_edge
  ]

for.body89.sw.bb131_crit_edge:                    ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb131

for.body89.sw.bb_crit_edge616:                    ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.body89.sw.bb_crit_edge:                       ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.cond96.preheader:                             ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  %156 = trunc i32 %mul90 to i8
  %conv103 = add i8 %156, -86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %1, align 4
  %conv.i480 = zext i16 %158 to i32
  %add1.i481 = add nuw nsw i32 %conv.i480, -18874363
  %159 = inttoptr i32 %add1.i481 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %159, i8 %conv103) #9, !srcloc !535
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %1, align 4
  %conv3.i482 = zext i16 %161 to i32
  %add6.i483 = add nuw nsw i32 %conv3.i482, -18874362
  %162 = inttoptr i32 %add6.i483 to ptr
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %162) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx106 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 0
  %164 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx106, align 1
  %165 = trunc i32 %mul90 to i8
  %conv103.1 = add i8 %165, -85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %1, align 4
  %conv.i480.1 = zext i16 %167 to i32
  %add1.i481.1 = add nuw nsw i32 %conv.i480.1, -18874363
  %168 = inttoptr i32 %add1.i481.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %168, i8 %conv103.1) #9, !srcloc !535
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %1, align 4
  %conv3.i482.1 = zext i16 %170 to i32
  %add6.i483.1 = add nuw nsw i32 %conv3.i482.1, -18874362
  %171 = inttoptr i32 %add6.i483.1 to ptr
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %171) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx106.1 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 1
  %173 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx106.1, align 1
  %174 = trunc i32 %mul90 to i8
  %conv103.2 = add i8 %174, -84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %1, align 4
  %conv.i480.2 = zext i16 %176 to i32
  %add1.i481.2 = add nuw nsw i32 %conv.i480.2, -18874363
  %177 = inttoptr i32 %add1.i481.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 %conv103.2) #9, !srcloc !535
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %1, align 4
  %conv3.i482.2 = zext i16 %179 to i32
  %add6.i483.2 = add nuw nsw i32 %conv3.i482.2, -18874362
  %180 = inttoptr i32 %add6.i483.2 to ptr
  %181 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %180) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx106.2 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 2
  %182 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx106.2, align 1
  %183 = trunc i32 %mul90 to i8
  %conv103.3 = add i8 %183, -83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %1, align 4
  %conv.i480.3 = zext i16 %185 to i32
  %add1.i481.3 = add nuw nsw i32 %conv.i480.3, -18874363
  %186 = inttoptr i32 %add1.i481.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 %conv103.3) #9, !srcloc !535
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %1, align 4
  %conv3.i482.3 = zext i16 %188 to i32
  %add6.i483.3 = add nuw nsw i32 %conv3.i482.3, -18874362
  %189 = inttoptr i32 %add6.i483.3 to ptr
  %190 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %189) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx106.3 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 3
  %191 = ptrtoint ptr %arrayidx106.3 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx106.3, align 1
  %192 = trunc i32 %mul90 to i8
  %conv103.4 = add i8 %192, -82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %1, align 4
  %conv.i480.4 = zext i16 %194 to i32
  %add1.i481.4 = add nuw nsw i32 %conv.i480.4, -18874363
  %195 = inttoptr i32 %add1.i481.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 %conv103.4) #9, !srcloc !535
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %1, align 4
  %conv3.i482.4 = zext i16 %197 to i32
  %add6.i483.4 = add nuw nsw i32 %conv3.i482.4, -18874362
  %198 = inttoptr i32 %add6.i483.4 to ptr
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %198) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx106.4 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 4
  %200 = ptrtoint ptr %arrayidx106.4 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %arrayidx106.4, align 1
  %201 = trunc i32 %mul90 to i8
  %conv117 = add i8 %201, -90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %1, align 4
  %conv.i484 = zext i16 %203 to i32
  %add1.i485 = add nuw nsw i32 %conv.i484, -18874363
  %204 = inttoptr i32 %add1.i485 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %204, i8 %conv117) #9, !srcloc !535
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %1, align 4
  %conv3.i486 = zext i16 %206 to i32
  %add6.i487 = add nuw nsw i32 %conv3.i486, -18874362
  %207 = inttoptr i32 %add6.i487 to ptr
  %208 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %207) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx120 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %nr.1601, i32 0
  %209 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx120, align 1
  %210 = trunc i32 %mul90 to i8
  %conv117.1 = add i8 %210, -89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %1, align 4
  %conv.i484.1 = zext i16 %212 to i32
  %add1.i485.1 = add nuw nsw i32 %conv.i484.1, -18874363
  %213 = inttoptr i32 %add1.i485.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %213, i8 %conv117.1) #9, !srcloc !535
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %1, align 4
  %conv3.i486.1 = zext i16 %215 to i32
  %add6.i487.1 = add nuw nsw i32 %conv3.i486.1, -18874362
  %216 = inttoptr i32 %add6.i487.1 to ptr
  %217 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %216) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx120.1 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %nr.1601, i32 1
  %218 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx120.1, align 1
  %219 = trunc i32 %mul90 to i8
  %conv117.2 = add i8 %219, -88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %1, align 4
  %conv.i484.2 = zext i16 %221 to i32
  %add1.i485.2 = add nuw nsw i32 %conv.i484.2, -18874363
  %222 = inttoptr i32 %add1.i485.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 %conv117.2) #9, !srcloc !535
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %1, align 4
  %conv3.i486.2 = zext i16 %224 to i32
  %add6.i487.2 = add nuw nsw i32 %conv3.i486.2, -18874362
  %225 = inttoptr i32 %add6.i487.2 to ptr
  %226 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %225) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx120.2 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %nr.1601, i32 2
  %227 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %arrayidx120.2, align 1
  %228 = trunc i32 %mul90 to i8
  %conv117.3 = add i8 %228, -87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %1, align 4
  %conv.i484.3 = zext i16 %230 to i32
  %add1.i485.3 = add nuw nsw i32 %conv.i484.3, -18874363
  %231 = inttoptr i32 %add1.i485.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 %conv117.3) #9, !srcloc !535
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %1, align 4
  %conv3.i486.3 = zext i16 %233 to i32
  %add6.i487.3 = add nuw nsw i32 %conv3.i486.3, -18874362
  %234 = inttoptr i32 %add6.i487.3 to ptr
  %235 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %234) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %for.inc160

sw.bb:                                            ; preds = %for.body89.sw.bb_crit_edge, %for.body89.sw.bb_crit_edge616
  %conv126 = add i8 %144, -86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %1, align 4
  %conv.i488 = zext i16 %237 to i32
  %add1.i489 = add nuw nsw i32 %conv.i488, -18874363
  %238 = inttoptr i32 %add1.i489 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 %conv126) #9, !srcloc !535
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %1, align 4
  %conv3.i490 = zext i16 %240 to i32
  %add6.i491 = add nuw nsw i32 %conv3.i490, -18874362
  %241 = inttoptr i32 %add6.i491 to ptr
  %242 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %241) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx129 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601
  %243 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx129, align 1
  br label %sw.bb131

sw.bb131:                                         ; preds = %sw.bb, %for.body89.sw.bb131_crit_edge
  %conv134 = add i8 %144, -85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %1, align 4
  %conv.i492 = zext i16 %245 to i32
  %add1.i493 = add nuw nsw i32 %conv.i492, -18874363
  %246 = inttoptr i32 %add1.i493 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %246, i8 %conv134) #9, !srcloc !535
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %1, align 4
  %conv3.i494 = zext i16 %248 to i32
  %add6.i495 = add nuw nsw i32 %conv3.i494, -18874362
  %249 = inttoptr i32 %add6.i495 to ptr
  %250 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %249) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx138 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 1
  %251 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %arrayidx138, align 1
  %conv141 = add i8 %144, -82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %1, align 4
  %conv.i496 = zext i16 %253 to i32
  %add1.i497 = add nuw nsw i32 %conv.i496, -18874363
  %254 = inttoptr i32 %add1.i497 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 %conv141) #9, !srcloc !535
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %1, align 4
  %conv3.i498 = zext i16 %256 to i32
  %add6.i499 = add nuw nsw i32 %conv3.i498, -18874362
  %257 = inttoptr i32 %add6.i499 to ptr
  %258 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %257) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx145 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %nr.1601, i32 4
  %259 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %arrayidx145, align 1
  %conv148 = add i8 %144, -90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %1, align 4
  %conv.i500 = zext i16 %261 to i32
  %add1.i501 = add nuw nsw i32 %conv.i500, -18874363
  %262 = inttoptr i32 %add1.i501 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %262, i8 %conv148) #9, !srcloc !535
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %1, align 4
  %conv3.i502 = zext i16 %264 to i32
  %add6.i503 = add nuw nsw i32 %conv3.i502, -18874362
  %265 = inttoptr i32 %add6.i503 to ptr
  %266 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %265) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx151 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %nr.1601
  %267 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %266, ptr %arrayidx151, align 1
  %conv155 = add i8 %144, -87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %1, align 4
  %conv.i504 = zext i16 %269 to i32
  %add1.i505 = add nuw nsw i32 %conv.i504, -18874363
  %270 = inttoptr i32 %add1.i505 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %270, i8 %conv155) #9, !srcloc !535
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %1, align 4
  %conv3.i506 = zext i16 %272 to i32
  %add6.i507 = add nuw nsw i32 %conv3.i506, -18874362
  %273 = inttoptr i32 %add6.i507 to ptr
  %274 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %273) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %for.inc160

for.inc160:                                       ; preds = %sw.bb131, %for.cond96.preheader
  %.sink613 = phi i8 [ %235, %for.cond96.preheader ], [ %274, %sw.bb131 ]
  %arrayidx120.3 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %nr.1601, i32 3
  %275 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %.sink613, ptr %arrayidx120.3, align 1
  %inc161 = add nuw nsw i32 %nr.1601, 1
  %exitcond.not = icmp eq i32 %inc161, %smax
  br i1 %exitcond.not, label %for.end162, label %for.inc160.for.body89_crit_edge

for.inc160.for.body89_crit_edge:                  ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89

for.end162:                                       ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %276 = load volatile i32, ptr @jiffies, align 128
  %277 = ptrtoint ptr %last_limits to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %last_limits, align 4
  br label %if.end164

if.end164:                                        ; preds = %for.end162, %lor.lhs.false.if.end164_crit_edge
  %last_updated = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 7
  %278 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %last_updated, align 4
  %add165 = add i32 %279, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %280 = load volatile i32, ptr @jiffies, align 128
  %sub166 = sub i32 %add165, %280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub166)
  %cmp167 = icmp slt i32 %sub166, 0
  br i1 %cmp167, label %if.end164.if.then172_crit_edge, label %lor.lhs.false169

if.end164.if.then172_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then172

lor.lhs.false169:                                 ; preds = %if.end164
  %valid170 = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 5
  %281 = ptrtoint ptr %valid170 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %valid170, align 4, !range !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool171.not = icmp eq i8 %282, 0
  br i1 %tobool171.not, label %lor.lhs.false169.if.then172_crit_edge, label %lor.lhs.false169.if.end267_crit_edge

lor.lhs.false169.if.end267_crit_edge:             ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end267

lor.lhs.false169.if.then172_crit_edge:            ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then172

if.then172:                                       ; preds = %lor.lhs.false169.if.then172_crit_edge, %if.end164.if.then172_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %283 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %1, align 4
  %conv.i508 = zext i16 %284 to i32
  %add1.i509 = add nuw nsw i32 %conv.i508, -18874363
  %285 = inttoptr i32 %add1.i509 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %285, i8 98) #9, !srcloc !535
  %286 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %1, align 4
  %conv3.i510 = zext i16 %287 to i32
  %add6.i511 = add nuw nsw i32 %conv3.i510, -18874362
  %288 = inttoptr i32 %add6.i511 to ptr
  %289 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %288) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %temp_status = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 23
  %290 = ptrtoint ptr %temp_status to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %temp_status, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %291 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %1, align 4
  %conv.i512 = zext i16 %292 to i32
  %add1.i513 = add nuw nsw i32 %conv.i512, -18874363
  %293 = inttoptr i32 %add1.i513 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %293, i8 111) #9, !srcloc !535
  %294 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %1, align 4
  %conv3.i514 = zext i16 %295 to i32
  %add6.i515 = add nuw nsw i32 %conv3.i514, -18874362
  %296 = inttoptr i32 %add6.i515 to ptr
  %297 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %296) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %temp_diode_open = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 25
  %298 = ptrtoint ptr %temp_diode_open to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %temp_diode_open, align 4
  %temp_start175 = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 4
  %299 = ptrtoint ptr %temp_start175 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %temp_start175, align 4
  %add178604 = add i32 %300, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %add178604)
  %cmp179605 = icmp slt i32 %300, %add178604
  br i1 %cmp179605, label %if.then172.for.body181_crit_edge, label %if.then172.for.body191.preheader_crit_edge

if.then172.for.body191.preheader_crit_edge:       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body191.preheader

if.then172.for.body181_crit_edge:                 ; preds = %if.then172
  br label %for.body181

for.body181:                                      ; preds = %f71882fg_read_temp.exit.for.body181_crit_edge, %if.then172.for.body181_crit_edge
  %nr.2606 = phi i32 [ %inc185, %f71882fg_read_temp.exit.for.body181_crit_edge ], [ %300, %if.then172.for.body181_crit_edge ]
  %301 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp.i = icmp eq i32 %302, 2
  %nr.tr9.i = trunc i32 %nr.2606 to i8
  %303 = shl i8 %nr.tr9.i, 1
  %conv.i516 = add i8 %303, 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %304 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %1, align 4
  %conv.i.i.i = zext i16 %305 to i32
  %add1.i.i.i = add nuw nsw i32 %conv.i.i.i, -18874363
  %306 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %306, i8 %conv.i516) #9
  %307 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %1, align 4
  %conv3.i.i.i = zext i16 %308 to i32
  %add6.i.i.i = add nuw nsw i32 %conv3.i.i.i, -18874362
  %309 = inttoptr i32 %add6.i.i.i to ptr
  %310 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %309) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %conv.i.i = zext i8 %310 to i16
  br i1 %cmp.i, label %if.then.i, label %for.body181.f71882fg_read_temp.exit_crit_edge

for.body181.f71882fg_read_temp.exit_crit_edge:    ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #11
  br label %f71882fg_read_temp.exit

if.then.i:                                        ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %add.i.i = add i8 %303, 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %311 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %1, align 4
  %conv.i11.i.i = zext i16 %312 to i32
  %add1.i12.i.i = add nuw nsw i32 %conv.i11.i.i, -18874363
  %313 = inttoptr i32 %add1.i12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %313, i8 %add.i.i) #9, !srcloc !535
  %314 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %1, align 4
  %conv3.i13.i.i = zext i16 %315 to i32
  %add6.i14.i.i = add nuw nsw i32 %conv3.i13.i.i, -18874362
  %316 = inttoptr i32 %add6.i14.i.i to ptr
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %316) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i.i = zext i8 %317 to i16
  %or.i.i = or i16 %shl.i.i, %conv5.i.i
  br label %f71882fg_read_temp.exit

f71882fg_read_temp.exit:                          ; preds = %if.then.i, %for.body181.f71882fg_read_temp.exit_crit_edge
  %retval.0.i = phi i16 [ %or.i.i, %if.then.i ], [ %conv.i.i, %for.body181.f71882fg_read_temp.exit_crit_edge ]
  %arrayidx183 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 18, i32 %nr.2606
  %318 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %retval.0.i, ptr %arrayidx183, align 2
  %inc185 = add nsw i32 %nr.2606, 1
  %319 = ptrtoint ptr %temp_start175 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %temp_start175, align 4
  %add178 = add i32 %320, %conv3
  %cmp179 = icmp slt i32 %inc185, %add178
  br i1 %cmp179, label %f71882fg_read_temp.exit.for.body181_crit_edge, label %f71882fg_read_temp.exit.for.body191.preheader_crit_edge

f71882fg_read_temp.exit.for.body191.preheader_crit_edge: ; preds = %f71882fg_read_temp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body191.preheader

f71882fg_read_temp.exit.for.body181_crit_edge:    ; preds = %f71882fg_read_temp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body181

for.body191.preheader:                            ; preds = %f71882fg_read_temp.exit.for.body191.preheader_crit_edge, %if.then172.for.body191.preheader_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %321 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %1, align 4
  %conv.i517 = zext i16 %322 to i32
  %add1.i518 = add nuw nsw i32 %conv.i517, -18874363
  %323 = inttoptr i32 %add1.i518 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %323, i8 -110) #9, !srcloc !535
  %324 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %1, align 4
  %conv3.i519 = zext i16 %325 to i32
  %add6.i520 = add nuw nsw i32 %conv3.i519, -18874362
  %326 = inttoptr i32 %add6.i520 to ptr
  %327 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %326) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %fan_status = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 16
  %328 = ptrtoint ptr %fan_status to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %fan_status, align 2
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body191

for.body191:                                      ; preds = %for.body191.for.body191_crit_edge, %for.body191.preheader
  %nr.3608 = phi i32 [ %inc213, %for.body191.for.body191_crit_edge ], [ 0, %for.body191.preheader ]
  %nr.3.tr = trunc i32 %nr.3608 to i8
  %329 = shl i8 %nr.3.tr, 4
  %conv194 = add i8 %329, -96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %330 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %1, align 4
  %conv.i.i521 = zext i16 %331 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i521, -18874363
  %332 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 %conv194) #9, !srcloc !535
  %333 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %1, align 4
  %conv3.i.i = zext i16 %334 to i32
  %add6.i.i = add nuw nsw i32 %conv3.i.i, -18874362
  %335 = inttoptr i32 %add6.i.i to ptr
  %336 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %335) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv.i522 = zext i8 %336 to i16
  %shl.i = shl nuw i16 %conv.i522, 8
  %add.i = add i8 %329, -95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %337 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %1, align 4
  %conv.i11.i = zext i16 %338 to i32
  %add1.i12.i = add nuw nsw i32 %conv.i11.i, -18874363
  %339 = inttoptr i32 %add1.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %339, i8 %add.i) #9, !srcloc !535
  %340 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %1, align 4
  %conv3.i13.i = zext i16 %341 to i32
  %add6.i14.i = add nuw nsw i32 %conv3.i13.i, -18874362
  %342 = inttoptr i32 %add6.i14.i to ptr
  %343 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %342) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i = zext i8 %343 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %arrayidx196 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 13, i32 %nr.3608
  %344 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 %or.i, ptr %arrayidx196, align 2
  %conv199 = add i8 %329, -94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %345 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %1, align 4
  %conv.i.i523 = zext i16 %346 to i32
  %add1.i.i524 = add nuw nsw i32 %conv.i.i523, -18874363
  %347 = inttoptr i32 %add1.i.i524 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %347, i8 %conv199) #9, !srcloc !535
  %348 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %1, align 4
  %conv3.i.i525 = zext i16 %349 to i32
  %add6.i.i526 = add nuw nsw i32 %conv3.i.i525, -18874362
  %350 = inttoptr i32 %add6.i.i526 to ptr
  %351 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %350) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv.i527 = zext i8 %351 to i16
  %shl.i528 = shl nuw i16 %conv.i527, 8
  %add.i529 = add i8 %329, -93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %352 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %1, align 4
  %conv.i11.i530 = zext i16 %353 to i32
  %add1.i12.i531 = add nuw nsw i32 %conv.i11.i530, -18874363
  %354 = inttoptr i32 %add1.i12.i531 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %354, i8 %add.i529) #9, !srcloc !535
  %355 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %1, align 4
  %conv3.i13.i532 = zext i16 %356 to i32
  %add6.i14.i533 = add nuw nsw i32 %conv3.i13.i532, -18874362
  %357 = inttoptr i32 %add6.i14.i533 to ptr
  %358 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %357) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i534 = zext i8 %358 to i16
  %or.i535 = or i16 %shl.i528, %conv5.i534
  %arrayidx201 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 14, i32 %nr.3608
  %359 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %or.i535, ptr %arrayidx201, align 2
  %conv204 = add i8 %329, -92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %360 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %1, align 4
  %conv.i.i536 = zext i16 %361 to i32
  %add1.i.i537 = add nuw nsw i32 %conv.i.i536, -18874363
  %362 = inttoptr i32 %add1.i.i537 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %362, i8 %conv204) #9, !srcloc !535
  %363 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %1, align 4
  %conv3.i.i538 = zext i16 %364 to i32
  %add6.i.i539 = add nuw nsw i32 %conv3.i.i538, -18874362
  %365 = inttoptr i32 %add6.i.i539 to ptr
  %366 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %365) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv.i540 = zext i8 %366 to i16
  %shl.i541 = shl nuw i16 %conv.i540, 8
  %add.i542 = add i8 %329, -91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %367 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %1, align 4
  %conv.i11.i543 = zext i16 %368 to i32
  %add1.i12.i544 = add nuw nsw i32 %conv.i11.i543, -18874363
  %369 = inttoptr i32 %add1.i12.i544 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %369, i8 %add.i542) #9, !srcloc !535
  %370 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %1, align 4
  %conv3.i13.i545 = zext i16 %371 to i32
  %add6.i14.i546 = add nuw nsw i32 %conv3.i13.i545, -18874362
  %372 = inttoptr i32 %add6.i14.i546 to ptr
  %373 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %372) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i547 = zext i8 %373 to i16
  %or.i548 = or i16 %shl.i541, %conv5.i547
  %arrayidx206 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 15, i32 %nr.3608
  %374 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %or.i548, ptr %arrayidx206, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %375 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %1, align 4
  %conv.i549 = zext i16 %376 to i32
  %add1.i550 = add nuw nsw i32 %conv.i549, -18874363
  %377 = inttoptr i32 %add1.i550 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %377, i8 %add.i529) #9, !srcloc !535
  %378 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %1, align 4
  %conv3.i551 = zext i16 %379 to i32
  %add6.i552 = add nuw nsw i32 %conv3.i551, -18874362
  %380 = inttoptr i32 %add6.i552 to ptr
  %381 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %380) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx211 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 27, i32 %nr.3608
  %382 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %381, ptr %arrayidx211, align 1
  %inc213 = add nuw nsw i32 %nr.3608, 1
  %exitcond611.not = icmp eq i32 %inc213, %umax
  br i1 %exitcond611.not, label %for.end214, label %for.body191.for.body191_crit_edge

for.body191.for.body191_crit_edge:                ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body191

for.end214:                                       ; preds = %for.body191
  %383 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %384)
  %cmp216 = icmp eq i32 %384, 1
  br i1 %cmp216, label %if.then218, label %for.end214.if.end225_crit_edge

for.end214.if.end225_crit_edge:                   ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

if.then218:                                       ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %385 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %1, align 4
  %conv.i.i553 = zext i16 %386 to i32
  %add1.i.i554 = add nuw nsw i32 %conv.i.i553, -18874363
  %387 = inttoptr i32 %add1.i.i554 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %387, i8 -64) #9, !srcloc !535
  %388 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %1, align 4
  %conv3.i.i555 = zext i16 %389 to i32
  %add6.i.i556 = add nuw nsw i32 %conv3.i.i555, -18874362
  %390 = inttoptr i32 %add6.i.i556 to ptr
  %391 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %390) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv.i557 = zext i8 %391 to i16
  %shl.i558 = shl nuw i16 %conv.i557, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %392 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %1, align 4
  %conv.i11.i559 = zext i16 %393 to i32
  %add1.i12.i560 = add nuw nsw i32 %conv.i11.i559, -18874363
  %394 = inttoptr i32 %add1.i12.i560 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %394, i8 -63) #9, !srcloc !535
  %395 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %1, align 4
  %conv3.i13.i561 = zext i16 %396 to i32
  %add6.i14.i562 = add nuw nsw i32 %conv3.i13.i561, -18874362
  %397 = inttoptr i32 %add6.i14.i562 to ptr
  %398 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %397) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i563 = zext i8 %398 to i16
  %or.i564 = or i16 %shl.i558, %conv5.i563
  %arrayidx221 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 13, i32 2
  %399 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %or.i564, ptr %arrayidx221, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %400 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %1, align 4
  %conv.i565 = zext i16 %401 to i32
  %add1.i566 = add nuw nsw i32 %conv.i565, -18874363
  %402 = inttoptr i32 %add1.i566 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %402, i8 -61) #9, !srcloc !535
  %403 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %1, align 4
  %conv3.i567 = zext i16 %404 to i32
  %add6.i568 = add nuw nsw i32 %conv3.i567, -18874362
  %405 = inttoptr i32 %add6.i568 to ptr
  %406 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %405) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx224 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 27, i32 2
  %407 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %406, ptr %arrayidx224, align 2
  %408 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %408)
  %.pr593 = load i32, ptr %type, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then218, %for.end214.if.end225_crit_edge
  %409 = phi i32 [ %.pr593, %if.then218 ], [ %384, %for.end214.if.end225_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %409)
  %cmp227 = icmp eq i32 %409, 11
  br i1 %cmp227, label %if.then229, label %if.end225.if.end233_crit_edge

if.end225.if.end233_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end233

if.then229:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %410 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %1, align 4
  %conv.i.i569 = zext i16 %411 to i32
  %add1.i.i570 = add nuw nsw i32 %conv.i.i569, -18874363
  %412 = inttoptr i32 %add1.i.i570 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %412, i8 -48) #9, !srcloc !535
  %413 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %1, align 4
  %conv3.i.i571 = zext i16 %414 to i32
  %add6.i.i572 = add nuw nsw i32 %conv3.i.i571, -18874362
  %415 = inttoptr i32 %add6.i.i572 to ptr
  %416 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %415) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv.i573 = zext i8 %416 to i16
  %shl.i574 = shl nuw i16 %conv.i573, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %417 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %1, align 4
  %conv.i11.i575 = zext i16 %418 to i32
  %add1.i12.i576 = add nuw nsw i32 %conv.i11.i575, -18874363
  %419 = inttoptr i32 %add1.i12.i576 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %419, i8 -47) #9, !srcloc !535
  %420 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %1, align 4
  %conv3.i13.i577 = zext i16 %421 to i32
  %add6.i14.i578 = add nuw nsw i32 %conv3.i13.i577, -18874362
  %422 = inttoptr i32 %add6.i14.i578 to ptr
  %423 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %422) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i579 = zext i8 %423 to i16
  %or.i580 = or i16 %shl.i574, %conv5.i579
  %arrayidx232 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 13, i32 3
  %424 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %or.i580, ptr %arrayidx232, align 2
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %if.end225.if.end233_crit_edge
  %425 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %type, align 4
  %427 = lshr i32 2175, %426
  %428 = and i32 %427, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool236.not.not = icmp eq i32 %428, 0
  br i1 %tobool236.not.not, label %if.then237, label %if.end233.for.body251.preheader_crit_edge

if.end233.for.body251.preheader_crit_edge:        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body251.preheader

if.then237:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %426)
  %cmp239 = icmp eq i32 %426, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %429 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %1, align 4
  %conv.i581 = zext i16 %430 to i32
  %add1.i582 = add nuw nsw i32 %conv.i581, -18874363
  %431 = inttoptr i32 %add1.i582 to ptr
  br i1 %cmp239, label %if.then241, label %if.else243

if.then241:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %431, i8 22) #9, !srcloc !535
  %432 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %1, align 4
  %conv3.i583 = zext i16 %433 to i32
  %add6.i584 = add nuw nsw i32 %conv3.i583, -18874362
  %434 = inttoptr i32 %add6.i584 to ptr
  %435 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %434) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %if.end247.sink.split

if.else243:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %431, i8 18) #9, !srcloc !535
  %436 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %1, align 4
  %conv3.i587 = zext i16 %437 to i32
  %add6.i588 = add nuw nsw i32 %conv3.i587, -18874362
  %438 = inttoptr i32 %add6.i588 to ptr
  %439 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %438) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %if.end247.sink.split

if.end247.sink.split:                             ; preds = %if.else243, %if.then241
  %.sink614 = phi i8 [ %435, %if.then241 ], [ %439, %if.else243 ]
  %in_status = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 11
  %440 = ptrtoint ptr %in_status to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %.sink614, ptr %in_status, align 4
  br label %for.body251.preheader

for.body251.preheader:                            ; preds = %if.end247.sink.split, %if.end233.for.body251.preheader_crit_edge
  br label %for.body251

for.body251:                                      ; preds = %for.inc262.for.body251_crit_edge, %for.body251.preheader
  %nr.4609 = phi i32 [ %inc263, %for.inc262.for.body251_crit_edge ], [ 0, %for.body251.preheader ]
  %441 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %type, align 4
  %arrayidx254 = getelementptr [15 x [11 x i8]], ptr @f71882fg_has_in, i32 0, i32 %442, i32 %nr.4609
  %443 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %tobool255.not = icmp eq i8 %444, 0
  br i1 %tobool255.not, label %for.body251.for.inc262_crit_edge, label %if.then256

for.body251.for.inc262_crit_edge:                 ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc262

if.then256:                                       ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #11
  %445 = trunc i32 %nr.4609 to i8
  %conv258 = add i8 %445, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  tail call void @arm_heavy_mb() #9
  %446 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %1, align 4
  %conv.i589 = zext i16 %447 to i32
  %add1.i590 = add nuw nsw i32 %conv.i589, -18874363
  %448 = inttoptr i32 %add1.i590 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %448, i8 %conv258) #9, !srcloc !535
  %449 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %449)
  %450 = load i16, ptr %1, align 4
  %conv3.i591 = zext i16 %450 to i32
  %add6.i592 = add nuw nsw i32 %conv3.i591, -18874362
  %451 = inttoptr i32 %add6.i592 to ptr
  %452 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %451) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx260 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 9, i32 %nr.4609
  %453 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %452, ptr %arrayidx260, align 1
  br label %for.inc262

for.inc262:                                       ; preds = %if.then256, %for.body251.for.inc262_crit_edge
  %inc263 = add nuw nsw i32 %nr.4609, 1
  %exitcond612.not = icmp eq i32 %inc263, 11
  br i1 %exitcond612.not, label %for.end264, label %for.inc262.for.body251_crit_edge

for.inc262.for.body251_crit_edge:                 ; preds = %for.inc262
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body251

for.end264:                                       ; preds = %for.inc262
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %454 = load volatile i32, ptr @jiffies, align 128
  %455 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %454, ptr %last_updated, align 4
  %valid266 = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 5
  %456 = ptrtoint ptr %valid266 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 1, ptr %valid266, align 4
  br label %if.end267

if.end267:                                        ; preds = %for.end264, %lor.lhs.false169.if.end267_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %div319 = lshr i32 %conv, 1
  %arrayidx4 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 21, i32 %div319
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %4 = lshr i8 %3, 4
  %5 = and i8 %3, 15
  %temp_max_hyst.0.in = select i1 %tobool.not, i8 %5, i8 %4
  %temp_max_hyst.0 = zext i8 %temp_max_hyst.0.in to i32
  %arrayidx7 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 20, i32 %conv
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv8, %temp_max_hyst.0
  %mul = mul nsw i32 %sub, 1000
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_max_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = sdiv i32 %6, 1000
  store i32 %div, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 1
  %add = add i8 %mul, -127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %9 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %add) #9, !srcloc !535
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %11 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %12 = inttoptr i32 %add6.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 20, i32 %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %conv6 = zext i8 %13 to i32
  %sub = add nsw i32 %conv6, -15
  %17 = call i32 @llvm.smax.i32(i32 %16, i32 %sub)
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 %conv6)
  %conv21 = zext i8 %13 to i32
  %sub22 = sub nsw i32 %conv21, %18
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub22, ptr %val, align 4
  %div2373 = lshr i32 %conv, 1
  %20 = trunc i32 %div2373 to i8
  %conv25 = add nuw i8 %20, 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 4
  %conv.i74 = zext i16 %22 to i32
  %add1.i75 = add nuw nsw i32 %conv.i74, -18874363
  %23 = inttoptr i32 %add1.i75 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv25) #9, !srcloc !535
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 4
  %conv3.i76 = zext i16 %25 to i32
  %add6.i77 = add nuw nsw i32 %conv3.i76, -18874362
  %26 = inttoptr i32 %add6.i77 to ptr
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = and i8 %27, 15
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %.tr = trunc i32 %30 to i8
  %31 = shl i8 %.tr, 4
  %conv31 = or i8 %31, %28
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = and i8 %27, -16
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %35 = trunc i32 %34 to i8
  %conv35 = or i8 %32, %35
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then28
  %reg.0 = phi i8 [ %conv31, %if.then28 ], [ %conv35, %if.else ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %conv.i78 = zext i16 %37 to i32
  %add1.i79 = add nuw nsw i32 %conv.i78, -18874363
  %38 = inttoptr i32 %add1.i79 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv25) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %40 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %41 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %reg.0) #9, !srcloc !535
  %arrayidx41 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 21, i32 %div2373
  %42 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %reg.0, ptr %arrayidx41, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end36 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_crit_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %div319 = lshr i32 %conv, 1
  %arrayidx4 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 21, i32 %div319
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %4 = lshr i8 %3, 4
  %5 = and i8 %3, 15
  %temp_crit_hyst.0.in = select i1 %tobool.not, i8 %5, i8 %4
  %temp_crit_hyst.0 = zext i8 %temp_crit_hyst.0.in to i32
  %arrayidx7 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 19, i32 %conv
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv8, %temp_crit_hyst.0
  %mul = mul nsw i32 %sub, 1000
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 22, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %temp_beep = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %temp_beep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_beep, align 1
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv.i = zext i16 %6 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %7 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 99) #9, !srcloc !535
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %9 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %10 = inttoptr i32 %add6.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %temp_beep = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  %shl8 = shl nuw i32 1, %conv
  %14 = trunc i32 %shl8 to i8
  %15 = xor i8 %14, -1
  %conv11 = and i8 %11, %15
  %conv7 = or i8 %11, %14
  %storemerge = select i1 %tobool3.not, i8 %conv11, i8 %conv7
  %16 = ptrtoint ptr %temp_beep to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge, ptr %temp_beep, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv.i27 = zext i16 %18 to i32
  %add1.i28 = add nuw nsw i32 %conv.i27, -18874363
  %19 = inttoptr i32 %add1.i28 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 99) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %21 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %22 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %storemerge) #9, !srcloc !535
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 9, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv1, 3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %in1_max = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %in1_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in1_max, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %div = sdiv i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp sgt i32 %4, 7
  %5 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %6 = select i1 %cmp, i32 %5, i32 0
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp8 = icmp eq i32 %9, 14
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %14 = inttoptr i32 %add1.i to ptr
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 58) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %16 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %17 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv) #9, !srcloc !535
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 50) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv5.i28 = zext i16 %19 to i32
  %add8.i29 = add nuw nsw i32 %conv5.i28, -18874362
  %20 = inttoptr i32 %add8.i29 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #9, !srcloc !535
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %22 to i8
  %in1_max = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %in1_max to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12, ptr %in1_max, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %in_beep = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %in_beep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_beep, align 1
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp = icmp eq i32 %6, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %9 = inttoptr i32 %add1.i to ptr
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 23) #9, !srcloc !535
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %11 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %12 = inttoptr i32 %add6.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 19) #9, !srcloc !535
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv3.i48 = zext i16 %15 to i32
  %add6.i49 = add nuw nsw i32 %conv3.i48, -18874362
  %16 = inttoptr i32 %add6.i49 to ptr
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %.sink = phi i8 [ %13, %if.then3 ], [ %17, %if.else ]
  %18 = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 1
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool8.not = icmp eq i32 %21, 0
  %shl14 = shl nuw i32 1, %conv
  %22 = trunc i32 %shl14 to i8
  %conv12 = or i8 %.sink, %22
  %23 = xor i8 %22, -1
  %conv17 = and i8 %.sink, %23
  %storemerge = select i1 %tobool8.not, i8 %conv17, i8 %conv12
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %storemerge, ptr %18, align 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %26)
  %cmp20 = icmp eq i32 %26, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 4
  %conv.i50 = zext i16 %28 to i32
  %add1.i51 = add nuw nsw i32 %conv.i50, -18874363
  %29 = inttoptr i32 %add1.i51 to ptr
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 23) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %31 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %32 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %storemerge) #9, !srcloc !535
  br label %if.end26

if.else24:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 19) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 4
  %conv5.i54 = zext i16 %34 to i32
  %add8.i55 = add nuw nsw i32 %conv5.i54, -18874362
  %35 = inttoptr i32 %add8.i55 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %storemerge) #9, !srcloc !535
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end26 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %in_status = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %in_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_status, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 13, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.fan_from_reg.exit.thread_crit_edge, label %fan_from_reg.exit

entry.fan_from_reg.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_from_reg.exit.thread

fan_from_reg.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %3 to i32
  %div.i = udiv i32 1500000, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 366, i32 %div.i)
  %cmp = icmp eq i32 %div.i, 366
  %spec.select = select i1 %cmp, i32 0, i32 %div.i
  br label %fan_from_reg.exit.thread

fan_from_reg.exit.thread:                         ; preds = %fan_from_reg.exit, %entry.fan_from_reg.exit.thread_crit_edge
  %4 = phi i32 [ 0, %entry.fan_from_reg.exit.thread_crit_edge ], [ %spec.select, %fan_from_reg.exit ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %4)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_full_speed(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 15, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.fan_from_reg.exit_crit_edge, label %cond.true.i

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_from_reg.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %3 to i32
  %div.i = udiv i32 1500000, %conv.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %cond.true.i, %entry.fan_from_reg.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %cond.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_full_speed(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 23)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 1500000)
  %div.i29 = udiv i32 1500000, %8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div.i29, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 4
  %add = add i8 %mul, -92
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = lshr i32 %11, 8
  %conv1.i = trunc i32 %12 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i.i = zext i16 %14 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, -18874363
  %15 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %add) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv5.i.i = zext i16 %17 to i32
  %add8.i.i = add nuw nsw i32 %conv5.i.i, -18874362
  %18 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv1.i) #9, !srcloc !535
  %add.i = add i8 %mul, -91
  %conv5.i = trunc i32 %11 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %conv.i9.i = zext i16 %20 to i32
  %add1.i10.i = add nuw nsw i32 %conv.i9.i, -18874363
  %21 = inttoptr i32 %add1.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %add.i) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 4
  %conv5.i11.i = zext i16 %23 to i32
  %add8.i12.i = add nuw nsw i32 %conv5.i11.i, -18874362
  %24 = inttoptr i32 %add8.i12.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv5.i) #9, !srcloc !535
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %conv15 = trunc i32 %26 to i16
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 15, i32 %conv
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv15, ptr %arrayidx, align 2
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %fan_status = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %fan_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_status, align 2
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_enable, align 2
  %conv1 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl nuw i32 1, %mul
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 27, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx3 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 14, i32 %conv
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.else.fan_from_reg.exit_crit_edge, label %cond.true.i

if.else.fan_from_reg.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_from_reg.exit

cond.true.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %7 to i32
  %div.i = udiv i32 1500000, %conv.i
  %phi.bo = mul nuw nsw i32 %div.i, 255
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %cond.true.i, %if.else.fan_from_reg.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 0, %if.else.fan_from_reg.exit_crit_edge ]
  %arrayidx6 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 15, i32 %conv
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i18 = icmp eq i16 %9, 0
  br i1 %tobool.not.i18, label %fan_from_reg.exit.fan_from_reg.exit23_crit_edge, label %cond.true.i21

fan_from_reg.exit.fan_from_reg.exit23_crit_edge:  ; preds = %fan_from_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_from_reg.exit23

cond.true.i21:                                    ; preds = %fan_from_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i19 = zext i16 %9 to i32
  %div.i20 = udiv i32 1500000, %conv.i19
  br label %fan_from_reg.exit23

fan_from_reg.exit23:                              ; preds = %cond.true.i21, %fan_from_reg.exit.fan_from_reg.exit23_crit_edge
  %cond.i22 = phi i32 [ %div.i20, %cond.true.i21 ], [ 0, %fan_from_reg.exit.fan_from_reg.exit23_crit_edge ]
  %div24 = udiv i32 %cond.i, %cond.i22
  br label %if.end

if.end:                                           ; preds = %fan_from_reg.exit23, %if.then
  %val.0 = phi i32 [ %conv2, %if.then ], [ %div24, %fan_from_reg.exit23 ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %val.0)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i = zext i16 %11 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %12 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -106) #9, !srcloc !535
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %14 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %15 = inttoptr i32 %add6.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 28
  %17 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %pwm_enable, align 2
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %19)
  %cmp12 = icmp eq i32 %19, 11
  %conv15 = zext i8 %16 to i32
  %mul = shl nuw nsw i32 %conv, 1
  br i1 %cmp12, label %land.lhs.true, label %land.lhs.true21

land.lhs.true:                                    ; preds = %if.end
  %shr = lshr i32 %conv15, %mul
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp16.not = icmp eq i32 %and, 2
  br i1 %cmp16.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.leave_crit_edge

land.lhs.true.leave_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true21:                                  ; preds = %if.end
  %20 = shl i32 2, %mul
  %21 = and i32 %20, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %land.lhs.true21.leave_crit_edge, label %land.lhs.true21.if.end29_crit_edge

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true21.leave_crit_edge:                  ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

if.end29:                                         ; preds = %land.lhs.true21.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge
  %shl = shl nuw i32 1, %mul
  %and33 = and i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %mul40 = shl i8 %3, 4
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i8 %mul40, -93
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv38 = trunc i32 %23 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 4
  %conv.i92 = zext i16 %25 to i32
  %add1.i93 = add nuw nsw i32 %conv.i92, -18874363
  %26 = inttoptr i32 %add1.i93 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %add) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %28 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %29 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv38) #9, !srcloc !535
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %conv39 = trunc i32 %31 to i8
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 27, i32 %conv
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv39, ptr %arrayidx, align 1
  br label %leave

if.else:                                          ; preds = %if.end29
  %conv42 = add i8 %mul40, -92
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 4
  %conv.i.i = zext i16 %34 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, -18874363
  %35 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv42) #9, !srcloc !535
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %conv3.i.i = zext i16 %37 to i32
  %add6.i.i = add nuw nsw i32 %conv3.i.i, -18874362
  %38 = inttoptr i32 %add6.i.i to ptr
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv.i94 = zext i8 %39 to i16
  %shl.i = shl nuw i16 %conv.i94, 8
  %add.i = add i8 %mul40, -91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  %conv.i11.i = zext i16 %41 to i32
  %add1.i12.i = add nuw nsw i32 %conv.i11.i, -18874363
  %42 = inttoptr i32 %add1.i12.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %add.i) #9, !srcloc !535
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 4
  %conv3.i13.i = zext i16 %44 to i32
  %add6.i14.i = add nuw nsw i32 %conv3.i13.i, -18874362
  %45 = inttoptr i32 %add6.i14.i to ptr
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %conv5.i95 = zext i8 %46 to i16
  %or.i = or i16 %shl.i, %conv5.i95
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool.not.i = icmp eq i16 %or.i, 0
  br i1 %tobool.not.i, label %if.else.fan_from_reg.exit_crit_edge, label %cond.true.i

if.else.fan_from_reg.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_from_reg.exit

cond.true.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i96 = zext i16 %or.i to i32
  %div.i = udiv i32 1500000, %conv.i96
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %cond.true.i, %if.else.fan_from_reg.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %if.else.fan_from_reg.exit_crit_edge ]
  %mul47 = mul i32 %cond.i, %48
  %mul47.off = add i32 %mul47, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %mul47.off)
  %49 = icmp ult i32 %mul47.off, 509
  br i1 %49, label %fan_from_reg.exit.fan_to_reg.exit_crit_edge, label %cond.true.i99

fan_from_reg.exit.fan_to_reg.exit_crit_edge:      ; preds = %fan_from_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_to_reg.exit

cond.true.i99:                                    ; preds = %fan_from_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 %mul47, 255
  %div.i98 = sdiv i32 1500000, %div
  %phi.cast.i = trunc i32 %div.i98 to i16
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %cond.true.i99, %fan_from_reg.exit.fan_to_reg.exit_crit_edge
  %cond.i100 = phi i16 [ %phi.cast.i, %cond.true.i99 ], [ 0, %fan_from_reg.exit.fan_to_reg.exit_crit_edge ]
  %conv52 = add i8 %mul40, -94
  %50 = lshr i16 %cond.i100, 8
  %conv1.i = trunc i16 %50 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %1, align 4
  %conv.i.i101 = zext i16 %52 to i32
  %add1.i.i102 = add nuw nsw i32 %conv.i.i101, -18874363
  %53 = inttoptr i32 %add1.i.i102 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv52) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %1, align 4
  %conv5.i.i = zext i16 %55 to i32
  %add8.i.i = add nuw nsw i32 %conv5.i.i, -18874362
  %56 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv1.i) #9, !srcloc !535
  %add.i103 = add i8 %mul40, -93
  %conv5.i104 = trunc i16 %cond.i100 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %conv.i9.i = zext i16 %58 to i32
  %add1.i10.i = add nuw nsw i32 %conv.i9.i, -18874363
  %59 = inttoptr i32 %add1.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %add.i103) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %1, align 4
  %conv5.i11.i = zext i16 %61 to i32
  %add8.i12.i = add nuw nsw i32 %conv5.i11.i, -18874362
  %62 = inttoptr i32 %add8.i12.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %conv5.i104) #9, !srcloc !535
  %arrayidx55 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 14, i32 %conv
  %63 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %cond.i100, ptr %arrayidx55, align 2
  %arrayidx57 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 15, i32 %conv
  %64 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %or.i, ptr %arrayidx57, align 2
  br label %leave

leave:                                            ; preds = %fan_to_reg.exit, %if.then35, %land.lhs.true21.leave_crit_edge, %land.lhs.true.leave_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.then35 ], [ %count, %fan_to_reg.exit ], [ -30, %land.lhs.true21.leave_crit_edge ], [ -30, %land.lhs.true.leave_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %leave, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %leave ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_enable, align 2
  %conv1 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shr = lshr i32 %conv1, %mul
  %and = and i32 %shr, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %and, label %entry.unreachabledefault [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge7
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %6)
  %cmp = icmp eq i32 %6, 11
  %. = select i1 %cmp, i32 3, i32 1
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge7
  %result.0 = phi i32 [ 1, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge7 ], [ %., %sw.bb3 ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %result.0)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %6)
  %cmp = icmp eq i32 %6, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp3 = icmp eq i8 %3, 2
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %land.lhs.true5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp6.not = icmp eq i32 %8, 2
  br i1 %cmp6.not, label %land.lhs.true5.if.end9_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %conv.i = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %11 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -106) #9, !srcloc !535
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %13 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %14 = inttoptr i32 %add6.i to ptr
  %15 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 28
  %16 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %pwm_enable, align 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %cmp12 = icmp eq i32 %18, 11
  br i1 %cmp12, label %land.lhs.true14, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true14:                                  ; preds = %if.end9
  %conv16 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %19 = shl nuw i32 1, %mul
  %20 = and i32 %19, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %land.lhs.true14.if.else_crit_edge, label %if.then18

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true14
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %22, label %if.then18.leave_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb24
  ]

if.then18.leave_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

sw.bb:                                            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 2, %mul
  %24 = trunc i32 %shl to i8
  %25 = xor i8 %24, -1
  %conv23 = and i8 %15, %25
  br label %if.end59

sw.bb24:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %shl26 = shl i32 2, %mul
  %26 = trunc i32 %shl26 to i8
  %conv29 = or i8 %15, %26
  br label %if.end59

if.else:                                          ; preds = %land.lhs.true14.if.else_crit_edge, %if.end9.if.else_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %28, label %if.else.leave_crit_edge [
    i32 1, label %sw.bb30
    i32 2, label %sw.bb49
  ]

if.else.leave_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

sw.bb30:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp32 = icmp eq i32 %18, 2
  br i1 %cmp32, label %land.lhs.true34, label %sw.bb30.if.end42_crit_edge

sw.bb30.if.end42_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = shl nuw nsw i32 %conv, 1
  br label %if.end42

land.lhs.true34:                                  ; preds = %sw.bb30
  %conv36 = zext i8 %15 to i32
  %mul37 = shl nuw nsw i32 %conv, 1
  %30 = shl nuw i32 1, %mul37
  %31 = and i32 %30, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool40.not = icmp eq i32 %31, 0
  br i1 %tobool40.not, label %land.lhs.true34.if.end42_crit_edge, label %land.lhs.true34.leave_crit_edge

land.lhs.true34.leave_crit_edge:                  ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

land.lhs.true34.if.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true34.if.end42_crit_edge, %sw.bb30.if.end42_crit_edge
  %mul43.pre-phi = phi i32 [ %.pre, %sw.bb30.if.end42_crit_edge ], [ %mul37, %land.lhs.true34.if.end42_crit_edge ]
  %shl44 = shl i32 2, %mul43.pre-phi
  %32 = trunc i32 %shl44 to i8
  %conv48 = or i8 %15, %32
  br label %if.end59

sw.bb49:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %mul50 = shl nuw nsw i32 %conv, 1
  %shl51 = shl i32 2, %mul50
  %33 = trunc i32 %shl51 to i8
  %34 = xor i8 %33, -1
  %conv56 = and i8 %15, %34
  br label %if.end59

if.end59:                                         ; preds = %sw.bb49, %if.end42, %sw.bb24, %sw.bb
  %conv48.sink = phi i8 [ %conv48, %if.end42 ], [ %conv56, %sw.bb49 ], [ %conv23, %sw.bb ], [ %conv29, %sw.bb24 ]
  %35 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv48.sink, ptr %pwm_enable, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %conv.i86 = zext i16 %37 to i32
  %add1.i87 = add nuw nsw i32 %conv.i86, -18874363
  %38 = inttoptr i32 %add1.i87 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -106) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %40 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %41 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv48.sink) #9, !srcloc !535
  br label %leave

leave:                                            ; preds = %if.end59, %land.lhs.true34.leave_crit_edge, %if.else.leave_crit_edge, %if.then18.leave_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end59 ], [ -22, %if.then18.leave_crit_edge ], [ -22, %land.lhs.true34.leave_crit_edge ], [ -22, %if.else.leave_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %leave, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %leave ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_interpolate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 30, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %and)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_interpolate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 4
  %add = add i8 %mul, -81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv.i = zext i16 %6 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %7 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %add) #9, !srcloc !535
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %9 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %10 = inttoptr i32 %add6.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 30, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  %15 = and i8 %11, -17
  %masksel = select i1 %tobool4.not, i8 0, i8 16
  %storemerge.in = or i8 %masksel, %15
  %storemerge = zext i8 %storemerge.in to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv.i37 = zext i16 %18 to i32
  %add1.i38 = add nuw nsw i32 %conv.i37, -18874363
  %19 = inttoptr i32 %add1.i38 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %add) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %21 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %22 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %storemerge.in) #9, !srcloc !535
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %conv17 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv17, ptr %arrayidx, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %fan_beep = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %fan_beep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_beep, align 1
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.43, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv.i = zext i16 %6 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %7 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -109) #9, !srcloc !535
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %9 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %10 = inttoptr i32 %add6.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %fan_beep = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  %shl8 = shl nuw i32 1, %conv
  %14 = trunc i32 %shl8 to i8
  %15 = xor i8 %14, -1
  %conv11 = and i8 %11, %15
  %conv7 = or i8 %11, %14
  %storemerge = select i1 %tobool3.not, i8 %conv11, i8 %conv7
  %16 = ptrtoint ptr %fan_beep to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge, ptr %fan_beep, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv.i27 = zext i16 %18 to i32
  %add1.i28 = add nuw nsw i32 %conv.i27, -18874363
  %19 = inttoptr i32 %add1.i28 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -109) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %21 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %22 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %storemerge) #9, !srcloc !535
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 30, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 3
  %and = zext i8 %4 to i32
  %temp_start = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %temp_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp_start, align 4
  %sub = sub i32 %and, %6
  %shl = shl nuw i32 1, %sub
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %shl)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_auto_point_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %temp_start = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %temp_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_start, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %add = add i32 %14, %12
  store i32 %add, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 4
  %add4 = add i8 %mul, -81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv.i = zext i16 %16 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %17 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %add4) #9, !srcloc !535
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %19 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %20 = inttoptr i32 %add6.i to ptr
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 30, i32 %conv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx, align 1
  %23 = and i8 %21, -4
  %and = zext i8 %23 to i32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %or = or i32 %25, %and
  store i32 %or, ptr %val, align 4
  %conv13 = trunc i32 %or to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv.i33 = zext i16 %27 to i32
  %add1.i34 = add nuw nsw i32 %conv.i33, -18874363
  %28 = inttoptr i32 %add1.i34 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %add4) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %30 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %31 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv13) #9, !srcloc !535
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %conv14 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv14, ptr %arrayidx, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv4 = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwm_enable, align 2
  %conv5 = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl nuw i32 1, %mul
  %and = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx10 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 31, i32 %conv, i32 %conv4
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv7 = zext i8 %7 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = zext i8 %7 to i16
  %add = add nuw nsw i16 %conv11, 32
  %div22 = udiv i16 8160, %add
  %div.zext = zext i16 %div22 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %result.0 = phi i32 [ %conv7, %if.then ], [ %div.zext, %if.else ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %result.0)
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_auto_point_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv4 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 255)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %14 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -106) #9, !srcloc !535
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %16 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %17 = inttoptr i32 %add6.i to ptr
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %pwm_enable = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 28
  %19 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %pwm_enable, align 2
  %conv17 = zext i8 %18 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl nuw i32 1, %mul
  %and = and i32 %shl, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %21)
  %cmp20 = icmp slt i32 %21, 29
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %val, align 4
  br label %if.end26

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %.neg = mul i32 %21, -32
  %mul24 = add i32 %.neg, 8160
  %div = sdiv i32 %mul24, %21
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %val, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then22, %if.end.if.end26_crit_edge
  %add = add i8 %5, -86
  %mul27 = shl i8 %3, 4
  %add28 = add i8 %add, %mul27
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv30 = trunc i32 %25 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv.i54 = zext i16 %27 to i32
  %add1.i55 = add nuw nsw i32 %conv.i54, -18874363
  %28 = inttoptr i32 %add1.i55 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %add28) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %30 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %31 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv30) #9, !srcloc !535
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %conv31 = trunc i32 %33 to i8
  %arrayidx32 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 31, i32 %conv, i32 %conv4
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv31, ptr %arrayidx32, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end26 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv4 = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 32, i32 %conv, i32 %conv4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv6, 1000
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_auto_point_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %div = sdiv i32 %8, 1000
  %auto_point_temp_signed = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %auto_point_temp_signed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %auto_point_temp_signed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  %. = select i1 %tobool6.not, i32 999, i32 -128000
  %.60 = select i1 %tobool6.not, i32 0, i32 -128
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %.)
  %cmp18 = icmp sgt i32 %8, %.
  %11 = call i32 @llvm.smin.i32(i32 %div, i32 127)
  %12 = select i1 %cmp18, i32 %11, i32 %.60
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %add = add i8 %5, -90
  %mul = shl i8 %3, 4
  %add32 = add i8 %add, %mul
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %conv34 = trunc i32 %15 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv.i = zext i16 %17 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %18 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %add32) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %20 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %21 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv34) #9, !srcloc !535
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv35 = trunc i32 %23 to i8
  %arrayidx36 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %conv, i32 %conv4
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv35, ptr %arrayidx36, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_temp_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %div826 = lshr i32 %conv, 1
  %arrayidx9 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 29, i32 %div826
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %6 = lshr i8 %5, 4
  %7 = and i8 %5, 15
  %result.0.in = select i1 %tobool.not, i8 %7, i8 %6
  %result.0 = zext i8 %result.0.in to i32
  %conv5 = zext i8 %3 to i32
  %arrayidx13 = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 32, i32 %conv, i32 %conv5
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv14, %result.0
  %mul = mul nsw i32 %sub, 1000
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %mul)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_auto_point_temp_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %4 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %conv5 = zext i8 %5 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %div = sdiv i32 %8, 1000
  store i32 %div, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %add = add i8 %5, -90
  %mul = shl i8 %3, 4
  %add7 = add i8 %add, %mul
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %conv.i = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %11 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %add7) #9, !srcloc !535
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %13 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %14 = inttoptr i32 %add6.i to ptr
  %15 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %arrayidx10 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 32, i32 %conv, i32 %conv5
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx10, align 1
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %conv14 = sext i8 %15 to i32
  %sub = add nsw i32 %conv14, -15
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 %sub)
  %20 = call i32 @llvm.smin.i32(i32 %19, i32 %conv14)
  %conv31 = sext i8 %15 to i32
  %sub32 = sub nsw i32 %conv31, %20
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub32, ptr %val, align 4
  %div3388 = lshr i32 %conv, 1
  %22 = trunc i32 %div3388 to i8
  %conv35 = add nsw i8 %22, -104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %conv.i89 = zext i16 %24 to i32
  %add1.i90 = add nuw nsw i32 %conv.i89, -18874363
  %25 = inttoptr i32 %add1.i90 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv35) #9, !srcloc !535
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv3.i91 = zext i16 %27 to i32
  %add6.i92 = add nuw nsw i32 %conv3.i91, -18874362
  %28 = inttoptr i32 %add6.i92 to ptr
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #9, !srcloc !536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = and i8 %29, 15
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %.tr = trunc i32 %32 to i8
  %33 = shl i8 %.tr, 4
  %conv41 = or i8 %33, %30
  br label %if.end46

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = and i8 %29, -16
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %37 = trunc i32 %36 to i8
  %conv45 = or i8 %34, %37
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then38
  %reg.0 = phi i8 [ %conv41, %if.then38 ], [ %conv45, %if.else ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 4
  %conv.i93 = zext i16 %39 to i32
  %add1.i94 = add nuw nsw i32 %conv.i93, -18874363
  %40 = inttoptr i32 %add1.i94 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv35) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %42 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %43 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %reg.0) #9, !srcloc !535
  %arrayidx51 = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 29, i32 %div3388
  %44 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %reg.0, ptr %arrayidx51, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end46 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_simple_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71882fg_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %call, i32 0, i32 27, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_simple_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !540
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f71882fg_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl i8 %3, 4
  %add = add i8 %mul, -93
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %11 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %14 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %add) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %16 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %17 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv12) #9, !srcloc !535
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %conv13 = trunc i32 %19 to i8
  %arrayidx = getelementptr %struct.f71882fg_data, ptr %1, i32 0, i32 27, i32 %conv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %arrayidx, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f71882fg_find(i32 noundef %sioaddr, ptr nocapture noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %superio_enter.exit, label %if.end

superio_enter.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, i32 noundef %sioaddr) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !543
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 35) #9, !srcloc !535
  %add1.i.i = add i32 %sioaddr, 1
  %and2.i.i = and i32 %add1.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %1 = inttoptr i32 %add3.i.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  %conv6.i.i = zext i8 %2 to i32
  %shl.i = shl nuw nsw i32 %conv6.i.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 36) #9, !srcloc !535
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  %conv6.i11.i = zext i8 %3 to i32
  %or.i = or i32 %shl.i, %conv6.i11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6452, i32 %or.i)
  %cmp.not = icmp eq i32 %or.i, 6452
  br i1 %cmp.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f71882fg_find.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f71882fg_find, %exit)) #9
          to label %if.then10 [label %exit], !srcloc !546

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @f71882fg_find.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.217) #9
  br label %exit

if.end12:                                         ; preds = %if.end
  %4 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool14.not = icmp eq i16 %4, 0
  br i1 %tobool14.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ %call16, %cond.false ]
  %trunc = trunc i32 %cond to i16
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.252)
  switch i16 %trunc, label %do.end49 [
    i16 2305, label %cond.end.if.else_crit_edge
    i16 4097, label %sw.bb19
    i16 1287, label %cond.end.if.end57_crit_edge
    i16 1537, label %sw.bb23
    i16 4358, label %sw.bb25
    i16 2068, label %sw.bb27
    i16 4103, label %sw.bb29
    i16 1345, label %sw.bb31
    i16 1827, label %sw.bb33
    i16 2313, label %sw.bb35
    i16 4101, label %sw.bb37
    i16 1409, label %sw.bb39
    i16 4624, label %sw.bb41
    i16 1796, label %sw.bb43
    i16 4112, label %cond.end.sw.bb45_crit_edge
    i16 5378, label %cond.end.sw.bb45_crit_edge134
  ]

cond.end.sw.bb45_crit_edge134:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

cond.end.sw.bb45_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

cond.end.if.end57_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb19:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb23:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb25:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb27:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb29:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb31:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb33:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb35:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb37:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb39:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb41:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb43:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb45:                                          ; preds = %cond.end.sw.bb45_crit_edge, %cond.end.sw.bb45_crit_edge134
  br label %if.else

do.end49:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = and i32 %cond, 65535
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %conv18) #13
  br label %exit

if.else:                                          ; preds = %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb19, %cond.end.if.else_crit_edge
  %.sink = phi i32 [ 14, %sw.bb45 ], [ 13, %sw.bb43 ], [ 12, %sw.bb41 ], [ 11, %sw.bb39 ], [ 10, %sw.bb37 ], [ 9, %sw.bb35 ], [ 8, %sw.bb33 ], [ 7, %sw.bb31 ], [ 6, %sw.bb29 ], [ 5, %sw.bb27 ], [ 4, %sw.bb25 ], [ 3, %sw.bb23 ], [ 1, %sw.bb19 ], [ 0, %cond.end.if.else_crit_edge ]
  br label %if.end57

if.end57:                                         ; preds = %if.else, %cond.end.if.end57_crit_edge
  %.sink.sink = phi i32 [ %.sink, %if.else ], [ 2, %cond.end.if.end57_crit_edge ]
  %.sink133 = phi i32 [ 4, %if.else ], [ 2, %cond.end.if.end57_crit_edge ]
  %6 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink.sink, ptr %sio_data, align 4
  tail call fastcc void @superio_select(i32 noundef %sioaddr, i32 noundef %.sink133)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #9, !srcloc !535
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool59.not = icmp eq i8 %8, 0
  br i1 %tobool59.not, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220) #13
  br label %exit

if.end66:                                         ; preds = %if.end57
  %call67 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 96)
  %conv69 = and i32 %call67, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv69)
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223) #13
  br label %exit

if.end78:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %conv81 = and i32 %call67, 65528
  %9 = ptrtoint ptr %sio_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sio_data, align 4
  %arrayidx = getelementptr [15 x ptr], ptr @f71882fg_names, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call89 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 34), !range !547
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %12, i32 noundef %conv81, i32 noundef %call89) #13
  br label %exit

exit:                                             ; preds = %if.end78, %do.end75, %do.end63, %do.end49, %if.then10, %do.body
  %err.0 = phi i32 [ -19, %do.end49 ], [ -19, %do.end75 ], [ %conv81, %if.end78 ], [ -19, %do.end63 ], [ -19, %if.then10 ], [ -19, %do.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #9, !srcloc !535
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %superio_enter.exit
  %retval.0 = phi i32 [ %err.0, %exit ], [ -16, %superio_enter.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f71882fg_device_add(i32 noundef %address, ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %3 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %address, ptr %res, align 4
  %sub = add i32 %address, 7
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %1, align 4
  %6 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %address) #9
  store ptr %call, ptr @f71882fg_pdev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %7, align 4
  %call7 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %res, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.end.exit_device_put_crit_edge

if.end.exit_device_put_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_put

if.end11:                                         ; preds = %if.end
  %11 = load ptr, ptr @f71882fg_pdev, align 4
  %call12 = call i32 @platform_device_add_data(ptr noundef %11, ptr noundef %sio_data, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %if.end11.exit_device_put_crit_edge

if.end11.exit_device_put_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_put

if.end20:                                         ; preds = %if.end11
  %12 = load ptr, ptr @f71882fg_pdev, align 4
  %call21 = call i32 @platform_device_add(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end20.exit_device_put_crit_edge

if.end20.exit_device_put_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_put

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_device_put:                                  ; preds = %if.end20.exit_device_put_crit_edge, %if.end11.exit_device_put_crit_edge, %if.end.exit_device_put_crit_edge
  %.str.236.sink = phi ptr [ @.str.230, %if.end.exit_device_put_crit_edge ], [ @.str.233, %if.end11.exit_device_put_crit_edge ], [ @.str.236, %if.end20.exit_device_put_crit_edge ]
  %err.0 = phi i32 [ %call7, %if.end.exit_device_put_crit_edge ], [ %call12, %if.end11.exit_device_put_crit_edge ], [ %call21, %if.end20.exit_device_put_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.236.sink) #13
  %13 = load ptr, ptr @f71882fg_pdev, align 4
  call void @platform_device_put(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_device_put ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inw(i32 noundef %base, i32 noundef %reg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i32 %reg to i8
  %and.i = and i32 %base, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv.i) #9, !srcloc !535
  %add1.i = add i32 %base, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %1 = inttoptr i32 %add3.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  %conv6.i = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv6.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  %conv.i5 = add i8 %conv.i, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv.i5) #9, !srcloc !535
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  %conv6.i11 = zext i8 %3 to i32
  %or = or i32 %shl, %conv6.i11
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_select(i32 noundef %base, i32 noundef %ld) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  %and = and i32 %base, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %ld to i8
  %add3 = add i32 %base, 1
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %1 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv) #9, !srcloc !535
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inb(i32 noundef %base, i32 noundef %reg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %reg to i8
  %and = and i32 %base, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #9, !srcloc !535
  %add1 = add i32 %base, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  %conv6 = zext i8 %2 to i32
  ret i32 %conv6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !211, !212, !213, !215, !216, !217, !218, !219, !220, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !512, !514, !515, !516, !517, !519, !520, !521, !523, !524}
!llvm.module.flags = !{!525, !526, !527, !528, !529, !530, !531, !532}
!llvm.ident = !{!533}

!0 = !{ptr @__param_force_id, !1, !"__param_force_id", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/f71882fg.c", i32 104, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_idtype183, !1, !"__UNIQUE_ID_force_idtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_id184, !4, !"__UNIQUE_ID_force_id184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/f71882fg.c", i32 105, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/f71882fg.c", i32 2795, i32 1}
!7 = !{ptr @__UNIQUE_ID_author231, !8, !"__UNIQUE_ID_author231", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/f71882fg.c", i32 2796, i32 1}
!9 = !{ptr @__UNIQUE_ID_file232, !10, !"__UNIQUE_ID_file232", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/f71882fg.c", i32 2797, i32 1}
!11 = !{ptr @__UNIQUE_ID_license233, !10, !"__UNIQUE_ID_license233", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_f71882fg__234_2799_f71882fg_init6, !13, !"__initcall__kmod_f71882fg__234_2799_f71882fg_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/f71882fg.c", i32 2799, i32 1}
!14 = !{ptr @__exitcall_f71882fg_exit, !15, !"__exitcall_f71882fg_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/f71882fg.c", i32 2800, i32 1}
!16 = !{ptr @force_id, !17, !"force_id", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/f71882fg.c", i32 103, i32 23}
!18 = !{ptr @f71882fg_pdev, !19, !"f71882fg_pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/f71882fg.c", i32 237, i32 32}
!20 = !{ptr @__param_str_force_id, !1, !"__param_str_force_id", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/f71882fg.c", i32 389, i32 11}
!23 = !{ptr @f71882fg_driver, !24, !"f71882fg_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/f71882fg.c", i32 387, i32 31}
!25 = !{ptr @f71882fg_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/f71882fg.c", i32 2350, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/f71882fg.c", i32 2355, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @f71882fg_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @f71882fg_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/f71882fg.c", i32 2359, i32 3}
!38 = !{ptr @f71882fg_probe._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @f71882fg_probe._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @f71882fg_nr_fans, !41, !"f71882fg_nr_fans", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/f71882fg.c", i32 183, i32 19}
!42 = !{ptr @f71882fg_nr_temps, !43, !"f71882fg_nr_temps", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/f71882fg.c", i32 219, i32 19}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/f71882fg.c", i32 395, i32 8}
!46 = !{ptr @dev_attr_name, !45, !"dev_attr_name", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/f71882fg.c", i32 2207, i32 22}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/f71882fg.c", i32 112, i32 2}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/f71882fg.c", i32 113, i32 2}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/f71882fg.c", i32 114, i32 2}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/f71882fg.c", i32 115, i32 2}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/f71882fg.c", i32 116, i32 2}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/f71882fg.c", i32 117, i32 2}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/f71882fg.c", i32 118, i32 2}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/f71882fg.c", i32 120, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/f71882fg.c", i32 121, i32 2}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/f71882fg.c", i32 122, i32 2}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/f71882fg.c", i32 123, i32 2}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/f71882fg.c", i32 124, i32 2}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/f71882fg.c", i32 125, i32 2}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/f71882fg.c", i32 126, i32 2}
!77 = !{ptr @f71882fg_names, !78, !"f71882fg_names", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/f71882fg.c", i32 111, i32 26}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/f71882fg.c", i32 534, i32 2}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/f71882fg.c", i32 535, i32 2}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/f71882fg.c", i32 537, i32 2}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/f71882fg.c", i32 539, i32 2}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/f71882fg.c", i32 540, i32 2}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/f71882fg.c", i32 541, i32 2}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/f71882fg.c", i32 542, i32 2}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/f71882fg.c", i32 544, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/f71882fg.c", i32 546, i32 2}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/f71882fg.c", i32 547, i32 2}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/f71882fg.c", i32 548, i32 2}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/f71882fg.c", i32 549, i32 2}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/f71882fg.c", i32 551, i32 2}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/f71882fg.c", i32 553, i32 2}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/f71882fg.c", i32 554, i32 2}
!109 = !{ptr @f8000_temp_attr, !110, !"f8000_temp_attr", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/f71882fg.c", i32 533, i32 41}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/f71882fg.c", i32 1584, i32 22}
!113 = distinct !{null, !114, !"f71882fg_fan_has_beep", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/f71882fg.c", i32 165, i32 19}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/f71882fg.c", i32 1772, i32 23}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/f71882fg.c", i32 1774, i32 23}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/f71882fg.c", i32 407, i32 2}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/f71882fg.c", i32 408, i32 2}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/f71882fg.c", i32 410, i32 2}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/f71882fg.c", i32 412, i32 2}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/f71882fg.c", i32 419, i32 2}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/f71882fg.c", i32 420, i32 2}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/f71882fg.c", i32 422, i32 2}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/f71882fg.c", i32 424, i32 2}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/f71882fg.c", i32 431, i32 2}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/f71882fg.c", i32 432, i32 2}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/f71882fg.c", i32 434, i32 2}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/f71882fg.c", i32 436, i32 2}
!143 = !{ptr @f71858fg_temp_attr, !144, !"f71858fg_temp_attr", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/f71882fg.c", i32 401, i32 41}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/f71882fg.c", i32 458, i32 2}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/f71882fg.c", i32 473, i32 2}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/f71882fg.c", i32 488, i32 2}
!151 = !{ptr @fxxxx_temp_attr, !152, !"fxxxx_temp_attr", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/f71882fg.c", i32 441, i32 41}
!153 = distinct !{null, !154, !"f71882fg_temp_has_beep", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/f71882fg.c", i32 201, i32 19}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/f71882fg.c", i32 511, i32 2}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/f71882fg.c", i32 513, i32 2}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/f71882fg.c", i32 516, i32 2}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/f71882fg.c", i32 518, i32 2}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/f71882fg.c", i32 521, i32 2}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/f71882fg.c", i32 523, i32 2}
!167 = !{ptr @f81866_temp_beep_attr, !168, !"f81866_temp_beep_attr", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/f71882fg.c", i32 510, i32 41}
!169 = !{ptr @fxxxx_temp_beep_attr, !170, !"fxxxx_temp_beep_attr", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/f71882fg.c", i32 493, i32 41}
!171 = !{ptr @f71882fg_has_in, !172, !"f71882fg_has_in", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/f71882fg.c", i32 129, i32 19}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/f71882fg.c", i32 559, i32 2}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/f71882fg.c", i32 560, i32 2}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/f71882fg.c", i32 561, i32 2}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/f71882fg.c", i32 562, i32 2}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/f71882fg.c", i32 563, i32 2}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/f71882fg.c", i32 564, i32 2}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/f71882fg.c", i32 565, i32 2}
!187 = !{ptr @.str.73, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/f71882fg.c", i32 566, i32 2}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/f71882fg.c", i32 567, i32 2}
!191 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/f71882fg.c", i32 568, i32 2}
!193 = !{ptr @.str.76, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/f71882fg.c", i32 569, i32 2}
!195 = !{ptr @fxxxx_in_attr, !196, !"fxxxx_in_attr", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/f71882fg.c", i32 558, i32 41}
!197 = distinct !{null, !198, !"f71882fg_has_in1_alarm", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/f71882fg.c", i32 147, i32 19}
!199 = !{ptr @.str.77, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/f71882fg.c", i32 574, i32 2}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/f71882fg.c", i32 576, i32 2}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/f71882fg.c", i32 578, i32 2}
!205 = !{ptr @fxxxx_in1_alarm_attr, !206, !"fxxxx_in1_alarm_attr", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/f71882fg.c", i32 573, i32 41}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/f71882fg.c", i32 2257, i32 3}
!209 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @f71882fg_create_fan_sysfs_files._entry, !208, !"_entry", i1 false, i1 false}
!212 = !{ptr @f71882fg_create_fan_sysfs_files._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.84, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/f71882fg.c", i32 2277, i32 2}
!215 = !{ptr @.str.85, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @f71882fg_create_fan_sysfs_files._entry.83, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @f71882fg_create_fan_sysfs_files._entry_ptr.86, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.90, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/f71882fg.c", i32 2293, i32 4}
!222 = !{ptr @f71882fg_create_fan_sysfs_files._entry.89, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @f71882fg_create_fan_sysfs_files._entry_ptr.91, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/f71882fg.c", i32 583, i32 2}
!226 = !{ptr @.str.93, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hwmon/f71882fg.c", i32 584, i32 2}
!228 = !{ptr @.str.94, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/f71882fg.c", i32 587, i32 2}
!230 = !{ptr @.str.95, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/f71882fg.c", i32 588, i32 2}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/f71882fg.c", i32 589, i32 2}
!234 = !{ptr @.str.97, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/f71882fg.c", i32 591, i32 2}
!236 = !{ptr @.str.98, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/f71882fg.c", i32 594, i32 2}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/f71882fg.c", i32 595, i32 2}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/f71882fg.c", i32 598, i32 2}
!242 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/f71882fg.c", i32 599, i32 2}
!244 = !{ptr @.str.102, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hwmon/f71882fg.c", i32 600, i32 2}
!246 = !{ptr @.str.103, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/f71882fg.c", i32 602, i32 2}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/f71882fg.c", i32 605, i32 2}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/f71882fg.c", i32 606, i32 2}
!252 = !{ptr @.str.106, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/f71882fg.c", i32 609, i32 2}
!254 = !{ptr @.str.107, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/f71882fg.c", i32 610, i32 2}
!256 = !{ptr @.str.108, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hwmon/f71882fg.c", i32 611, i32 2}
!258 = !{ptr @.str.109, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/f71882fg.c", i32 613, i32 2}
!260 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/f71882fg.c", i32 616, i32 2}
!262 = !{ptr @.str.111, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/f71882fg.c", i32 617, i32 2}
!264 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/f71882fg.c", i32 620, i32 2}
!266 = !{ptr @.str.113, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/f71882fg.c", i32 621, i32 2}
!268 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/f71882fg.c", i32 622, i32 2}
!270 = !{ptr @.str.115, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/f71882fg.c", i32 624, i32 2}
!272 = !{ptr @fxxxx_fan_attr, !273, !"fxxxx_fan_attr", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/f71882fg.c", i32 582, i32 41}
!274 = !{ptr @.str.116, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hwmon/f71882fg.c", i32 638, i32 2}
!276 = !{ptr @.str.117, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/f71882fg.c", i32 640, i32 2}
!278 = !{ptr @.str.118, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/hwmon/f71882fg.c", i32 642, i32 2}
!280 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/hwmon/f71882fg.c", i32 644, i32 2}
!282 = !{ptr @fxxxx_fan_beep_attr, !283, !"fxxxx_fan_beep_attr", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/f71882fg.c", i32 637, i32 41}
!284 = !{ptr @.str.120, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hwmon/f71882fg.c", i32 653, i32 2}
!286 = !{ptr @.str.121, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/hwmon/f71882fg.c", i32 656, i32 2}
!288 = !{ptr @.str.122, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/f71882fg.c", i32 659, i32 2}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/f71882fg.c", i32 662, i32 2}
!292 = !{ptr @.str.124, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/f71882fg.c", i32 665, i32 2}
!294 = !{ptr @.str.125, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/f71882fg.c", i32 668, i32 2}
!296 = !{ptr @.str.126, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/f71882fg.c", i32 672, i32 2}
!298 = !{ptr @.str.127, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/f71882fg.c", i32 675, i32 2}
!300 = !{ptr @.str.128, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/f71882fg.c", i32 678, i32 2}
!302 = !{ptr @.str.129, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hwmon/f71882fg.c", i32 681, i32 2}
!304 = !{ptr @.str.130, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/f71882fg.c", i32 684, i32 2}
!306 = !{ptr @.str.131, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/f71882fg.c", i32 687, i32 2}
!308 = !{ptr @.str.132, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/f71882fg.c", i32 690, i32 2}
!310 = !{ptr @.str.133, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/f71882fg.c", i32 694, i32 2}
!312 = !{ptr @.str.134, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/f71882fg.c", i32 697, i32 2}
!314 = !{ptr @.str.135, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/hwmon/f71882fg.c", i32 700, i32 2}
!316 = !{ptr @.str.136, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/f71882fg.c", i32 703, i32 2}
!318 = !{ptr @.str.137, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hwmon/f71882fg.c", i32 706, i32 2}
!320 = !{ptr @.str.138, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/f71882fg.c", i32 709, i32 2}
!322 = !{ptr @.str.139, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/f71882fg.c", i32 712, i32 2}
!324 = !{ptr @.str.140, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/hwmon/f71882fg.c", i32 716, i32 2}
!326 = !{ptr @f71862fg_auto_pwm_attr, !327, !"f71862fg_auto_pwm_attr", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/f71882fg.c", i32 652, i32 41}
!328 = !{ptr @.str.141, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hwmon/f71882fg.c", i32 735, i32 2}
!330 = !{ptr @.str.142, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/hwmon/f71882fg.c", i32 760, i32 2}
!332 = !{ptr @.str.143, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/hwmon/f71882fg.c", i32 785, i32 2}
!334 = !{ptr @f71869_auto_pwm_attr, !335, !"f71869_auto_pwm_attr", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/f71882fg.c", i32 725, i32 41}
!336 = !{ptr @.str.144, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hwmon/f71882fg.c", i32 983, i32 2}
!338 = !{ptr @.str.145, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hwmon/f71882fg.c", i32 986, i32 2}
!340 = !{ptr @.str.146, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/f71882fg.c", i32 989, i32 2}
!342 = !{ptr @.str.147, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/hwmon/f71882fg.c", i32 992, i32 2}
!344 = !{ptr @.str.148, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/hwmon/f71882fg.c", i32 995, i32 2}
!346 = !{ptr @.str.149, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/hwmon/f71882fg.c", i32 998, i32 2}
!348 = !{ptr @.str.150, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/hwmon/f71882fg.c", i32 1001, i32 2}
!350 = !{ptr @.str.151, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/hwmon/f71882fg.c", i32 1004, i32 2}
!352 = !{ptr @.str.152, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/f71882fg.c", i32 1007, i32 2}
!354 = !{ptr @.str.153, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/hwmon/f71882fg.c", i32 1010, i32 2}
!356 = !{ptr @.str.154, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/hwmon/f71882fg.c", i32 1014, i32 2}
!358 = !{ptr @.str.155, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/hwmon/f71882fg.c", i32 1016, i32 2}
!360 = !{ptr @.str.156, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/hwmon/f71882fg.c", i32 1018, i32 2}
!362 = !{ptr @.str.157, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/hwmon/f71882fg.c", i32 1024, i32 2}
!364 = !{ptr @.str.158, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/hwmon/f71882fg.c", i32 1027, i32 2}
!366 = !{ptr @.str.159, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/hwmon/f71882fg.c", i32 1030, i32 2}
!368 = !{ptr @.str.160, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/hwmon/f71882fg.c", i32 1033, i32 2}
!370 = !{ptr @.str.161, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/hwmon/f71882fg.c", i32 1036, i32 2}
!372 = !{ptr @.str.162, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/hwmon/f71882fg.c", i32 1039, i32 2}
!374 = !{ptr @.str.163, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/hwmon/f71882fg.c", i32 1042, i32 2}
!376 = !{ptr @.str.164, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hwmon/f71882fg.c", i32 1045, i32 2}
!378 = !{ptr @.str.165, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/hwmon/f71882fg.c", i32 1048, i32 2}
!380 = !{ptr @.str.166, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/hwmon/f71882fg.c", i32 1051, i32 2}
!382 = !{ptr @.str.167, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/hwmon/f71882fg.c", i32 1055, i32 2}
!384 = !{ptr @.str.168, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/hwmon/f71882fg.c", i32 1057, i32 2}
!386 = !{ptr @.str.169, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/hwmon/f71882fg.c", i32 1059, i32 2}
!388 = !{ptr @.str.170, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/hwmon/f71882fg.c", i32 1065, i32 2}
!390 = !{ptr @.str.171, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/hwmon/f71882fg.c", i32 1068, i32 2}
!392 = !{ptr @.str.172, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/hwmon/f71882fg.c", i32 1071, i32 2}
!394 = !{ptr @.str.173, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/f71882fg.c", i32 1074, i32 2}
!396 = !{ptr @.str.174, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/hwmon/f71882fg.c", i32 1077, i32 2}
!398 = !{ptr @.str.175, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/hwmon/f71882fg.c", i32 1080, i32 2}
!400 = !{ptr @.str.176, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/f71882fg.c", i32 1083, i32 2}
!402 = !{ptr @.str.177, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/hwmon/f71882fg.c", i32 1086, i32 2}
!404 = !{ptr @.str.178, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/hwmon/f71882fg.c", i32 1089, i32 2}
!406 = !{ptr @.str.179, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/hwmon/f71882fg.c", i32 1092, i32 2}
!408 = !{ptr @.str.180, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/hwmon/f71882fg.c", i32 1096, i32 2}
!410 = !{ptr @.str.181, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/hwmon/f71882fg.c", i32 1098, i32 2}
!412 = !{ptr @.str.182, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/hwmon/f71882fg.c", i32 1100, i32 2}
!414 = !{ptr @f8000_auto_pwm_attr, !415, !"f8000_auto_pwm_attr", i1 false, i1 false}
!415 = !{!"../drivers/hwmon/f71882fg.c", i32 979, i32 41}
!416 = !{ptr @.str.183, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/hwmon/f71882fg.c", i32 816, i32 2}
!418 = !{ptr @.str.184, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/hwmon/f71882fg.c", i32 819, i32 2}
!420 = !{ptr @.str.185, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/hwmon/f71882fg.c", i32 828, i32 2}
!422 = !{ptr @.str.186, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/hwmon/f71882fg.c", i32 831, i32 2}
!424 = !{ptr @.str.187, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/hwmon/f71882fg.c", i32 840, i32 2}
!426 = !{ptr @.str.188, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/hwmon/f71882fg.c", i32 842, i32 2}
!428 = !{ptr @.str.189, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/hwmon/f71882fg.c", i32 857, i32 2}
!430 = !{ptr @.str.190, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/f71882fg.c", i32 860, i32 2}
!432 = !{ptr @.str.191, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/hwmon/f71882fg.c", i32 869, i32 2}
!434 = !{ptr @.str.192, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/hwmon/f71882fg.c", i32 872, i32 2}
!436 = !{ptr @.str.193, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/hwmon/f71882fg.c", i32 881, i32 2}
!438 = !{ptr @.str.194, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/hwmon/f71882fg.c", i32 883, i32 2}
!440 = !{ptr @.str.195, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/hwmon/f71882fg.c", i32 898, i32 2}
!442 = !{ptr @.str.196, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/hwmon/f71882fg.c", i32 901, i32 2}
!444 = !{ptr @.str.197, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/hwmon/f71882fg.c", i32 910, i32 2}
!446 = !{ptr @.str.198, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/hwmon/f71882fg.c", i32 913, i32 2}
!448 = !{ptr @.str.199, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/hwmon/f71882fg.c", i32 922, i32 2}
!450 = !{ptr @.str.200, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/hwmon/f71882fg.c", i32 924, i32 2}
!452 = !{ptr @.str.201, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/hwmon/f71882fg.c", i32 927, i32 2}
!454 = !{ptr @.str.202, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/f71882fg.c", i32 930, i32 2}
!456 = !{ptr @.str.203, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/hwmon/f71882fg.c", i32 933, i32 2}
!458 = !{ptr @.str.204, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/hwmon/f71882fg.c", i32 936, i32 2}
!460 = !{ptr @.str.205, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/hwmon/f71882fg.c", i32 939, i32 2}
!462 = !{ptr @.str.206, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/hwmon/f71882fg.c", i32 942, i32 2}
!464 = !{ptr @.str.207, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/hwmon/f71882fg.c", i32 945, i32 2}
!466 = !{ptr @.str.208, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/hwmon/f71882fg.c", i32 948, i32 2}
!468 = !{ptr @.str.209, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/hwmon/f71882fg.c", i32 951, i32 2}
!470 = !{ptr @.str.210, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/hwmon/f71882fg.c", i32 954, i32 2}
!472 = !{ptr @.str.211, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/hwmon/f71882fg.c", i32 957, i32 2}
!474 = !{ptr @.str.212, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/hwmon/f71882fg.c", i32 961, i32 2}
!476 = !{ptr @.str.213, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/hwmon/f71882fg.c", i32 963, i32 2}
!478 = !{ptr @.str.214, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/hwmon/f71882fg.c", i32 965, i32 2}
!480 = !{ptr @fxxxx_auto_pwm_attr, !481, !"fxxxx_auto_pwm_attr", i1 false, i1 false}
!481 = !{!"../drivers/hwmon/f71882fg.c", i32 803, i32 41}
!482 = !{ptr @f71808a_fan3_attr, !483, !"f71808a_fan3_attr", i1 false, i1 false}
!483 = !{!"../drivers/hwmon/f71882fg.c", i32 629, i32 41}
!484 = !{ptr @f8000_fan_attr, !485, !"f8000_fan_attr", i1 false, i1 false}
!485 = !{!"../drivers/hwmon/f71882fg.c", i32 970, i32 41}
!486 = !{ptr @.str.215, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/hwmon/f71882fg.c", i32 2626, i32 3}
!488 = !{ptr @.str.216, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @f71882fg_find.__UNIQUE_ID_ddebug229, !487, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!490 = !{ptr @.str.217, !487, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @.str.218, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/hwmon/f71882fg.c", i32 2680, i32 3}
!493 = !{ptr @f71882fg_find._entry, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @f71882fg_find._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.220, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/hwmon/f71882fg.c", i32 2692, i32 3}
!497 = !{ptr @f71882fg_find._entry.219, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @f71882fg_find._entry_ptr.221, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.223, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/hwmon/f71882fg.c", i32 2699, i32 3}
!501 = !{ptr @f71882fg_find._entry.222, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @f71882fg_find._entry_ptr.224, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.226, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/hwmon/f71882fg.c", i32 2706, i32 2}
!505 = !{ptr @f71882fg_find._entry.225, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @f71882fg_find._entry_ptr.227, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.228, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/hwmon/f71882fg.c", i32 1123, i32 3}
!509 = !{ptr @.str.229, !508, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @superio_enter._entry, !508, !"_entry", i1 false, i1 false}
!511 = !{ptr @superio_enter._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.230, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/hwmon/f71882fg.c", i32 2735, i32 3}
!514 = !{ptr @.str.231, !513, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @f71882fg_device_add._entry, !513, !"_entry", i1 false, i1 false}
!516 = !{ptr @f71882fg_device_add._entry_ptr, !513, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.233, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/hwmon/f71882fg.c", i32 2742, i32 3}
!519 = !{ptr @f71882fg_device_add._entry.232, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @f71882fg_device_add._entry_ptr.234, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.236, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/hwmon/f71882fg.c", i32 2748, i32 3}
!523 = !{ptr @f71882fg_device_add._entry.235, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @f71882fg_device_add._entry_ptr.237, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{i32 1, !"wchar_size", i32 2}
!526 = !{i32 1, !"min_enum_size", i32 4}
!527 = !{i32 8, !"branch-target-enforcement", i32 0}
!528 = !{i32 8, !"sign-return-address", i32 0}
!529 = !{i32 8, !"sign-return-address-all", i32 0}
!530 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!531 = !{i32 7, !"uwtable", i32 1}
!532 = !{i32 7, !"frame-pointer", i32 2}
!533 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!534 = !{i64 2154004989}
!535 = !{i64 5279350}
!536 = !{i64 5279745}
!537 = !{i64 2154005403}
!538 = !{i64 2154005620}
!539 = !{i64 2154005960}
!540 = !{!"auto-init"}
!541 = !{i8 0, i8 2}
!542 = !{i64 2154002630}
!543 = !{i64 2154002954}
!544 = !{i64 2154000000}
!545 = !{i64 2154000390}
!546 = !{i64 2149038165, i64 2149038170, i64 2149038183, i64 2149038227, i64 2149038261, i64 2149038282}
!547 = !{i32 0, i32 256}
!548 = !{i64 2154004265}
!549 = !{i64 2154003447}
!550 = !{i64 2154003768}
