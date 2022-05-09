; ModuleID = '/llk/IR_all_yes/drivers/hwmon/shtc1.c_pt.bc'
source_filename = "../drivers/hwmon/shtc1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.shtc1_data = type { ptr, %struct.mutex, i8, i32, ptr, i32, %struct.shtc1_platform_data, i32, i32, i32 }
%struct.shtc1_platform_data = type { i8, i8 }

@__initcall__kmod_shtc1__289_286_shtc1_i2c_driver_init6 = internal global ptr @shtc1_i2c_driver_init, section ".initcall6.init", align 4
@shtc1_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @shtc1_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @shtc1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @shtc1_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_shtc1_i2c_driver_exit = internal global ptr @shtc1_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [69 x i8] c"shtc1.author=Johannes Winkelmann <johannes.winkelmann@sensirion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [73 x i8] c"shtc1.description=Sensirion SHTC1 humidity and temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [31 x i8] c"shtc1.file=drivers/hwmon/shtc1\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [18 x i8] c"shtc1.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shtc1\00", [26 x i8] zeroinitializer }, align 32
@shtc1_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,shtc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,shtw1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,shtc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@shtc1_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"shtc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"shtw1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"shtc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@shtc1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"plain i2c transactions not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"shtc1_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hwmon/shtc1.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@shtc1_probe._entry_ptr = internal global ptr @shtc1_probe._entry, section ".printk_index", align 4
@shtc1_cmd_read_id_reg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EF\C8", [30 x i8] zeroinitializer }, align 32
@shtc1_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not send read_id_reg command: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@shtc1_probe._entry_ptr.8 = internal global ptr @shtc1_probe._entry.6, section ".printk_index", align 4
@shtc1_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not read ID register: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@shtc1_probe._entry_ptr.11 = internal global ptr @shtc1_probe._entry.9, section ".printk_index", align 4
@shtc1_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SHTC3 ID register does not match\0A\00", [62 x i8] zeroinitializer }, align 32
@shtc1_probe._entry_ptr.14 = internal global ptr @shtc1_probe._entry.12, section ".printk_index", align 4
@shtc1_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SHTC1 ID register does not match\0A\00", [62 x i8] zeroinitializer }, align 32
@shtc1_probe._entry_ptr.17 = internal global ptr @shtc1_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sensirion,blocking-io\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sensicon,low-precision\00", [41 x i8] zeroinitializer }, align 32
@shtc1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@shtc1_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @shtc1_group, ptr null], [24 x i8] zeroinitializer }, align 32
@shtc1_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@shtc1_cmd_measure_blocking_hpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\A2", [30 x i8] zeroinitializer }, align 32
@shtc1_cmd_measure_nonblocking_hpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"xf", [30 x i8] zeroinitializer }, align 32
@shtc1_cmd_measure_blocking_lpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"dX", [30 x i8] zeroinitializer }, align 32
@shtc1_cmd_measure_nonblocking_lpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"`\9C", [30 x i8] zeroinitializer }, align 32
@shtc1_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @shtc1_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@shtc1_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_temp1_input, ptr @dev_attr_humidity1_input, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_temp1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_humidity1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@shtc1_update_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to send command: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shtc1_update_values\00", [44 x i8] zeroinitializer }, align 32
@shtc1_update_values._entry_ptr = internal global ptr @shtc1_update_values._entry, section ".printk_index", align 4
@shtc1_update_values._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read values: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@shtc1_update_values._entry_ptr.28 = internal global ptr @shtc1_update_values._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_input\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"shtc1_i2c_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 277, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 279, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"shtc1_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 269, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"shtc1_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 261, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 204, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"shtc1_cmd_read_id_reg\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 28, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 210, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 215, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 222, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 226, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 240, i32 55 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 241, i32 59 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 248, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"shtc1_groups\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 255, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [31 x i8] c"shtc1_cmd_measure_blocking_hpm\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 20, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant [34 x i8] c"shtc1_cmd_measure_nonblocking_hpm\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 21, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant [31 x i8] c"shtc1_cmd_measure_blocking_lpm\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 24, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant [34 x i8] c"shtc1_cmd_measure_nonblocking_lpm\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 25, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"shtc1_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 168, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"shtc1_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 162, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"dev_attr_temp1_input\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"dev_attr_humidity1_input\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 159, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 146, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 77, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 93, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [25 x i8] c"../drivers/hwmon/shtc1.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 160, i32 8 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_shtc1_i2c_driver_exit, ptr @__initcall__kmod_shtc1__289_286_shtc1_i2c_driver_init6, ptr @shtc1_i2c_driver_exit, ptr @shtc1_probe._entry, ptr @shtc1_probe._entry.12, ptr @shtc1_probe._entry.15, ptr @shtc1_probe._entry.6, ptr @shtc1_probe._entry.9, ptr @shtc1_probe._entry_ptr, ptr @shtc1_probe._entry_ptr.11, ptr @shtc1_probe._entry_ptr.14, ptr @shtc1_probe._entry_ptr.17, ptr @shtc1_probe._entry_ptr.8, ptr @shtc1_update_values._entry, ptr @shtc1_update_values._entry.26, ptr @shtc1_update_values._entry_ptr, ptr @shtc1_update_values._entry_ptr.28, ptr @shtc1_i2c_driver, ptr @.str, ptr @shtc1_of_match, ptr @shtc1_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @shtc1_cmd_read_id_reg, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @shtc1_probe.__key, ptr @.str.20, ptr @shtc1_groups, ptr @.str.21, ptr @shtc1_cmd_measure_blocking_hpm, ptr @shtc1_cmd_measure_nonblocking_hpm, ptr @shtc1_cmd_measure_blocking_lpm, ptr @shtc1_cmd_measure_nonblocking_lpm, ptr @shtc1_group, ptr @shtc1_attrs, ptr @dev_attr_temp1_input, ptr @dev_attr_humidity1_input, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_cmd_read_id_reg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_cmd_measure_blocking_hpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_cmd_measure_nonblocking_hpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_cmd_measure_blocking_lpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_cmd_measure_nonblocking_lpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_humidity1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_update_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shtc1_update_values._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @shtc1_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @shtc1_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @shtc1_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @shtc1_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shtc1_probe(ptr noundef %client) #2 align 64 {
entry:
  %id_reg_buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id_reg_buf) #6
  %0 = ptrtoint ptr %id_reg_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %id_reg_buf, align 2, !annotation !93
  %1 = getelementptr inbounds [2 x i8], ptr %id_reg_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !93
  %call = tail call ptr @i2c_match_id(ptr noundef nonnull @shtc1_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %6) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull @shtc1_cmd_read_id_reg, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp8, i32 %call.i, i32 -19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i128 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %id_reg_buf, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i128)
  %cmp11.not = icmp eq i32 %call.i128, 2
  br i1 %cmp11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i128) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %id_reg_buf to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id_reg_buf, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp19 = icmp eq i32 %4, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  %15 = and i16 %14, 2111
  call void @__sanitizer_cov_trace_const_cmp2(i16 2055, i16 %15)
  %cmp21.not = icmp eq i16 %15, 2055
  br i1 %cmp21.not, label %if.then20.if.end37_crit_edge, label %do.end26

