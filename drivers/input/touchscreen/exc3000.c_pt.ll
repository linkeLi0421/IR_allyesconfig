; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/exc3000.c_pt.bc'
source_filename = "../drivers/input/touchscreen/exc3000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.eeti_dev_info = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.exc3000_data = type { ptr, ptr, ptr, %struct.touchscreen_properties, ptr, %struct.timer_list, [132 x i8], %struct.completion, %struct.mutex }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_exc3000__291_455_exc3000_driver_init6 = internal global ptr @exc3000_driver_init, section ".initcall6.init", align 4
@exc3000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @exc3000_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exc3000_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @exc3000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_exc3000_driver_exit = internal global ptr @exc3000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [43 x i8] c"exc3000.author=Ahmet Inan <inan@distec.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [80 x i8] c"exc3000.description=I2C connected EETI EXC3000 multiple touch controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"exc3000.file=drivers/input/touchscreen/exc3000\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"exc3000.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"exc3000\00", [24 x i8] zeroinitializer }, align 32
@exc3000_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eeti,exc3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exc3000_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eeti,exc80h60\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @exc3000_info, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eeti,exc80h84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @exc3000_info, i64 16) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@exc3000_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"exc3000\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"exc80h60\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"exc80h84\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@exc3000_info = internal global { [3 x %struct.eeti_dev_info], [40 x i8] } { [3 x %struct.eeti_dev_info] [%struct.eeti_dev_info { ptr @.str.11, i32 4095 }, %struct.eeti_dev_info { ptr @.str.12, i32 16383 }, %struct.eeti_dev_info { ptr @.str.13, i32 16383 }], [40 x i8] zeroinitializer }, align 32
@exc3000_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&data->timer)\00", [17 x i8] zeroinitializer }, align 32
@exc3000_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->query_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@exc3000_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exc3000_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/exc3000.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TS Model: %s\00", [19 x i8] zeroinitializer }, align 32
@exc3000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 413, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Retry %d get EETI EXC3000 model: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exc3000_probe._entry_ptr = internal global ptr @exc3000_probe._entry, section ".printk_index", align 4
@exc3000_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EETI EXC3000 Touch Screen\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EETI EXC80H60 Touch Screen\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EETI EXC80H84 Touch Screen\00", [37 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"'\00", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sysfs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_fw_version, ptr @dev_attr_model, ptr @dev_attr_type, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @model_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 6, i64 24]
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"exc3000_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 446, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 448, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"exc3000_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 437, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"exc3000_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 428, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"exc3000_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 56, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 348, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 350, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 352, i32 54 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 408, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 412, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [24 x i8] c"exc3000_attribute_group\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 327, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 58, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 62, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 66, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 87, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 117, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"sysfs_attrs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 320, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"dev_attr_model\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 286, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 278, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 284, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 302, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [39 x i8] c"../drivers/input/touchscreen/exc3000.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 318, i32 8 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_exc3000_driver_exit, ptr @__initcall__kmod_exc3000__291_455_exc3000_driver_init6, ptr @exc3000_driver_exit, ptr @exc3000_probe._entry, ptr @exc3000_probe._entry_ptr, ptr @exc3000_driver, ptr @.str, ptr @exc3000_of_match, ptr @exc3000_id, ptr @exc3000_info, ptr @exc3000_probe.__key, ptr @.str.1, ptr @exc3000_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @exc3000_attribute_group, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @sysfs_attrs, ptr @dev_attr_fw_version, ptr @dev_attr_model, ptr @dev_attr_type, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exc3000_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exc3000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @exc3000_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exc3000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @exc3000_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exc3000_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i = alloca [68 x i8], align 1
  %response = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 356, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @device_get_match_data(ptr noundef %dev) #7
  %info = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %info, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call ptr @i2c_match_id(ptr noundef nonnull @exc3000_id, ptr noundef %client) #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call7, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.eeti_dev_info], ptr @exc3000_info, i32 0, i32 %3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %info, align 4
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end.do.body_crit_edge
  %timer = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @exc3000_timer, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @exc3000_probe.__key) #7
  %wait_event = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %wait_event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait_event, align 4
  %wait.i = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #7
  %query_lock = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %query_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @exc3000_probe.__key.2) #7
  %call14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef 7) #7
  %reset = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call14 to i32
  br label %cleanup79

