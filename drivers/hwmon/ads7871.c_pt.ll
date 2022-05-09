; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ads7871.c_pt.bc'
source_filename = "../drivers/hwmon/ads7871.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_ads7871__231_203_ads7871_driver_init6 = internal global ptr @ads7871_driver_init, section ".initcall6.init", align 4
@ads7871_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ads7871_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ads7871_driver_exit = internal global ptr @ads7871_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [51 x i8] c"ads7871.author=Paul Thomas <pthomas8589@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [42 x i8] c"ads7871.description=TI ADS7871 A/D driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [35 x i8] c"ads7871.file=drivers/hwmon/ads7871\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [20 x i8] c"ads7871.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ads7871\00", [24 x i8] zeroinitializer }, align 32
@ads7871_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ads7871_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ads7871.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"REG_OSC_CONTROL write:%x, read:%x\0A\00", [61 x i8] zeroinitializer }, align 32
@ads7871_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ads7871_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ads7871_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ads7871_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads7871_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"ads7871_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 196, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 198, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 176, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"ads7871_groups\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ads7871_group\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 154, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"ads7871_attrs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 142, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 133, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 127, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 134, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 135, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 136, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 137, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 138, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 139, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [27 x i8] c"../drivers/hwmon/ads7871.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 140, i32 8 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_ads7871_driver_exit, ptr @__initcall__kmod_ads7871__231_203_ads7871_driver_init6, ptr @ads7871_driver_exit, ptr @ads7871_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ads7871_groups, ptr @ads7871_group, ptr @ads7871_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7871_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7871_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7871_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7871_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7871_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ads7871_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads7871_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ads7871_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7871_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  %msg.i.i.i54 = alloca %struct.spi_message, align 4
  %t.i.i55 = alloca %struct.spi_transfer, align 4
  %tmp.i56 = alloca [2 x i8], align 1
  %msg.i.i.i41 = alloca %struct.spi_message, align 4
  %t.i.i42 = alloca %struct.spi_transfer, align 4
  %tmp.i43 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %tmp.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #5
  %2 = getelementptr inbounds [2 x i8], ptr %tmp.i, i32 0, i32 1
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %tmp.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tmp.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ads7871_write_reg8.exit_crit_edge

entry.ads7871_write_reg8.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_write_reg8.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ads7871_write_reg8.exit

ads7871_write_reg8.exit:                          ; preds = %if.end.i.i.i.i.i.i.i, %entry.ads7871_write_reg8.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i43) #5
  %19 = getelementptr inbounds [2 x i8], ptr %tmp.i43, i32 0, i32 1
  %20 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %tmp.i43, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i42) #5
  %22 = getelementptr inbounds i8, ptr %t.i.i42, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tmp.i43, ptr %t.i.i42, align 4
  %len1.i.i44 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i.i44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len1.i.i44, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i41) #5
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i41, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i.i41, ptr %msg.i.i.i41, align 4
  %prev.i.i.i.i.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i41, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i41, ptr %prev.i.i.i.i.i.i.i45, align 4
  %resources.i.i.i.i.i.i46 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i41, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i.i46, ptr %resources.i.i.i.i.i.i46, align 4
  %prev.i2.i.i.i.i.i.i47 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i41, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i.i46, ptr %prev.i2.i.i.i.i.i.i47, align 4
  %transfer_list.i.i.i.i.i48 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 18
  %call.i.i.i.i.i.i.i49 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i48, ptr noundef nonnull %msg.i.i.i41, ptr noundef nonnull %msg.i.i.i41) #5
  br i1 %call.i.i.i.i.i.i.i49, label %if.end.i.i.i.i.i.i.i51, label %ads7871_write_reg8.exit.ads7871_write_reg8.exit53_crit_edge

ads7871_write_reg8.exit.ads7871_write_reg8.exit53_crit_edge: ; preds = %ads7871_write_reg8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_write_reg8.exit53

if.end.i.i.i.i.i.i.i51:                           ; preds = %ads7871_write_reg8.exit
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i.i48, ptr %prev.i.i.i.i.i.i.i45, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i41, ptr %transfer_list.i.i.i.i.i48, align 4
  %prev3.i.i.i.i.i.i.i50 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i41, ptr %prev3.i.i.i.i.i.i.i50, align 4
  %35 = ptrtoint ptr %msg.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i.i48, ptr %msg.i.i.i41, align 4
  br label %ads7871_write_reg8.exit53

