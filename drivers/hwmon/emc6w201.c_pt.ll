; ModuleID = '/llk/IR_all_yes/drivers/hwmon/emc6w201.c_pt.bc'
source_filename = "../drivers/hwmon/emc6w201.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.emc6w201_data = type { ptr, %struct.mutex, i8, i32, [3 x [6 x i8]], [3 x [6 x i8]], [2 x [5 x i16]] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_emc6w201__301_483_emc6w201_driver_init6 = internal global ptr @emc6w201_driver_init, section ".initcall6.init", align 4
@emc6w201_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @emc6w201_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @emc6w201_id, ptr @emc6w201_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_emc6w201_driver_exit = internal global ptr @emc6w201_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [48 x i8] c"emc6w201.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [62 x i8] c"emc6w201.description=SMSC EMC6W201 hardware monitoring driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [37 x i8] c"emc6w201.file=drivers/hwmon/emc6w201\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"emc6w201.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc6w201\00", [23 x i8] zeroinitializer }, align 32
@emc6w201_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"emc6w201\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@emc6w201_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@emc6w201_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @emc6w201_group, ptr null], [24 x i8] zeroinitializer }, align 32
@emc6w201_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @emc6w201_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@emc6w201_attrs = internal global { [47 x ptr], [36 x i8] } { [47 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_min, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@nominal_mv = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 2500, i16 1500, i16 3300, i16 5000, i16 1500, i16 1500], [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@emc6w201_read8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 102, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d-bit %s failed at 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emc6w201_read8\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hwmon/emc6w201.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emc6w201_read8._entry_ptr = internal global ptr @emc6w201_read8._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@emc6w201_read16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.6, i32 69, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emc6w201_read16\00", [16 x i8] zeroinitializer }, align 32
@emc6w201_read16._entry_ptr = internal global ptr @emc6w201_read16._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@emc6w201_write8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.6, i32 117, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emc6w201_write8\00", [16 x i8] zeroinitializer }, align 32
@emc6w201_write8._entry_ptr = internal global ptr @emc6w201_write8._entry, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_min\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_min\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@emc6w201_write16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.51, ptr @.str.6, i32 89, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"emc6w201_write16\00", [47 x i8] zeroinitializer }, align 32
@emc6w201_write16._entry_ptr = internal global ptr @emc6w201_write16._entry, section ".printk_index", align 4
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@emc6w201_detect.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.6, ptr @.str.61, i8 0, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emc6w201_detect\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown EMC6W201 stepping %d\0A\00", [34 x i8] zeroinitializer }, align 32
@emc6w201_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.6, i32 438, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Monitoring not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@emc6w201_detect._entry_ptr = internal global ptr @emc6w201_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"emc6w201_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 472, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 475, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"emc6w201_id\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 466, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 21, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 458, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"emc6w201_groups\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"emc6w201_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 404, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"emc6w201_attrs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 352, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_min\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_min\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp6_min\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp6_max\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 303, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 186, i32 22 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"nominal_mv\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 177, i32 18 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 101, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 68, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 304, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 116, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 305, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 306, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 307, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 308, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 309, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 310, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 311, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 312, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 313, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 314, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 315, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 316, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 317, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 318, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 319, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 320, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 322, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 225, i32 22 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 323, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 324, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 325, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 326, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 327, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 328, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 329, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 330, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 331, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 332, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 333, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 334, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 335, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 336, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 337, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 338, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 339, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 341, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 342, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 88, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 343, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 344, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 345, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 346, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 347, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 348, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 349, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 350, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 428, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.427 = private constant [28 x i8] c"../drivers/hwmon/emc6w201.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 438, i32 3 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_emc6w201_driver_exit, ptr @__initcall__kmod_emc6w201__301_483_emc6w201_driver_init6, ptr @emc6w201_detect._entry, ptr @emc6w201_detect._entry_ptr, ptr @emc6w201_driver_exit, ptr @emc6w201_read16._entry, ptr @emc6w201_read16._entry_ptr, ptr @emc6w201_read8._entry, ptr @emc6w201_read8._entry_ptr, ptr @emc6w201_write16._entry, ptr @emc6w201_write16._entry_ptr, ptr @emc6w201_write8._entry, ptr @emc6w201_write8._entry_ptr, ptr @emc6w201_driver, ptr @.str, ptr @emc6w201_id, ptr @normal_i2c, ptr @emc6w201_probe.__key, ptr @.str.1, ptr @emc6w201_groups, ptr @emc6w201_group, ptr @emc6w201_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_min, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @.str.2, ptr @.str.3, ptr @nominal_mv, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_attrs to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nominal_mv to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_read8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_read16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_write8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_write16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc6w201_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emc6w201_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @emc6w201_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emc6w201_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @emc6w201_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc6w201_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.emc6w201_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @emc6w201_probe.__key) #8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call3 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @emc6w201_groups) #8
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call3 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %1, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc6w201_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 92
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  %6 = and i32 %call5, -2147483408
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %6)
  %7 = icmp eq i32 %6, 176
  br i1 %7, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %and10 = and i32 %call5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and10)
  %cmp11 = icmp ugt i32 %and10, 2
  br i1 %cmp11, label %do.body, label %if.end21

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc6w201_detect.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@emc6w201_detect, %cleanup)) #8
          to label %if.then18 [label %cleanup], !srcloc !209

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emc6w201_detect.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %and10) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %call22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  %8 = and i32 %call22, -2147483404
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %if.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %and29 = and i32 %call22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end34, %if.end21.cleanup_crit_edge, %if.then18, %do.body, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %do.end34 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.then18 ], [ -19, %if.end21.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc6w201_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %conv5 = zext i8 %3 to i32
  %arrayidx6 = getelementptr %struct.emc6w201_data, ptr %call, i32 0, i32 4, i32 %conv, i32 %conv5
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %arrayidx8 = getelementptr [6 x i16], ptr @nominal_mv, i32 0, i32 %conv5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %7 to i32
  %mul = mul nsw i32 %conv9, %conv7
  %div = udiv i32 %mul, 192
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %div)
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @emc6w201_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %in = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 4
  br label %for.body