if.end20:                                         ; preds = %do.body
  %tobool22.not = icmp eq ptr %call14, null
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 10) #7
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %call27 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.cleanup79_crit_edge, label %if.end30

if.end25.cleanup79_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end30:                                         ; preds = %if.end25
  %input31 = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %input31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call27, ptr %input31, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 40, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call27, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 3
  %17 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 24, ptr %id, align 4
  %18 = load ptr, ptr %info, align 4
  %max_xy35 = getelementptr inbounds %struct.eeti_dev_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %max_xy35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_xy35, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call27, i32 noundef 53, i32 noundef 0, i32 noundef %20, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call27, i32 noundef 54, i32 noundef 0, i32 noundef %20, i32 noundef 0, i32 noundef 0) #7
  %prop = getelementptr inbounds %struct.exc3000_data, ptr %call.i, i32 0, i32 3
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call27, i1 noundef zeroext true, ptr noundef %prop) #7
  %call36 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call27, i32 noundef 10, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end30.cleanup79_crit_edge

if.end30.cleanup79_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end39:                                         ; preds = %if.end30
  %call40 = tail call i32 @input_register_device(ptr noundef nonnull %call27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup79_crit_edge

if.end39.cleanup79_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end43:                                         ; preds = %if.end39
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %name45 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call46 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef null, ptr noundef nonnull @exc3000_interrupt, i32 noundef 8192, ptr noundef %name45, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.cond.preheader, label %if.end43.cleanup79_crit_edge

if.end43.cleanup79_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

for.cond.preheader:                               ; preds = %if.end43
  %23 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %24 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 2
  %25 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 4
  %arrayidx.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 5
  %arrayidx1.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 6
  %arrayidx11.i = getelementptr %struct.exc3000_data, ptr %call.i, i32 0, i32 6, i32 3
  %arrayidx18.i = getelementptr %struct.exc3000_data, ptr %call.i, i32 0, i32 6, i32 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %response) #7
  %26 = call ptr @memset(ptr %response, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i) #7
  %27 = call ptr @memset(ptr %23, i32 0, i32 67)
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 103, ptr %buf.i, align 1
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 66, ptr %24, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %25, align 1
  call void @mutex_lock_nested(ptr noundef %query_lock, i32 noundef 0) #7
  %31 = ptrtoint ptr %wait_event to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wait_event, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx.i, align 1
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 69, ptr %arrayidx1.i, align 1
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i139 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i139, label %for.cond.preheader.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.then3.i

for.cond.preheader.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.then3.i:                                       ; preds = %for.cond.preheader
  %call5.i = call i32 @wait_for_completion_timeout(ptr noundef %wait_event, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 1
  br i1 %cmp6.i, label %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.end9.i

if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.end9.i:                                        ; preds = %if.then3.i
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %37)
  %cmp13.i = icmp ugt i8 %37, 65
  br i1 %cmp13.i, label %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %exc3000_vendor_data_request.exit

if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

exc3000_vendor_data_request.exit.thread:          ; preds = %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, %for.cond.preheader.exc3000_vendor_data_request.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -28, %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ -110, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ %call.i.i, %for.cond.preheader.exc3000_vendor_data_request.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  br label %for.inc

exc3000_vendor_data_request.exit:                 ; preds = %if.end9.i
  %conv12.i = zext i8 %37 to i32
  %38 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i)
  call void @mutex_unlock(ptr noundef %query_lock) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp53.not = icmp eq i8 %37, 0
  br i1 %cmp53.not, label %exc3000_vendor_data_request.exit.for.inc_crit_edge, label %exc3000_vendor_data_request.exit.do.body55_crit_edge

exc3000_vendor_data_request.exit.do.body55_crit_edge: ; preds = %exc3000_vendor_data_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

exc3000_vendor_data_request.exit.for.inc_crit_edge: ; preds = %exc3000_vendor_data_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body55:                                        ; preds = %exc3000_vendor_data_request.exit.2.do.body55_crit_edge, %exc3000_vendor_data_request.exit.1.do.body55_crit_edge, %exc3000_vendor_data_request.exit.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exc3000_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exc3000_probe, %if.then60)) #7
          to label %for.end.thread [label %if.then60], !srcloc !76

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx62 = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exc3000_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %arrayidx62) #7
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then60, %do.body55
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  br label %if.end73