ads7871_write_reg8.exit53:                        ; preds = %if.end.i.i.i.i.i.i.i51, %ads7871_write_reg8.exit.ads7871_write_reg8.exit53_crit_edge
  %call.i.i.i52 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i41) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i41) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i42) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i43) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i56) #5
  %36 = getelementptr inbounds [2 x i8], ptr %tmp.i56, i32 0, i32 1
  %37 = ptrtoint ptr %tmp.i56 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 7, ptr %tmp.i56, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 60, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i55) #5
  %39 = getelementptr inbounds i8, ptr %t.i.i55, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = ptrtoint ptr %t.i.i55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tmp.i56, ptr %t.i.i55, align 4
  %len1.i.i57 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i55, i32 0, i32 2
  %42 = ptrtoint ptr %len1.i.i57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len1.i.i57, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i54) #5
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i54, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %msg.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %msg.i.i.i54, ptr %msg.i.i.i54, align 4
  %prev.i.i.i.i.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i54, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i54, ptr %prev.i.i.i.i.i.i.i58, align 4
  %resources.i.i.i.i.i.i59 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i54, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i.i.i.i59, ptr %resources.i.i.i.i.i.i59, align 4
  %prev.i2.i.i.i.i.i.i60 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i54, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i.i.i.i59, ptr %prev.i2.i.i.i.i.i.i60, align 4
  %transfer_list.i.i.i.i.i61 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i55, i32 0, i32 18
  %call.i.i.i.i.i.i.i62 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i61, ptr noundef nonnull %msg.i.i.i54, ptr noundef nonnull %msg.i.i.i54) #5
  br i1 %call.i.i.i.i.i.i.i62, label %if.end.i.i.i.i.i.i.i64, label %ads7871_write_reg8.exit53.ads7871_write_reg8.exit66_crit_edge

ads7871_write_reg8.exit53.ads7871_write_reg8.exit66_crit_edge: ; preds = %ads7871_write_reg8.exit53
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_write_reg8.exit66

if.end.i.i.i.i.i.i.i64:                           ; preds = %ads7871_write_reg8.exit53
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i.i.i.i61, ptr %prev.i.i.i.i.i.i.i58, align 4
  %50 = ptrtoint ptr %transfer_list.i.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i54, ptr %transfer_list.i.i.i.i.i61, align 4
  %prev3.i.i.i.i.i.i.i63 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i55, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i54, ptr %prev3.i.i.i.i.i.i.i63, align 4
  %52 = ptrtoint ptr %msg.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i.i.i.i61, ptr %msg.i.i.i54, align 4
  br label %ads7871_write_reg8.exit66

ads7871_write_reg8.exit66:                        ; preds = %if.end.i.i.i.i.i.i.i64, %ads7871_write_reg8.exit53.ads7871_write_reg8.exit66_crit_edge
  %call.i.i.i65 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i54) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i54) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i55) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i56) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #5
  %53 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 71, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #5
  %54 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %result.i.i, align 1, !annotation !59
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ads7871_write_reg8.exit66.ads7871_read_reg8.exit_crit_edge, label %cond.false.i.i

ads7871_write_reg8.exit66.ads7871_read_reg8.exit_crit_edge: ; preds = %ads7871_write_reg8.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_read_reg8.exit

cond.false.i.i:                                   ; preds = %ads7871_write_reg8.exit66
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %56 to i32
  br label %ads7871_read_reg8.exit

ads7871_read_reg8.exit:                           ; preds = %cond.false.i.i, %ads7871_write_reg8.exit66.ads7871_read_reg8.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %ads7871_write_reg8.exit66.ads7871_read_reg8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ads7871_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ads7871_probe, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !60

if.then:                                          ; preds = %ads7871_read_reg8.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ads7871_probe.__UNIQUE_ID_ddebug230, ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 60, i32 noundef %cond.i.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %ads7871_read_reg8.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %cond.i.i)
  %cmp.not = icmp eq i32 %cond.i.i, 60
  br i1 %cmp.not, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 4, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %spi, ptr %call.i, align 4
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %call19 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %spi, ptr noundef %modalias, ptr noundef nonnull %call.i, ptr noundef nonnull @ads7871_groups) #5
  %cmp.i.i67 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %58 = ptrtoint ptr %call19 to i32
  %spec.select.i = select i1 %cmp.i.i67, i32 %58, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end17 ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voltage_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %cmd.addr.i.i42 = alloca i8, align 1
  %result.i.i43 = alloca i16, align 2
  %cmd.addr.i.i34 = alloca i8, align 1
  %result.i.i35 = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %tmp.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = trunc i32 %5 to i8
  %conv3 = or i8 %6, -120
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #5
  %7 = getelementptr inbounds [2 x i8], ptr %tmp.i, i32 0, i32 1
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %tmp.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %10 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tmp.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %14 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ads7871_write_reg8.exit_crit_edge