for.cond19.preheader:                             ; preds = %emc6w201_read8.exit128
  %temp = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 5
  br label %for.body22

for.body:                                         ; preds = %emc6w201_read8.exit128.for.body_crit_edge, %if.then
  %nr.0178 = phi i32 [ 0, %if.then ], [ %inc, %emc6w201_read8.exit128.for.body_crit_edge ]
  %9 = trunc i32 %nr.0178 to i8
  %conv = add i8 %9, 32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i, !prof !211

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #11
  br label %emc6w201_read8.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = trunc i32 %call.i to i8
  br label %emc6w201_read8.exit

emc6w201_read8.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %conv2.i, %if.end.i ]
  %arrayidx5 = getelementptr [6 x i8], ptr %in, i32 0, i32 %nr.0178
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %retval.0.i, ptr %arrayidx5, align 1
  %11 = shl i8 %9, 1
  %conv7 = add i8 %11, 74
  %call.i111 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 0
  br i1 %cmp.i112, label %do.end.i115, label %if.end.i117, !prof !211

do.end.i115:                                      ; preds = %emc6w201_read8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i114 = zext i8 %conv7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv.i114) #11
  br label %emc6w201_read8.exit119

if.end.i117:                                      ; preds = %emc6w201_read8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i116 = trunc i32 %call.i111 to i8
  br label %emc6w201_read8.exit119

emc6w201_read8.exit119:                           ; preds = %if.end.i117, %do.end.i115
  %retval.0.i118 = phi i8 [ 0, %do.end.i115 ], [ %conv2.i116, %if.end.i117 ]
  %arrayidx11 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 4, i32 1, i32 %nr.0178
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %retval.0.i118, ptr %arrayidx11, align 1
  %conv14 = add i8 %11, 75
  %call.i120 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %do.end.i124, label %if.end.i126, !prof !211

do.end.i124:                                      ; preds = %emc6w201_read8.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i123 = zext i8 %conv14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv.i123) #11
  br label %emc6w201_read8.exit128

if.end.i126:                                      ; preds = %emc6w201_read8.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i125 = trunc i32 %call.i120 to i8
  br label %emc6w201_read8.exit128

emc6w201_read8.exit128:                           ; preds = %if.end.i126, %do.end.i124
  %retval.0.i127 = phi i8 [ 0, %do.end.i124 ], [ %conv2.i125, %if.end.i126 ]
  %arrayidx18 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 4, i32 2, i32 %nr.0178
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i127, ptr %arrayidx18, align 1
  %inc = add nuw nsw i32 %nr.0178, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond19.preheader, label %emc6w201_read8.exit128.for.body_crit_edge