for.inc:                                          ; preds = %exc3000_vendor_data_request.exit.for.inc_crit_edge, %exc3000_vendor_data_request.exit.thread
  %ret.0.i143 = phi i32 [ %ret.0.i.ph, %exc3000_vendor_data_request.exit.thread ], [ 0, %exc3000_vendor_data_request.exit.for.inc_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %ret.0.i143) #10
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %response) #7
  %39 = call ptr @memset(ptr %response, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i) #7
  %40 = call ptr @memset(ptr %23, i32 0, i32 67)
  %41 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 103, ptr %buf.i, align 1
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 66, ptr %24, align 1
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %25, align 1
  call void @mutex_lock_nested(ptr noundef %query_lock, i32 noundef 0) #7
  %44 = ptrtoint ptr %wait_event to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %wait_event, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx.i, align 1
  %46 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 69, ptr %arrayidx1.i, align 1
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buf.i, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i139.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i139.1, label %for.inc.exc3000_vendor_data_request.exit.thread.1_crit_edge, label %if.then3.i.1

for.inc.exc3000_vendor_data_request.exit.thread.1_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread.1

if.then3.i.1:                                     ; preds = %for.inc
  %call5.i.1 = call i32 @wait_for_completion_timeout(ptr noundef %wait_event, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.1)
  %cmp6.i.1 = icmp slt i32 %call5.i.1, 1
  br i1 %cmp6.i.1, label %if.then3.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge, label %if.end9.i.1

if.then3.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge: ; preds = %if.then3.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread.1

if.end9.i.1:                                      ; preds = %if.then3.i.1
  %49 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %50)
  %cmp13.i.1 = icmp ugt i8 %50, 65
  br i1 %cmp13.i.1, label %if.end9.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge, label %exc3000_vendor_data_request.exit.1

if.end9.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge: ; preds = %if.end9.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread.1

exc3000_vendor_data_request.exit.1:               ; preds = %if.end9.i.1
  %conv12.i.1 = zext i8 %50 to i32
  %51 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i.1)
  call void @mutex_unlock(ptr noundef %query_lock) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp53.not.1 = icmp eq i8 %50, 0
  br i1 %cmp53.not.1, label %exc3000_vendor_data_request.exit.1.for.inc.1_crit_edge, label %exc3000_vendor_data_request.exit.1.do.body55_crit_edge

exc3000_vendor_data_request.exit.1.do.body55_crit_edge: ; preds = %exc3000_vendor_data_request.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

exc3000_vendor_data_request.exit.1.for.inc.1_crit_edge: ; preds = %exc3000_vendor_data_request.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

exc3000_vendor_data_request.exit.thread.1:        ; preds = %if.end9.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge, %if.then3.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge, %for.inc.exc3000_vendor_data_request.exit.thread.1_crit_edge
  %ret.0.i.ph.1 = phi i32 [ -28, %if.end9.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge ], [ -110, %if.then3.i.1.exc3000_vendor_data_request.exit.thread.1_crit_edge ], [ %call.i.i.1, %for.inc.exc3000_vendor_data_request.exit.thread.1_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %exc3000_vendor_data_request.exit.thread.1, %exc3000_vendor_data_request.exit.1.for.inc.1_crit_edge
  %ret.0.i143.1 = phi i32 [ %ret.0.i.ph.1, %exc3000_vendor_data_request.exit.thread.1 ], [ 0, %exc3000_vendor_data_request.exit.1.for.inc.1_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef %ret.0.i143.1) #10
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %response) #7
  %52 = call ptr @memset(ptr %response, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i) #7
  %53 = call ptr @memset(ptr %23, i32 0, i32 67)
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 103, ptr %buf.i, align 1
  %55 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 66, ptr %24, align 1
  %56 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %25, align 1
  call void @mutex_lock_nested(ptr noundef %query_lock, i32 noundef 0) #7
  %57 = ptrtoint ptr %wait_event to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %wait_event, align 4
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %arrayidx.i, align 1
  %59 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 69, ptr %arrayidx1.i, align 1
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %61, ptr noundef nonnull %buf.i, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i139.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp.i139.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.i.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then3.i.2:                                     ; preds = %for.inc.1
  %call5.i.2 = call i32 @wait_for_completion_timeout(ptr noundef %wait_event, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.2)
  %cmp6.i.2 = icmp slt i32 %call5.i.2, 1
  br i1 %cmp6.i.2, label %if.then3.i.2.for.inc.2_crit_edge, label %if.end9.i.2