if.then20.if.end37_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %16 = and i16 %14, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %16)
  %cmp30.not = icmp eq i16 %16, 7
  br i1 %cmp30.not, label %if.else.if.end37_crit_edge, label %do.end35

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %if.then20.if.end37_crit_edge
  %call.i129 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #6
  %tobool39.not = icmp eq ptr %call.i129, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %setup = getelementptr inbounds %struct.shtc1_data, ptr %call.i129, i32 0, i32 6
  %17 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %setup, align 4
  %high_precision = getelementptr inbounds %struct.shtc1_data, ptr %call.i129, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %high_precision to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %high_precision, align 1
  %19 = ptrtoint ptr %call.i129 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %call.i129, align 4
  %chip44 = getelementptr inbounds %struct.shtc1_data, ptr %call.i129, i32 0, i32 7
  %20 = ptrtoint ptr %chip44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %4, ptr %chip44, align 4
  %tobool45.not = icmp eq ptr %8, null
  br i1 %tobool45.not, label %if.else54, label %if.then46

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call.i130 = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i130, null
  %frombool = zext i1 %tobool.i to i8
  %21 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %setup, align 4
  %call.i131 = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.19, ptr noundef null) #6
  %tobool.i132.not = icmp eq ptr %call.i131, null
  %frombool53 = zext i1 %tobool.i132.not to i8
  %22 = ptrtoint ptr %high_precision to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool53, ptr %high_precision, align 1
  br label %if.end61

if.else54:                                        ; preds = %if.end41
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %23 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data, align 8
  %tobool56.not = icmp eq ptr %24, null
  br i1 %tobool56.not, label %if.else54.if.end61thread-pre-split_crit_edge, label %if.then57