entry.ads7871_write_reg8.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_write_reg8.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ads7871_write_reg8.exit

ads7871_write_reg8.exit:                          ; preds = %if.end.i.i.i.i.i.i.i, %entry.ads7871_write_reg8.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #5
  %24 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 68, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #5
  %25 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %result.i.i, align 1, !annotation !59
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ads7871_write_reg8.exit.ads7871_read_reg8.exit_crit_edge, label %cond.false.i.i

ads7871_write_reg8.exit.ads7871_read_reg8.exit_crit_edge: ; preds = %ads7871_write_reg8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_read_reg8.exit

cond.false.i.i:                                   ; preds = %ads7871_write_reg8.exit
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  br label %ads7871_read_reg8.exit

ads7871_read_reg8.exit:                           ; preds = %cond.false.i.i, %ads7871_write_reg8.exit.ads7871_read_reg8.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %ads7871_write_reg8.exit.ads7871_read_reg8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #5
  %28 = and i32 %cond.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not49 = icmp eq i32 %28, 0
  br i1 %tobool.not49, label %ads7871_read_reg8.exit.if.then_crit_edge, label %while.body

ads7871_read_reg8.exit.if.then_crit_edge:         ; preds = %ads7871_read_reg8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.body:                                       ; preds = %ads7871_read_reg8.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i34) #5
  %29 = ptrtoint ptr %cmd.addr.i.i34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 68, ptr %cmd.addr.i.i34, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i35) #5
  %30 = ptrtoint ptr %result.i.i35 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %result.i.i35, align 1, !annotation !59
  %call.i.i36 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i34, i32 noundef 1, ptr noundef nonnull %result.i.i35, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i.i37 = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i.i37, label %while.body.ads7871_read_reg8.exit41_crit_edge, label %cond.false.i.i39

while.body.ads7871_read_reg8.exit41_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_read_reg8.exit41

cond.false.i.i39:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %result.i.i35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %result.i.i35, align 1
  %conv.i.i38 = zext i8 %32 to i32
  br label %ads7871_read_reg8.exit41

ads7871_read_reg8.exit41:                         ; preds = %cond.false.i.i39, %while.body.ads7871_read_reg8.exit41_crit_edge
  %cond.i.i40 = phi i32 [ %conv.i.i38, %cond.false.i.i39 ], [ %call.i.i36, %while.body.ads7871_read_reg8.exit41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i35) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i34) #5
  %call13 = call i32 @msleep_interruptible(i32 noundef 1) #5
  %33 = and i32 %cond.i.i40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %ads7871_read_reg8.exit41.while.end_crit_edge, label %while.body.1

ads7871_read_reg8.exit41.while.end_crit_edge:     ; preds = %ads7871_read_reg8.exit41
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.1:                                     ; preds = %ads7871_read_reg8.exit41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i34) #5
  %34 = ptrtoint ptr %cmd.addr.i.i34 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 68, ptr %cmd.addr.i.i34, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i35) #5
  %35 = ptrtoint ptr %result.i.i35 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %result.i.i35, align 1, !annotation !59
  %call.i.i36.1 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i34, i32 noundef 1, ptr noundef nonnull %result.i.i35, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.1)
  %cmp.i.i37.1 = icmp slt i32 %call.i.i36.1, 0
  br i1 %cmp.i.i37.1, label %while.body.1.ads7871_read_reg8.exit41.1_crit_edge, label %cond.false.i.i39.1

while.body.1.ads7871_read_reg8.exit41.1_crit_edge: ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_read_reg8.exit41.1

cond.false.i.i39.1:                               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %result.i.i35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %result.i.i35, align 1
  %conv.i.i38.1 = zext i8 %37 to i32
  br label %ads7871_read_reg8.exit41.1