if.then3.i.2.for.inc.2_crit_edge:                 ; preds = %if.then3.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end9.i.2:                                      ; preds = %if.then3.i.2
  %62 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %63)
  %cmp13.i.2 = icmp ugt i8 %63, 65
  br i1 %cmp13.i.2, label %if.end9.i.2.for.inc.2_crit_edge, label %exc3000_vendor_data_request.exit.2

if.end9.i.2.for.inc.2_crit_edge:                  ; preds = %if.end9.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

exc3000_vendor_data_request.exit.2:               ; preds = %if.end9.i.2
  %conv12.i.2 = zext i8 %63 to i32
  %64 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i.2)
  call void @mutex_unlock(ptr noundef %query_lock) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp53.not.2 = icmp eq i8 %63, 0
  br i1 %cmp53.not.2, label %for.inc.2.thread, label %exc3000_vendor_data_request.exit.2.do.body55_crit_edge

exc3000_vendor_data_request.exit.2.do.body55_crit_edge: ; preds = %exc3000_vendor_data_request.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

for.inc.2.thread:                                 ; preds = %exc3000_vendor_data_request.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  br label %if.end73

for.inc.2:                                        ; preds = %if.end9.i.2.for.inc.2_crit_edge, %if.then3.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %ret.0.i.ph.2 = phi i32 [ -28, %if.end9.i.2.for.inc.2_crit_edge ], [ -110, %if.then3.i.2.for.inc.2_crit_edge ], [ %call.i.i.2, %for.inc.1.for.inc.2_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef %ret.0.i.ph.2) #10
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  br label %cleanup79

if.end73:                                         ; preds = %for.inc.2.thread, %for.end.thread
  %driver_data.i.i140 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %65 = ptrtoint ptr %driver_data.i.i140 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %driver_data.i.i140, align 4
  %call75 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @exc3000_attribute_group) #7
  br label %cleanup79

cleanup79:                                        ; preds = %if.end73, %for.inc.2, %if.end43.cleanup79_crit_edge, %if.end39.cleanup79_crit_edge, %if.end30.cleanup79_crit_edge, %if.end25.cleanup79_crit_edge, %if.then17, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %7, %if.then17 ], [ -12, %entry.cleanup79_crit_edge ], [ -12, %if.end25.cleanup79_crit_edge ], [ %call36, %if.end30.cleanup79_crit_edge ], [ %call40, %if.end39.cleanup79_crit_edge ], [ %call46, %if.end43.cleanup79_crit_edge ], [ %ret.0.i.ph.2, %for.inc.2 ], [ %call75, %if.end73 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exc3000_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  tail call void @input_mt_sync_frame(ptr noundef %1) #7
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exc3000_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp2.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp2.not.i, label %if.end4.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end4.i:                                        ; preds = %entry
  %call.i25.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %buf1, i32 noundef 66, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %call.i25.i)
  %cmp9.not.i = icmp eq i32 %call.i25.i, 66
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end4.i.if.then_crit_edge

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end11.i:                                       ; preds = %if.end4.i
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %buf1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16896, i16 %3)
  %cmp13.not.i = icmp eq i16 %3, 16896
  br i1 %cmp13.not.i, label %if.end, label %if.end11.i.if.then_crit_edge

if.end11.i.if.then_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end11.i.if.then_crit_edge, %if.end4.i.if.then_crit_edge, %entry.if.then_crit_edge
  %timer.i = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 10
  %call1.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #7
  br label %out

if.end:                                           ; preds = %if.end11.i
  %arrayidx = getelementptr %struct.exc3000_data, ptr %dev_id, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end.out_crit_edge [
    i8 3, label %sw.bb
    i8 6, label %if.end.sw.bb2_crit_edge
    i8 24, label %if.end.sw.bb2_crit_edge15
  ]

if.end.sw.bb2_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wait_event = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 7
  tail call void @complete(ptr noundef %wait_event) #7
  br label %out

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge15
  %input1.i = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 2
  %8 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input1.i, align 4
  %arrayidx.i = getelementptr %struct.exc3000_data, ptr %dev_id, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %12 = add i8 %11, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %12)
  %13 = icmp ult i8 %12, -10
  br i1 %13, label %sw.bb2.out_fail.i_crit_edge, label %if.end.i9

sw.bb2.out_fail.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail.i