emc6w201_read8.exit128.for.body_crit_edge:        ; preds = %emc6w201_read8.exit128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond45.preheader:                             ; preds = %emc6w201_read8.exit155
  %fan = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 6
  br label %for.body48

for.body22:                                       ; preds = %emc6w201_read8.exit155.for.body22_crit_edge, %for.cond19.preheader
  %nr.1179 = phi i32 [ 0, %for.cond19.preheader ], [ %inc43, %emc6w201_read8.exit155.for.body22_crit_edge ]
  %14 = trunc i32 %nr.1179 to i8
  %conv24 = add i8 %14, 38
  %call.i129 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp.i130 = icmp slt i32 %call.i129, 0
  br i1 %cmp.i130, label %do.end.i133, label %if.end.i135, !prof !211

do.end.i133:                                      ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i132 = zext i8 %conv24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv.i132) #11
  br label %emc6w201_read8.exit137

if.end.i135:                                      ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i134 = trunc i32 %call.i129 to i8
  br label %emc6w201_read8.exit137

emc6w201_read8.exit137:                           ; preds = %if.end.i135, %do.end.i133
  %retval.0.i136 = phi i8 [ 0, %do.end.i133 ], [ %conv2.i134, %if.end.i135 ]
  %arrayidx27 = getelementptr [6 x i8], ptr %temp, i32 0, i32 %nr.1179
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i136, ptr %arrayidx27, align 1
  %16 = shl i8 %14, 1
  %conv30 = add i8 %16, 86
  %call.i138 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i139 = icmp slt i32 %call.i138, 0
  br i1 %cmp.i139, label %do.end.i142, label %if.end.i144, !prof !211

do.end.i142:                                      ; preds = %emc6w201_read8.exit137
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i141 = zext i8 %conv30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv.i141) #11
  br label %emc6w201_read8.exit146

if.end.i144:                                      ; preds = %emc6w201_read8.exit137
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i143 = trunc i32 %call.i138 to i8
  br label %emc6w201_read8.exit146

emc6w201_read8.exit146:                           ; preds = %if.end.i144, %do.end.i142
  %retval.0.i145 = phi i8 [ 0, %do.end.i142 ], [ %conv2.i143, %if.end.i144 ]
  %arrayidx34 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 5, i32 1, i32 %nr.1179
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %retval.0.i145, ptr %arrayidx34, align 1
  %conv37 = add i8 %16, 87
  %call.i147 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp.i148 = icmp slt i32 %call.i147, 0
  br i1 %cmp.i148, label %do.end.i151, label %if.end.i153, !prof !211

do.end.i151:                                      ; preds = %emc6w201_read8.exit146
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i150 = zext i8 %conv37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv.i150) #11
  br label %emc6w201_read8.exit155

if.end.i153:                                      ; preds = %emc6w201_read8.exit146
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i152 = trunc i32 %call.i147 to i8
  br label %emc6w201_read8.exit155

emc6w201_read8.exit155:                           ; preds = %if.end.i153, %do.end.i151
  %retval.0.i154 = phi i8 [ 0, %do.end.i151 ], [ %conv2.i152, %if.end.i153 ]
  %arrayidx41 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 5, i32 2, i32 %nr.1179
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i154, ptr %arrayidx41, align 1
  %inc43 = add nuw nsw i32 %nr.1179, 1
  %exitcond181.not = icmp eq i32 %inc43, 6
  br i1 %exitcond181.not, label %for.cond45.preheader, label %emc6w201_read8.exit155.for.body22_crit_edge

emc6w201_read8.exit155.for.body22_crit_edge:      ; preds = %emc6w201_read8.exit155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.body48:                                       ; preds = %emc6w201_read16.exit177.for.body48_crit_edge, %for.cond45.preheader
  %nr.2180 = phi i32 [ 0, %for.cond45.preheader ], [ %inc63, %emc6w201_read16.exit177.for.body48_crit_edge ]
  %nr.2.tr = trunc i32 %nr.2180 to i8
  %19 = shl i8 %nr.2.tr, 1
  %conv51 = add i8 %19, 44
  %call.i156 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv51) #8
  %add.i = add i8 %19, 45
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp.i157 = icmp slt i32 %call.i156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp4.i = icmp slt i32 %call2.i, 0
  %spec.select.i = select i1 %cmp.i157, i1 true, i1 %cmp4.i, !prof !211
  br i1 %spec.select.i, label %do.end.i160, label %if.end.i161, !prof !211

