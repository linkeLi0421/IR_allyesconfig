; ModuleID = '/llk/IR_all_yes/drivers/hwmon/wm831x-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/wm831x-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_wm831x_hwmon__187_148_wm831x_hwmon_driver_init6 = internal global ptr @wm831x_hwmon_driver_init, section ".initcall6.init", align 4
@wm831x_hwmon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_hwmon_driver_exit = internal global ptr @wm831x_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [69 x i8] c"wm831x_hwmon.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [52 x i8] c"wm831x_hwmon.description=WM831x Hardware Monitoring\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [45 x i8] c"wm831x_hwmon.file=drivers/hwmon/wm831x-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [25 x i8] c"wm831x_hwmon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [41 x i8] c"wm831x_hwmon.alias=platform:wm831x-hwmon\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm831x-hwmon\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm831x\00", [25 x i8] zeroinitializer }, align 32
@wm831x_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @wm831x_group, ptr null], [24 x i8] zeroinitializer }, align 32
@wm831x_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wm831x_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wm831x_attrs = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_label, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_label, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_chip_temp, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_voltage, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_label, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_label\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@input_names = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.11, ptr @.str.14, ptr @.str.15], [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Battery\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WALL\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Backup battery\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_label\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_label\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_label\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_label\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_label\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_label\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"wm831x_hwmon_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 141, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 144, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 135, i32 65 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"wm831x_groups\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"wm831x_group\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 128, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"wm831x_attrs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 103, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_label\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_label\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_label\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_label\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_label\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_label\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_label\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 79, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 41, i32 22 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 80, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 81, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 82, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 84, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 67, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"input_names\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 20, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 26, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 27, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 21, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 22, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 25, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 23, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 85, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 86, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 87, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 88, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 90, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 92, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 98, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [32 x i8] c"../drivers/hwmon/wm831x-hwmon.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 100, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_wm831x_hwmon_driver_exit, ptr @__initcall__kmod_wm831x_hwmon__187_148_wm831x_hwmon_driver_init6, ptr @wm831x_hwmon_driver_exit, ptr @wm831x_hwmon_driver, ptr @.str, ptr @.str.1, ptr @wm831x_groups, ptr @wm831x_group, ptr @wm831x_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_label, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_label, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @input_names, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_hwmon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_attrs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_hwmon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_hwmon_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_hwmon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_hwmon_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %call2 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef nonnull @wm831x_groups) #5
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call2 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %4, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_voltage(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call1 = tail call i32 @wm831x_auxadc_read_uv(ptr noundef %1, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3.not = icmp eq i32 %call1, 0
  %add = add nuw i32 %call1, 500
  %div8 = sdiv i32 %add, 1000
  %cond = select i1 %cmp3.not, i32 0, i32 %div8
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_auxadc_read_uv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [11 x ptr], ptr @input_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_chip_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call1 = tail call i32 @wm831x_auxadc_read(ptr noundef %1, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = mul i32 %call1, -10000000
  %mul2 = add i32 %4, 826832704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul2)
  %cmp4 = icmp sgt i32 %mul2, 0
  %cond.in.v = select i1 %cmp4, i32 826838195, i32 826827213
  %cond.in = add i32 %cond.in.v, %4
  %cond = sdiv i32 %cond.in, 10983
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_auxadc_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_wm831x_hwmon__187_148_wm831x_hwmon_driver_init6, !1, !"__initcall__kmod_wm831x_hwmon__187_148_wm831x_hwmon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 148, i32 1}
!2 = !{ptr @__exitcall_wm831x_hwmon_driver_exit, !1, !"__exitcall_wm831x_hwmon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 150, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 151, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 152, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 153, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 144, i32 11}
!14 = !{ptr @wm831x_hwmon_driver, !15, !"wm831x_hwmon_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 141, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 135, i32 65}
!18 = !{ptr @wm831x_groups, !19, !"wm831x_groups", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 128, i32 1}
!20 = !{ptr @wm831x_group, !19, !"wm831x_group", i1 false, i1 false}
!21 = !{ptr @wm831x_attrs, !22, !"wm831x_attrs", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 103, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 79, i32 1}
!25 = !{ptr @sensor_dev_attr_in0_input, !24, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 41, i32 22}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 80, i32 1}
!30 = !{ptr @sensor_dev_attr_in1_input, !29, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 81, i32 1}
!33 = !{ptr @sensor_dev_attr_in2_input, !32, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 82, i32 1}
!36 = !{ptr @sensor_dev_attr_in3_input, !35, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 84, i32 1}
!39 = !{ptr @sensor_dev_attr_in4_input, !38, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sensor_dev_attr_in4_label, !38, !"sensor_dev_attr_in4_label", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 67, i32 22}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 26, i32 27}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 27, i32 27}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 21, i32 27}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 22, i32 27}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 25, i32 27}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 23, i32 27}
!56 = !{ptr @input_names, !57, !"input_names", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 20, i32 27}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 85, i32 1}
!60 = !{ptr @sensor_dev_attr_in5_input, !59, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!61 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sensor_dev_attr_in5_label, !59, !"sensor_dev_attr_in5_label", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 86, i32 1}
!65 = !{ptr @sensor_dev_attr_in6_input, !64, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!66 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sensor_dev_attr_in6_label, !64, !"sensor_dev_attr_in6_label", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 87, i32 1}
!70 = !{ptr @sensor_dev_attr_in7_input, !69, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!71 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sensor_dev_attr_in7_label, !69, !"sensor_dev_attr_in7_label", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 88, i32 1}
!75 = !{ptr @sensor_dev_attr_in8_input, !74, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!76 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sensor_dev_attr_in8_label, !74, !"sensor_dev_attr_in8_label", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 90, i32 8}
!80 = !{ptr @sensor_dev_attr_temp1_input, !79, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 92, i32 8}
!83 = !{ptr @sensor_dev_attr_temp1_label, !82, !"sensor_dev_attr_temp1_label", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 98, i32 8}
!86 = !{ptr @sensor_dev_attr_temp2_input, !85, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/wm831x-hwmon.c", i32 100, i32 8}
!89 = !{ptr @sensor_dev_attr_temp2_label, !88, !"sensor_dev_attr_temp2_label", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