if.end.i9:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp4.i = icmp ugt i8 %11, 5
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i9.while.body.lr.ph.i_crit_edge

if.end.i9.while.body.lr.ph.i_crit_edge:           ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.then6.i:                                       ; preds = %if.end.i9
  %add.ptr.i = getelementptr %struct.exc3000_data, ptr %dev_id, i32 0, i32 6, i32 66
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %if.then6.i.out_fail.i_crit_edge

if.then6.i.out_fail.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail.i

if.end4.i.i:                                      ; preds = %if.then6.i
  %call.i25.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef %add.ptr.i, i32 noundef 66, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %call.i25.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i25.i.i, 66
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %if.end4.i.i.out_fail.i_crit_edge

if.end4.i.i.out_fail.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail.i

if.end11.i.i:                                     ; preds = %if.end4.i.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16896, i16 %17)
  %cmp13.not.i.i = icmp eq i16 %17, 16896
  br i1 %cmp13.not.i.i, label %if.end9.i, label %if.end11.i.i.out_fail.i_crit_edge

if.end11.i.i.out_fail.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail.i

if.end9.i:                                        ; preds = %if.end11.i.i
  %arrayidx10.i = getelementptr %struct.exc3000_data, ptr %dev_id, i32 0, i32 6, i32 69
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp12.not.i = icmp eq i8 %19, 0
  br i1 %cmp12.not.i, label %if.end9.i.while.body.lr.ph.i_crit_edge, label %if.end9.i.out_fail.i_crit_edge

if.end9.i.out_fail.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail.i

if.end9.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end9.i.while.body.lr.ph.i_crit_edge, %if.end.i9.while.body.lr.ph.i_crit_edge
  %timer.i10 = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 5
  %call17.i = tail call i32 @del_timer_sync(ptr noundef %timer.i10) #7
  %prop.i = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %exc3000_report_slots.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buf.07.i = phi ptr [ %buf1, %while.body.lr.ph.i ], [ %add.ptr23.i, %exc3000_report_slots.exit.i.while.body.i_crit_edge ]
  %total_slots.06.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %sub.i, %exc3000_report_slots.exit.i.while.body.i_crit_edge ]
  %20 = tail call i32 @llvm.umin.i32(i32 %total_slots.06.i, i32 5) #7
  %add.ptr22.i = getelementptr i8, ptr %buf.07.i, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body.i
  %dec19.in.i.i = phi i32 [ %dec19.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %20, %while.body.i ]
  %buf.addr.018.i.i = phi ptr [ %add.ptr9.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr22.i, %while.body.i ]
  %dec19.i.i = add i32 %dec19.in.i.i, -1
  %21 = ptrtoint ptr %buf.addr.018.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.addr.018.i.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i.i = getelementptr i8, ptr %buf.addr.018.i.i, i32 1
  %24 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %25 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 47, i32 noundef %conv3.i.i) #7
  %call.i.i11 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %9, i32 noundef 0, i1 noundef zeroext true) #7
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.018.i.i, i32 2
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr.i.i, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  %conv5.i.i = zext i16 %28 to i32
  %add.ptr6.i.i = getelementptr i8, ptr %buf.addr.018.i.i, i32 4
  %29 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr6.i.i, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  %conv8.i.i = zext i16 %31 to i32
  tail call void @touchscreen_report_pos(ptr noundef %9, ptr noundef %prop.i, i32 noundef %conv5.i.i, i32 noundef %conv8.i.i, i1 noundef zeroext true) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add.ptr9.i.i = getelementptr i8, ptr %buf.addr.018.i.i, i32 10
  %tobool.not.i.i = icmp eq i32 %dec19.i.i, 0
  br i1 %tobool.not.i.i, label %exc3000_report_slots.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

exc3000_report_slots.exit.i:                      ; preds = %for.inc.i.i
  %sub.i = sub i32 %total_slots.06.i, %20
  %add.ptr23.i = getelementptr i8, ptr %buf.07.i, i32 66
  %cmp18.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp18.i, label %exc3000_report_slots.exit.i.while.body.i_crit_edge, label %while.end.i

exc3000_report_slots.exit.i.while.body.i_crit_edge: ; preds = %exc3000_report_slots.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %exc3000_report_slots.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_mt_sync_frame(ptr noundef %9) #7
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %out