do.end.i160:                                      ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i158 = zext i8 %conv51 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %conv.i158) #11
  br label %emc6w201_read16.exit

if.end.i161:                                      ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl i32 %call2.i, 8
  %or.i = or i32 %shl.i, %call.i156
  %conv8.i = trunc i32 %or.i to i16
  br label %emc6w201_read16.exit

emc6w201_read16.exit:                             ; preds = %if.end.i161, %do.end.i160
  %retval.0.i162 = phi i16 [ -1, %do.end.i160 ], [ %conv8.i, %if.end.i161 ]
  %arrayidx54 = getelementptr [5 x i16], ptr %fan, i32 0, i32 %nr.2180
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %retval.0.i162, ptr %arrayidx54, align 2
  %conv57 = add i8 %19, 98
  %call.i163 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv57) #8
  %add.i164 = add i8 %19, 99
  %call2.i165 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add.i164) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i166 = icmp slt i32 %call.i163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i165)
  %cmp4.i167 = icmp slt i32 %call2.i165, 0
  %spec.select.i168 = select i1 %cmp.i166, i1 true, i1 %cmp4.i167, !prof !211
  br i1 %spec.select.i168, label %do.end.i171, label %if.end.i175, !prof !211

do.end.i171:                                      ; preds = %emc6w201_read16.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i169 = zext i8 %conv57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %conv.i169) #11
  br label %emc6w201_read16.exit177

if.end.i175:                                      ; preds = %emc6w201_read16.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i172 = shl i32 %call2.i165, 8
  %or.i173 = or i32 %shl.i172, %call.i163
  %conv8.i174 = trunc i32 %or.i173 to i16
  br label %emc6w201_read16.exit177

emc6w201_read16.exit177:                          ; preds = %if.end.i175, %do.end.i171
  %retval.0.i176 = phi i16 [ -1, %do.end.i171 ], [ %conv8.i174, %if.end.i175 ]
  %arrayidx61 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 6, i32 1, i32 %nr.2180
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %retval.0.i176, ptr %arrayidx61, align 2
  %inc63 = add nuw nsw i32 %nr.2180, 1
  %exitcond182.not = icmp eq i32 %inc63, 5
  br i1 %exitcond182.not, label %for.end64, label %emc6w201_read16.exit177.for.body48_crit_edge

emc6w201_read16.exit177.for.body48_crit_edge:     ; preds = %emc6w201_read16.exit177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48

for.end64:                                        ; preds = %emc6w201_read16.exit177
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_updated, align 4
  %valid66 = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %valid66 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %valid66, align 4
  br label %if.end

if.end:                                           ; preds = %for.end64, %lor.lhs.false.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %6 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !212
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %7 to i32
  %conv = zext i8 %5 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %arrayidx = getelementptr [6 x i16], ptr @nominal_mv, i32 0, i32 %conv6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %conv12 = sext i16 %13 to i32
  %mul = mul nsw i32 %conv12, 255
  %div = sdiv i32 %mul, 192
  %14 = call i32 @llvm.smin.i32(i32 %11, i32 %div)
  %mul20 = mul nsw i32 %14, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23 = icmp sgt i32 %14, 0
  %add.pn.v.v.v = select i1 %cmp23, i16 2, i16 -2
  %add.pn.v.v = sdiv i16 %13, %add.pn.v.v.v
  %add.pn.v = sext i16 %add.pn.v.v to i32
  %add.pn = add nsw i32 %mul20, %add.pn.v
  %cond41 = sdiv i32 %add.pn, %conv12
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond41, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp42 = icmp eq i8 %5, 1
  %mul45 = shl i8 %7, 1
  %cond51.v = select i1 %cmp42, i8 74, i8 75
  %cond51 = add i8 %mul45, %cond51.v
  %update_lock = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %conv53 = trunc i32 %17 to i8
  %arrayidx55 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 4, i32 %conv, i32 %conv6
  %18 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv53, ptr %arrayidx55, align 1
  %call.i98 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %cond51, i8 noundef zeroext %conv53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i = icmp slt i32 %call.i98, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.emc6w201_write8.exit_crit_edge, !prof !211

if.end.emc6w201_write8.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %emc6w201_write8.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv.i = zext i8 %cond51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #11
  br label %emc6w201_write8.exit