if.else54.if.end61thread-pre-split_crit_edge:     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61thread-pre-split

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %24, align 1
  %27 = ptrtoint ptr %setup to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %setup, align 4
  br label %if.end61thread-pre-split

if.end61thread-pre-split:                         ; preds = %if.then57, %if.else54.if.end61thread-pre-split_crit_edge
  %28 = ptrtoint ptr %high_precision to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %high_precision, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.end61thread-pre-split, %if.then46
  %29 = phi i8 [ %.pr, %if.end61thread-pre-split ], [ %frombool53, %if.then46 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %setup, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool6.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool6.not.i, ptr @shtc1_cmd_measure_nonblocking_hpm, ptr @shtc1_cmd_measure_blocking_hpm
  %32 = ptrtoint ptr %chip44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chip44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  %cond3.i = select i1 %cmp.i, i32 14400, i32 12100
  br label %shtc1_select_command.exit

if.else.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %cond7.i = select i1 %tobool6.not.i, ptr @shtc1_cmd_measure_nonblocking_lpm, ptr @shtc1_cmd_measure_blocking_lpm
  %34 = ptrtoint ptr %chip44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp10.i = icmp eq i32 %35, 0
  %cond11.i = select i1 %cmp10.i, i32 1000, i32 800
  br label %shtc1_select_command.exit

shtc1_select_command.exit:                        ; preds = %if.else.i, %if.then.i
  %cond.sink.i = phi ptr [ %cond7.i, %if.else.i ], [ %cond.i, %if.then.i ]
  %cond3.sink.i = phi i32 [ %cond11.i, %if.else.i ], [ %cond3.i, %if.then.i ]
  %36 = getelementptr inbounds %struct.shtc1_data, ptr %call.i129, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cond.sink.i, ptr %36, align 4
  %38 = getelementptr inbounds %struct.shtc1_data, ptr %call.i129, i32 0, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond3.sink.i, ptr %38, align 4
  %update_lock = getelementptr inbounds %struct.shtc1_data, ptr %call.i129, i32 0, i32 1
  call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @shtc1_probe.__key) #6
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call66 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i129, ptr noundef nonnull @shtc1_groups) #6
  %cmp.i133 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.body69, label %shtc1_select_command.exit.if.end81_crit_edge

shtc1_select_command.exit.if.end81_crit_edge:     ; preds = %shtc1_select_command.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.body69:                                        ; preds = %shtc1_select_command.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shtc1_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@shtc1_probe, %if.end81)) #6
          to label %if.then77 [label %if.end81], !srcloc !95

if.then77:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shtc1_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.21) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %do.body69, %shtc1_select_command.exit.if.end81_crit_edge
  %40 = ptrtoint ptr %call66 to i32
  %spec.select.i = select i1 %cmp.i133, i32 %40, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end37.cleanup_crit_edge, %do.end35, %do.end26, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end7 ], [ -19, %do.end15 ], [ -19, %do.end26 ], [ %spec.select.i, %if.end81 ], [ -19, %do.end35 ], [ -19, %do.end ], [ -12, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id_reg_buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @shtc1_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %temperature = getelementptr inbounds %struct.shtc1_data, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temperature, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @shtc1_update_client(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #6
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %update_lock = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 1
  %5 = call ptr @memset(ptr %buf, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %last_updated = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated, align 4
  %add = add i32 %7, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.out.thread_crit_edge

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %command.i = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %command.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %12, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %call.i.i) #9
  br label %cond.false

if.end.i:                                         ; preds = %if.then
  %setup.i = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %setup.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %setup.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nonblocking_wait_time.i = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %nonblocking_wait_time.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nonblocking_wait_time.i, align 4
  %add.i = add i32 %16, 1000
  tail call void @usleep_range_state(i32 noundef %16, i32 noundef %add.i, i32 noundef 2) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %call.i2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf, i32 noundef 6, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i2.i)
  %cmp6.not.i = icmp eq i32 %call.i2.i, 6
  br i1 %cmp6.not.i, label %if.end, label %do.end10.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.27, i32 noundef %call.i2.i) #9
  br label %cond.false

if.end:                                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf, align 2
  %conv = zext i16 %18 to i32
  %mul = mul nuw nsw i32 %conv, 21875
  %19 = lshr i32 %mul, 13
  %sub7 = add nsw i32 %19, -45000
  %temperature = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub7, ptr %temperature, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %4, align 2
  %conv10 = zext i16 %22 to i32
  %mul11 = mul nuw nsw i32 %conv10, 12500
  %23 = lshr i32 %mul11, 13
  %humidity = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %humidity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_updated, align 4
  %valid14 = getelementptr inbounds %struct.shtc1_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %valid14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %valid14, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end, %lor.lhs.false.out.thread_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cond.end