out_fail.i:                                       ; preds = %if.end9.i.out_fail.i_crit_edge, %if.end11.i.i.out_fail.i_crit_edge, %if.end4.i.i.out_fail.i_crit_edge, %if.then6.i.out_fail.i_crit_edge, %sw.bb2.out_fail.i_crit_edge
  %timer.i.i = getelementptr inbounds %struct.exc3000_data, ptr %dev_id, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %32, 10
  %call1.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #7
  br label %out

out:                                              ; preds = %out_fail.i, %while.end.i, %sw.bb, %if.end.out_crit_edge, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %buf.i32 = alloca [68 x i8], align 1
  %buf.i = alloca [68 x i8], align 1
  %response = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %response) #7
  %2 = call ptr @memset(ptr %response, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 67)
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 103, ptr %buf.i, align 1
  %6 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 66, ptr %6, align 1
  %8 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %8, align 1
  %query_lock.i = getelementptr inbounds %struct.exc3000_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %query_lock.i, i32 noundef 0) #7
  %wait_event.i = getelementptr inbounds %struct.exc3000_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wait_event.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait_event.i, align 4
  %arrayidx.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 57, ptr %arrayidx1.i, align 1
  %.compoundliteral.sroa.2.0.arrayidx1.i.sroa_idx = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 7
  %13 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx1.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %.compoundliteral.sroa.2.0.arrayidx1.i.sroa_idx, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %buf.i, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.then3.i

entry.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.then3.i:                                       ; preds = %entry
  %call5.i = call i32 @wait_for_completion_timeout(ptr noundef %wait_event.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 1
  br i1 %cmp6.i, label %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.end9.i

if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.end9.i:                                        ; preds = %if.then3.i
  %arrayidx11.i = getelementptr %struct.exc3000_data, ptr %1, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %17)
  %cmp13.i = icmp ugt i8 %17, 65
  br i1 %cmp13.i, label %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %exc3000_vendor_data_request.exit

if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

exc3000_vendor_data_request.exit.thread:          ; preds = %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, %entry.exc3000_vendor_data_request.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -28, %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ -110, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ %call.i.i, %entry.exc3000_vendor_data_request.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  br label %cleanup

exc3000_vendor_data_request.exit:                 ; preds = %if.end9.i
  %conv12.i = zext i8 %17 to i32
  %arrayidx18.i = getelementptr %struct.exc3000_data, ptr %1, i32 0, i32 6, i32 4
  %18 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i)
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  %arrayidx = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %lor.lhs.false, label %exc3000_vendor_data_request.exit.if.then6_crit_edge

exc3000_vendor_data_request.exit.if.then6_crit_edge: ; preds = %exc3000_vendor_data_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %exc3000_vendor_data_request.exit
  %arrayidx3 = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  br i1 %tobool5.not, label %if.end12, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %exc3000_vendor_data_request.exit.if.then6_crit_edge
  %conv8 = zext i8 %20 to i32
  %arrayidx9 = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %24 to i32
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv8, i32 noundef %conv10)
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i32) #7
  %25 = getelementptr inbounds i8, ptr %buf.i32, i32 1
  %26 = call ptr @memset(ptr %25, i32 0, i32 67)
  %27 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 103, ptr %buf.i32, align 1
  %28 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i32, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 66, ptr %28, align 1
  %30 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i32, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %30, align 1
  call void @mutex_lock_nested(ptr noundef %query_lock.i, i32 noundef 0) #7
  %32 = ptrtoint ptr %wait_event.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait_event.i, align 4
  %arrayidx.i35 = getelementptr inbounds [68 x i8], ptr %buf.i32, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx.i35, align 1
  %arrayidx1.i36 = getelementptr inbounds [68 x i8], ptr %buf.i32, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx1.i36 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 68, ptr %arrayidx1.i36, align 1
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i.i37 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %buf.i32, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %cmp.i38 = icmp slt i32 %call.i.i37, 0
  br i1 %cmp.i38, label %if.end12.exc3000_vendor_data_request.exit50.thread_crit_edge, label %if.then3.i41

if.end12.exc3000_vendor_data_request.exit50.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit50.thread

if.then3.i41:                                     ; preds = %if.end12
  %call5.i39 = call i32 @wait_for_completion_timeout(ptr noundef %wait_event.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i39)
  %cmp6.i40 = icmp slt i32 %call5.i39, 1
  br i1 %cmp6.i40, label %if.then3.i41.exc3000_vendor_data_request.exit50.thread_crit_edge, label %if.end9.i44