emc6w201_write8.exit:                             ; preds = %do.end.i, %if.end.emc6w201_write8.exit_crit_edge
  %cond66 = phi i32 [ %count, %if.end.emc6w201_write8.exit_crit_edge ], [ %call.i98, %do.end.i ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %emc6w201_write8.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond66, %emc6w201_write8.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc6w201_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %conv5 = zext i8 %3 to i32
  %arrayidx6 = getelementptr %struct.emc6w201_data, ptr %call, i32 0, i32 5, i32 %conv, i32 %conv5
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv7, 1000
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %mul)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %6 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !212
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %7 to i32
  %conv = zext i8 %5 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 -127000)
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp sgt i32 %11, 0
  %cond32.in.v = select i1 %cmp20, i32 500, i32 -500
  %cond32.in = add nsw i32 %cond32.in.v, %12
  %cond32 = sdiv i32 %cond32.in, 1000
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp33 = icmp eq i8 %5, 1
  %mul = shl i8 %7, 1
  %cond41.v = select i1 %cmp33, i8 86, i8 87
  %cond41 = add i8 %mul, %cond41.v
  %update_lock = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %conv43 = trunc i32 %15 to i8
  %arrayidx44 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 5, i32 %conv, i32 %conv6
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv43, ptr %arrayidx44, align 1
  %call.i85 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %cond41, i8 noundef zeroext %conv43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.i = icmp slt i32 %call.i85, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.emc6w201_write8.exit_crit_edge, !prof !211

if.end.emc6w201_write8.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %emc6w201_write8.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv.i = zext i8 %cond41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #11
  br label %emc6w201_write8.exit