ads7871_read_reg8.exit41.1:                       ; preds = %cond.false.i.i39.1, %while.body.1.ads7871_read_reg8.exit41.1_crit_edge
  %cond.i.i40.1 = phi i32 [ %conv.i.i38.1, %cond.false.i.i39.1 ], [ %call.i.i36.1, %while.body.1.ads7871_read_reg8.exit41.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i35) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i34) #5
  %call13.1 = call i32 @msleep_interruptible(i32 noundef 1) #5
  %38 = and i32 %cond.i.i40.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.1 = icmp eq i32 %38, 0
  br label %while.end

while.end:                                        ; preds = %ads7871_read_reg8.exit41.1, %ads7871_read_reg8.exit41.while.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not, %ads7871_read_reg8.exit41.while.end_crit_edge ], [ %tobool.not.1, %ads7871_read_reg8.exit41.1 ]
  br i1 %tobool.not.lcssa, label %while.end.if.then_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %ads7871_read_reg8.exit.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i42) #5
  %39 = ptrtoint ptr %cmd.addr.i.i42 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 96, ptr %cmd.addr.i.i42, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result.i.i43) #5
  %40 = ptrtoint ptr %result.i.i43 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %result.i.i43, align 2, !annotation !59
  %call.i.i44 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i42, i32 noundef 1, ptr noundef nonnull %result.i.i43, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp.i.i45 = icmp slt i32 %call.i.i44, 0
  br i1 %cmp.i.i45, label %if.then.ads7871_read_reg16.exit_crit_edge, label %cond.false.i.i47

if.then.ads7871_read_reg16.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads7871_read_reg16.exit

cond.false.i.i47:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %result.i.i43 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %result.i.i43, align 2
  %conv.i.i46 = zext i16 %42 to i32
  br label %ads7871_read_reg16.exit

ads7871_read_reg16.exit:                          ; preds = %cond.false.i.i47, %if.then.ads7871_read_reg16.exit_crit_edge
  %cond.i.i48 = phi i32 [ %conv.i.i46, %cond.false.i.i47 ], [ %call.i.i44, %if.then.ads7871_read_reg16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i43) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i42) #5
  %shr18 = ashr i32 %cond.i.i48, 2
  %mul = mul i32 %shr18, 25000
  %div = sdiv i32 %mul, 8192
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %ads7871_read_reg16.exit, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %ads7871_read_reg16.exit ], [ -1, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_ads7871__231_203_ads7871_driver_init6, !1, !"__initcall__kmod_ads7871__231_203_ads7871_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ads7871.c", i32 203, i32 1}
!2 = !{ptr @__exitcall_ads7871_driver_exit, !1, !"__exitcall_ads7871_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ads7871.c", i32 205, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ads7871.c", i32 206, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ads7871.c", i32 207, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ads7871.c", i32 198, i32 11}
!12 = !{ptr @ads7871_driver, !13, !"ads7871_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ads7871.c", i32 196, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ads7871.c", i32 176, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ads7871_probe.__UNIQUE_ID_ddebug230, !15, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!19 = !{ptr @ads7871_groups, !20, !"ads7871_groups", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ads7871.c", i32 154, i32 1}
!21 = !{ptr @ads7871_group, !20, !"ads7871_group", i1 false, i1 false}
!22 = !{ptr @ads7871_attrs, !23, !"ads7871_attrs", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ads7871.c", i32 142, i32 26}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/ads7871.c", i32 133, i32 8}
!26 = !{ptr @sensor_dev_attr_in0_input, !25, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/ads7871.c", i32 127, i32 23}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/ads7871.c", i32 134, i32 8}
!31 = !{ptr @sensor_dev_attr_in1_input, !30, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/ads7871.c", i32 135, i32 8}
!34 = !{ptr @sensor_dev_attr_in2_input, !33, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/ads7871.c", i32 136, i32 8}
!37 = !{ptr @sensor_dev_attr_in3_input, !36, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ads7871.c", i32 137, i32 8}
!40 = !{ptr @sensor_dev_attr_in4_input, !39, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ads7871.c", i32 138, i32 8}
!43 = !{ptr @sensor_dev_attr_in5_input, !42, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/ads7871.c", i32 139, i32 8}
!46 = !{ptr @sensor_dev_attr_in6_input, !45, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ads7871.c", i32 140, i32 8}
!49 = !{ptr @sensor_dev_attr_in7_input, !48, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i64 2148957151, i64 2148957156, i64 2148957169, i64 2148957213, i64 2148957247, i64 2148957268}