if.then3.i41.exc3000_vendor_data_request.exit50.thread_crit_edge: ; preds = %if.then3.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit50.thread

if.end9.i44:                                      ; preds = %if.then3.i41
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %38)
  %cmp13.i43 = icmp ugt i8 %38, 65
  br i1 %cmp13.i43, label %if.end9.i44.exc3000_vendor_data_request.exit50.thread_crit_edge, label %exc3000_vendor_data_request.exit50

if.end9.i44.exc3000_vendor_data_request.exit50.thread_crit_edge: ; preds = %if.end9.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit50.thread

exc3000_vendor_data_request.exit50.thread:        ; preds = %if.end9.i44.exc3000_vendor_data_request.exit50.thread_crit_edge, %if.then3.i41.exc3000_vendor_data_request.exit50.thread_crit_edge, %if.end12.exc3000_vendor_data_request.exit50.thread_crit_edge
  %ret.0.i49.ph = phi i32 [ -28, %if.end9.i44.exc3000_vendor_data_request.exit50.thread_crit_edge ], [ -110, %if.then3.i41.exc3000_vendor_data_request.exit50.thread_crit_edge ], [ %call.i.i37, %if.end12.exc3000_vendor_data_request.exit50.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i32) #7
  br label %cleanup

exc3000_vendor_data_request.exit50:               ; preds = %if.end9.i44
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i45 = zext i8 %38 to i32
  %39 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i45)
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i32) #7
  %arrayidx22 = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 1
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %arrayidx22)
  br label %cleanup

cleanup:                                          ; preds = %exc3000_vendor_data_request.exit50, %exc3000_vendor_data_request.exit50.thread, %if.then6, %exc3000_vendor_data_request.exit.thread
  %retval.0 = phi i32 [ %call11, %if.then6 ], [ %call23, %exc3000_vendor_data_request.exit50 ], [ %ret.0.i.ph, %exc3000_vendor_data_request.exit.thread ], [ %ret.0.i49.ph, %exc3000_vendor_data_request.exit50.thread ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @model_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %buf.i = alloca [68 x i8], align 1
  %response = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %response) #7
  %2 = call ptr @memset(ptr %response, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 67)
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 103, ptr %buf.i, align 1
  %6 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 66, ptr %6, align 1
  %8 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %8, align 1
  %query_lock.i = getelementptr inbounds %struct.exc3000_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %query_lock.i, i32 noundef 0) #7
  %wait_event.i = getelementptr inbounds %struct.exc3000_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wait_event.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait_event.i, align 4
  %arrayidx.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 69, ptr %arrayidx1.i, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf.i, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.then3.i

entry.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.then3.i:                                       ; preds = %entry
  %call5.i = call i32 @wait_for_completion_timeout(ptr noundef %wait_event.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 1
  br i1 %cmp6.i, label %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.end9.i

if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.end9.i:                                        ; preds = %if.then3.i
  %arrayidx11.i = getelementptr %struct.exc3000_data, ptr %1, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %16)
  %cmp13.i = icmp ugt i8 %16, 65
  br i1 %cmp13.i, label %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %exc3000_vendor_data_request.exit

if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

exc3000_vendor_data_request.exit.thread:          ; preds = %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, %entry.exc3000_vendor_data_request.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -28, %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ -110, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ %call.i.i, %entry.exc3000_vendor_data_request.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  br label %cleanup

exc3000_vendor_data_request.exit:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i = zext i8 %16 to i32
  %arrayidx18.i = getelementptr %struct.exc3000_data, ptr %1, i32 0, i32 6, i32 4
  %17 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i)
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  %arrayidx = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %exc3000_vendor_data_request.exit, %exc3000_vendor_data_request.exit.thread
  %retval.0 = phi i32 [ %call3, %exc3000_vendor_data_request.exit ], [ %ret.0.i.ph, %exc3000_vendor_data_request.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %buf.i = alloca [68 x i8], align 1
  %response = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %response) #7
  %2 = call ptr @memset(ptr %response, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 67)
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 103, ptr %buf.i, align 1
  %6 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 66, ptr %6, align 1
  %8 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [63 x i8] }>, ptr %buf.i, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %8, align 1
  %query_lock.i = getelementptr inbounds %struct.exc3000_data, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %query_lock.i, i32 noundef 0) #7
  %wait_event.i = getelementptr inbounds %struct.exc3000_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wait_event.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait_event.i, align 4
  %arrayidx.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr inbounds [68 x i8], ptr %buf.i, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 70, ptr %arrayidx1.i, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf.i, i32 noundef 68, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.then3.i