emc6w201_write8.exit:                             ; preds = %do.end.i, %if.end.emc6w201_write8.exit_crit_edge
  %cond55 = phi i32 [ %count, %if.end.emc6w201_write8.exit_crit_edge ], [ %call.i85, %do.end.i ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %emc6w201_write8.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond55, %emc6w201_write8.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc6w201_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %conv5 = zext i8 %3 to i32
  %arrayidx6 = getelementptr %struct.emc6w201_data, ptr %call, i32 0, i32 6, i32 %conv, i32 %conv5
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx6, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.else [
    i16 0, label %entry.if.end_crit_edge
    i16 -1, label %entry.if.end_crit_edge27
  ]

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i16 %5 to i32
  %div = udiv i32 5400000, %conv7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge27
  %rpm.0 = phi i32 [ %div, %if.else ], [ 0, %entry.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge27 ]
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %rpm.0)
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %6 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr5, align 1
  %conv6 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !212
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.end.if.end24_crit_edge, label %if.else

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div61 = lshr i32 %10, 1
  %add = add nuw i32 %div61, 5400000
  %div13 = udiv i32 %add, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add)
  %cmp15.not = icmp ugt i32 %10, %add
  %11 = call i32 @llvm.umin.i32(i32 %div13, i32 65534)
  %12 = select i1 %cmp15.not, i32 0, i32 %11
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end.if.end24_crit_edge
  %storemerge = phi i32 [ %12, %if.else ], [ 65535, %if.end.if.end24_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.emc6w201_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %conv25 = trunc i32 %15 to i16
  %arrayidx26 = getelementptr %struct.emc6w201_data, ptr %1, i32 0, i32 6, i32 %conv, i32 %conv6
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv25, ptr %arrayidx26, align 2
  %mul = shl i8 %7, 1
  %add27 = add i8 %mul, 98
  %conv1.i = trunc i32 %15 to i8
  %call.i62 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add27, i8 noundef zeroext %conv1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end24.if.end.i_crit_edge, !prof !213

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i8 %mul, 99
  %17 = lshr i32 %15, 8
  %conv8.i = trunc i32 %17 to i8
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add.i, i8 noundef zeroext %conv8.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %err.0.i = phi i32 [ %call9.i, %if.then.i ], [ %call.i62, %if.end24.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.emc6w201_write16.exit_crit_edge, !prof !211

if.end.i.emc6w201_write16.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %emc6w201_write16.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv18.i = zext i8 %add27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %conv18.i) #11
  br label %emc6w201_write16.exit

emc6w201_write16.exit:                            ; preds = %do.end.i, %if.end.i.emc6w201_write16.exit_crit_edge
  %call32.count = phi i32 [ %count, %if.end.i.emc6w201_write16.exit_crit_edge ], [ %err.0.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %emc6w201_write16.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32.count, %emc6w201_write16.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !192, !193, !194, !196, !197, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_emc6w201__301_483_emc6w201_driver_init6, !1, !"__initcall__kmod_emc6w201__301_483_emc6w201_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/emc6w201.c", i32 483, i32 1}
!2 = !{ptr @__exitcall_emc6w201_driver_exit, !1, !"__exitcall_emc6w201_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/emc6w201.c", i32 485, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/emc6w201.c", i32 486, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/emc6w201.c", i32 487, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/emc6w201.c", i32 475, i32 11}
!12 = !{ptr @emc6w201_driver, !13, !"emc6w201_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/emc6w201.c", i32 472, i32 26}
!14 = !{ptr @emc6w201_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/emc6w201.c", i32 458, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @emc6w201_groups, !18, !"emc6w201_groups", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/emc6w201.c", i32 404, i32 1}
!19 = !{ptr @emc6w201_group, !18, !"emc6w201_group", i1 false, i1 false}
!20 = !{ptr @emc6w201_attrs, !21, !"emc6w201_attrs", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/emc6w201.c", i32 352, i32 26}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/emc6w201.c", i32 303, i32 8}
!24 = !{ptr @sensor_dev_attr_in0_input, !23, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/emc6w201.c", i32 186, i32 22}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/emc6w201.c", i32 101, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @emc6w201_read8._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @emc6w201_read8._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/emc6w201.c", i32 68, i32 3}
!38 = !{ptr @emc6w201_read16._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @emc6w201_read16._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @nominal_mv, !41, !"nominal_mv", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/emc6w201.c", i32 177, i32 18}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/emc6w201.c", i32 304, i32 8}
!44 = !{ptr @sensor_dev_attr_in0_min, !43, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/emc6w201.c", i32 116, i32 3}
!47 = !{ptr @emc6w201_write8._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @emc6w201_write8._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/emc6w201.c", i32 305, i32 8}
!52 = !{ptr @sensor_dev_attr_in0_max, !51, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/emc6w201.c", i32 306, i32 8}
!55 = !{ptr @sensor_dev_attr_in1_input, !54, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/emc6w201.c", i32 307, i32 8}
!58 = !{ptr @sensor_dev_attr_in1_min, !57, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/emc6w201.c", i32 308, i32 8}
!61 = !{ptr @sensor_dev_attr_in1_max, !60, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/emc6w201.c", i32 309, i32 8}
!64 = !{ptr @sensor_dev_attr_in2_input, !63, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/emc6w201.c", i32 310, i32 8}
!67 = !{ptr @sensor_dev_attr_in2_min, !66, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/emc6w201.c", i32 311, i32 8}
!70 = !{ptr @sensor_dev_attr_in2_max, !69, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/emc6w201.c", i32 312, i32 8}
!73 = !{ptr @sensor_dev_attr_in3_input, !72, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/emc6w201.c", i32 313, i32 8}
!76 = !{ptr @sensor_dev_attr_in3_min, !75, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/emc6w201.c", i32 314, i32 8}
!79 = !{ptr @sensor_dev_attr_in3_max, !78, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/emc6w201.c", i32 315, i32 8}
!82 = !{ptr @sensor_dev_attr_in4_input, !81, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/emc6w201.c", i32 316, i32 8}
!85 = !{ptr @sensor_dev_attr_in4_min, !84, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/emc6w201.c", i32 317, i32 8}
!88 = !{ptr @sensor_dev_attr_in4_max, !87, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/emc6w201.c", i32 318, i32 8}
!91 = !{ptr @sensor_dev_attr_in5_input, !90, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/emc6w201.c", i32 319, i32 8}
!94 = !{ptr @sensor_dev_attr_in5_min, !93, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/emc6w201.c", i32 320, i32 8}
!97 = !{ptr @sensor_dev_attr_in5_max, !96, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/emc6w201.c", i32 322, i32 8}
!100 = !{ptr @sensor_dev_attr_temp1_input, !99, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/emc6w201.c", i32 225, i32 22}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/emc6w201.c", i32 323, i32 8}
!105 = !{ptr @sensor_dev_attr_temp1_min, !104, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/emc6w201.c", i32 324, i32 8}
!108 = !{ptr @sensor_dev_attr_temp1_max, !107, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/emc6w201.c", i32 325, i32 8}
!111 = !{ptr @sensor_dev_attr_temp2_input, !110, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/emc6w201.c", i32 326, i32 8}
!114 = !{ptr @sensor_dev_attr_temp2_min, !113, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/emc6w201.c", i32 327, i32 8}
!117 = !{ptr @sensor_dev_attr_temp2_max, !116, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/emc6w201.c", i32 328, i32 8}
!120 = !{ptr @sensor_dev_attr_temp3_input, !119, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/emc6w201.c", i32 329, i32 8}
!123 = !{ptr @sensor_dev_attr_temp3_min, !122, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/emc6w201.c", i32 330, i32 8}
!126 = !{ptr @sensor_dev_attr_temp3_max, !125, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/emc6w201.c", i32 331, i32 8}
!129 = !{ptr @sensor_dev_attr_temp4_input, !128, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/emc6w201.c", i32 332, i32 8}
!132 = !{ptr @sensor_dev_attr_temp4_min, !131, !"sensor_dev_attr_temp4_min", i1 false, i1 false}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/emc6w201.c", i32 333, i32 8}
!135 = !{ptr @sensor_dev_attr_temp4_max, !134, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/emc6w201.c", i32 334, i32 8}
!138 = !{ptr @sensor_dev_attr_temp5_input, !137, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/emc6w201.c", i32 335, i32 8}
!141 = !{ptr @sensor_dev_attr_temp5_min, !140, !"sensor_dev_attr_temp5_min", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/emc6w201.c", i32 336, i32 8}
!144 = !{ptr @sensor_dev_attr_temp5_max, !143, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!145 = !{ptr @.str.46, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/emc6w201.c", i32 337, i32 8}
!147 = !{ptr @sensor_dev_attr_temp6_input, !146, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/emc6w201.c", i32 338, i32 8}
!150 = !{ptr @sensor_dev_attr_temp6_min, !149, !"sensor_dev_attr_temp6_min", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/emc6w201.c", i32 339, i32 8}
!153 = !{ptr @sensor_dev_attr_temp6_max, !152, !"sensor_dev_attr_temp6_max", i1 false, i1 false}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/emc6w201.c", i32 341, i32 8}
!156 = !{ptr @sensor_dev_attr_fan1_input, !155, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/emc6w201.c", i32 342, i32 8}
!159 = !{ptr @sensor_dev_attr_fan1_min, !158, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/emc6w201.c", i32 88, i32 3}
!162 = !{ptr @emc6w201_write16._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @emc6w201_write16._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/emc6w201.c", i32 343, i32 8}
!166 = !{ptr @sensor_dev_attr_fan2_input, !165, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!167 = !{ptr @.str.53, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/emc6w201.c", i32 344, i32 8}
!169 = !{ptr @sensor_dev_attr_fan2_min, !168, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!170 = !{ptr @.str.54, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/emc6w201.c", i32 345, i32 8}
!172 = !{ptr @sensor_dev_attr_fan3_input, !171, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!173 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/emc6w201.c", i32 346, i32 8}
!175 = !{ptr @sensor_dev_attr_fan3_min, !174, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!176 = !{ptr @.str.56, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/emc6w201.c", i32 347, i32 8}
!178 = !{ptr @sensor_dev_attr_fan4_input, !177, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!179 = !{ptr @.str.57, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/emc6w201.c", i32 348, i32 8}
!181 = !{ptr @sensor_dev_attr_fan4_min, !180, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!182 = !{ptr @.str.58, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/emc6w201.c", i32 349, i32 8}
!184 = !{ptr @sensor_dev_attr_fan5_input, !183, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!185 = !{ptr @.str.59, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/emc6w201.c", i32 350, i32 8}
!187 = !{ptr @sensor_dev_attr_fan5_min, !186, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!188 = !{ptr @emc6w201_id, !189, !"emc6w201_id", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/emc6w201.c", i32 466, i32 35}
!190 = !{ptr @.str.60, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/emc6w201.c", i32 428, i32 3}
!192 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @emc6w201_detect.__UNIQUE_ID_ddebug300, !191, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!194 = !{ptr @.str.62, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/emc6w201.c", i32 438, i32 3}
!196 = !{ptr @emc6w201_detect._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @emc6w201_detect._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @normal_i2c, !199, !"normal_i2c", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/emc6w201.c", i32 21, i32 29}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2148965673, i64 2148965678, i64 2148965691, i64 2148965735, i64 2148965769, i64 2148965790}
!210 = !{i8 0, i8 2}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{!"auto-init"}
!213 = !{!"branch_weights", i32 2000, i32 1}