cond.false:                                       ; preds = %do.end10.i, %do.end.i
  %call.i2.i.sink39 = phi i32 [ %call.i2.i, %do.end10.i ], [ %call.i.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.sink39)
  %cmp12.i = icmp slt i32 %call.i2.i.sink39, 0
  %spec.select38 = select i1 %cmp12.i, i32 %call.i2.i.sink39, i32 -5
  call void @mutex_unlock(ptr noundef %update_lock) #6
  %28 = inttoptr i32 %spec.select38 to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %out.thread
  %cond = phi ptr [ %28, %cond.false ], [ %1, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #6
  ret ptr %cond
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @humidity1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @shtc1_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %humidity = getelementptr inbounds %struct.shtc1_data, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %humidity, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_shtc1__289_286_shtc1_i2c_driver_init6, !1, !"__initcall__kmod_shtc1__289_286_shtc1_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/shtc1.c", i32 286, i32 1}
!2 = !{ptr @__exitcall_shtc1_i2c_driver_exit, !1, !"__exitcall_shtc1_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/shtc1.c", i32 288, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/shtc1.c", i32 289, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/shtc1.c", i32 290, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/shtc1.c", i32 279, i32 11}
!12 = !{ptr @shtc1_i2c_driver, !13, !"shtc1_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/shtc1.c", i32 277, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/shtc1.c", i32 204, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @shtc1_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @shtc1_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/shtc1.c", i32 210, i32 3}
!24 = !{ptr @shtc1_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @shtc1_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/shtc1.c", i32 215, i32 3}
!28 = !{ptr @shtc1_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @shtc1_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/shtc1.c", i32 222, i32 4}
!32 = !{ptr @shtc1_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @shtc1_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/shtc1.c", i32 226, i32 3}
!36 = !{ptr @shtc1_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @shtc1_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/shtc1.c", i32 240, i32 55}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/shtc1.c", i32 241, i32 59}
!42 = !{ptr @shtc1_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/shtc1.c", i32 248, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/shtc1.c", i32 255, i32 3}
!47 = !{ptr @shtc1_probe.__UNIQUE_ID_ddebug288, !46, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!48 = !{ptr @shtc1_cmd_read_id_reg, !49, !"shtc1_cmd_read_id_reg", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/shtc1.c", i32 28, i32 28}
!50 = !{ptr @shtc1_cmd_measure_blocking_hpm, !51, !"shtc1_cmd_measure_blocking_hpm", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/shtc1.c", i32 20, i32 28}
!52 = !{ptr @shtc1_cmd_measure_nonblocking_hpm, !53, !"shtc1_cmd_measure_nonblocking_hpm", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/shtc1.c", i32 21, i32 28}
!54 = !{ptr @shtc1_cmd_measure_blocking_lpm, !55, !"shtc1_cmd_measure_blocking_lpm", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/shtc1.c", i32 24, i32 28}
!56 = !{ptr @shtc1_cmd_measure_nonblocking_lpm, !57, !"shtc1_cmd_measure_nonblocking_lpm", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/shtc1.c", i32 25, i32 28}
!58 = !{ptr @shtc1_groups, !59, !"shtc1_groups", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/shtc1.c", i32 168, i32 1}
!60 = !{ptr @shtc1_group, !59, !"shtc1_group", i1 false, i1 false}
!61 = !{ptr @shtc1_attrs, !62, !"shtc1_attrs", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/shtc1.c", i32 162, i32 26}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/shtc1.c", i32 159, i32 8}
!65 = !{ptr @dev_attr_temp1_input, !64, !"dev_attr_temp1_input", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/shtc1.c", i32 146, i32 22}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/shtc1.c", i32 77, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @shtc1_update_values._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @shtc1_update_values._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/shtc1.c", i32 93, i32 3}
!75 = !{ptr @shtc1_update_values._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @shtc1_update_values._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/shtc1.c", i32 160, i32 8}
!79 = !{ptr @dev_attr_humidity1_input, !78, !"dev_attr_humidity1_input", i1 false, i1 false}
!80 = !{ptr @shtc1_of_match, !81, !"shtc1_of_match", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/shtc1.c", i32 269, i32 34}
!82 = !{ptr @shtc1_id, !83, !"shtc1_id", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/shtc1.c", i32 261, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
!95 = !{i64 2148959395, i64 2148959400, i64 2148959413, i64 2148959457, i64 2148959491, i64 2148959512}