entry.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.then3.i:                                       ; preds = %entry
  %call5.i = call i32 @wait_for_completion_timeout(ptr noundef %wait_event.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 1
  br i1 %cmp6.i, label %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %if.end9.i

if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

if.end9.i:                                        ; preds = %if.then3.i
  %arrayidx11.i = getelementptr %struct.exc3000_data, ptr %1, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %16)
  %cmp13.i = icmp ugt i8 %16, 65
  br i1 %cmp13.i, label %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, label %exc3000_vendor_data_request.exit

if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exc3000_vendor_data_request.exit.thread

exc3000_vendor_data_request.exit.thread:          ; preds = %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge, %entry.exc3000_vendor_data_request.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -28, %if.end9.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ -110, %if.then3.i.exc3000_vendor_data_request.exit.thread_crit_edge ], [ %call.i.i, %entry.exc3000_vendor_data_request.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  br label %cleanup

exc3000_vendor_data_request.exit:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i = zext i8 %16 to i32
  %arrayidx18.i = getelementptr %struct.exc3000_data, ptr %1, i32 0, i32 6, i32 4
  %17 = call ptr @memcpy(ptr %response, ptr %arrayidx18.i, i32 %conv12.i)
  call void @mutex_unlock(ptr noundef %query_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i) #7
  %arrayidx = getelementptr inbounds [66 x i8], ptr %response, i32 0, i32 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %exc3000_vendor_data_request.exit, %exc3000_vendor_data_request.exit.thread
  %retval.0 = phi i32 [ %call3, %exc3000_vendor_data_request.exit ], [ %ret.0.i.ph, %exc3000_vendor_data_request.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !60, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_exc3000__291_455_exc3000_driver_init6, !1, !"__initcall__kmod_exc3000__291_455_exc3000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/exc3000.c", i32 455, i32 1}
!2 = !{ptr @__exitcall_exc3000_driver_exit, !1, !"__exitcall_exc3000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/exc3000.c", i32 457, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/exc3000.c", i32 458, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/exc3000.c", i32 459, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/exc3000.c", i32 448, i32 11}
!12 = !{ptr @exc3000_driver, !13, !"exc3000_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/exc3000.c", i32 446, i32 26}
!14 = !{ptr @exc3000_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/exc3000.c", i32 348, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @exc3000_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/exc3000.c", i32 350, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/exc3000.c", i32 352, i32 54}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/exc3000.c", i32 408, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @exc3000_probe.__UNIQUE_ID_ddebug290, !23, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/exc3000.c", i32 412, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @exc3000_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @exc3000_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/exc3000.c", i32 58, i32 11}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/exc3000.c", i32 62, i32 11}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/exc3000.c", i32 66, i32 11}
!39 = !{ptr @exc3000_info, !40, !"exc3000_info", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/exc3000.c", i32 56, i32 29}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/exc3000.c", i32 117, i32 32}
!46 = !{ptr @exc3000_attribute_group, !47, !"exc3000_attribute_group", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/exc3000.c", i32 327, i32 31}
!48 = !{ptr @sysfs_attrs, !49, !"sysfs_attrs", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/exc3000.c", i32 320, i32 26}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/exc3000.c", i32 286, i32 8}
!52 = !{ptr @dev_attr_fw_version, !51, !"dev_attr_fw_version", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/exc3000.c", i32 278, i32 23}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/exc3000.c", i32 284, i32 22}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/exc3000.c", i32 302, i32 8}
!59 = !{ptr @dev_attr_model, !58, !"dev_attr_model", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/exc3000.c", i32 318, i32 8}
!62 = !{ptr @dev_attr_type, !61, !"dev_attr_type", i1 false, i1 false}
!63 = !{ptr @exc3000_of_match, !64, !"exc3000_of_match", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/exc3000.c", i32 437, i32 34}
!65 = !{ptr @exc3000_id, !66, !"exc3000_id", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/exc3000.c", i32 428, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148765597, i64 2148765602, i64 2148765615, i64 2148765659, i64 2148765693, i64 2148765714}
