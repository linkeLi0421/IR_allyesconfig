; ModuleID = '/llk/IR_all_yes/drivers/misc/isl29003.c_pt.bc'
source_filename = "../drivers/misc/isl29003.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isl29003_data = type { ptr, %struct.mutex, [4 x i8], i8 }

@__initcall__kmod_isl29003__288_469_isl29003_driver_init6 = internal global ptr @isl29003_driver_init, section ".initcall6.init", align 4
@isl29003_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @isl29003_probe, ptr @isl29003_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isl29003_pm_ops, ptr null, ptr null }, ptr @isl29003_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl29003_driver_exit = internal global ptr @isl29003_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [46 x i8] c"isl29003.author=Daniel Mack <daniel@caiaq.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"isl29003.description=ISL29003 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [36 x i8] c"isl29003.file=drivers/misc/isl29003\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"isl29003.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [21 x i8] c"isl29003.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isl29003\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@isl29003_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @isl29003_suspend, ptr @isl29003_resume, ptr @isl29003_suspend, ptr @isl29003_resume, ptr @isl29003_suspend, ptr @isl29003_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@isl29003_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29003\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@isl29003_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@isl29003_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29003_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl29003_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 405, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver version %s enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl29003_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/misc/isl29003.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl29003_probe._entry_ptr = internal global ptr @isl29003_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isl29003_attributes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_range, ptr @dev_attr_resolution, ptr @dev_attr_mode, ptr @dev_attr_power_state, ptr @dev_attr_lux, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl29003_show_range, ptr @isl29003_store_range }, [36 x i8] zeroinitializer }, align 32
@dev_attr_resolution = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl29003_show_resolution, ptr @isl29003_store_resolution }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl29003_show_mode, ptr @isl29003_store_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl29003_show_power_state, ptr @isl29003_store_power_state }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isl29003_show_lux, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"range\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resolution\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lux\00", [28 x i8] zeroinitializer }, align 32
@gain_range = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000, i32 4000, i32 16000, i32 64000], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"isl29003_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 459, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 474, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"isl29003_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 446, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"isl29003_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 453, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 393, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"isl29003_attr_group\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 344, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 405, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"isl29003_attributes\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 335, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"dev_attr_range\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"dev_attr_resolution\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"dev_attr_lux\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 214, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 189, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 250, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 225, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 283, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 316, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 333, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"gain_range\00", align 1
@___asan_gen_.101 = private constant [27 x i8] c"../drivers/misc/isl29003.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 56, i32 12 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_version293, ptr @__exitcall_isl29003_driver_exit, ptr @__initcall__kmod_isl29003__288_469_isl29003_driver_init6, ptr @__modver_attr, ptr @isl29003_driver_exit, ptr @isl29003_probe._entry, ptr @isl29003_probe._entry_ptr, ptr @isl29003_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @isl29003_pm_ops, ptr @isl29003_id, ptr @isl29003_probe.__key, ptr @.str.3, ptr @isl29003_attr_group, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @isl29003_attributes, ptr @dev_attr_range, ptr @dev_attr_resolution, ptr @dev_attr_mode, ptr @dev_attr_power_state, ptr @dev_attr_lux, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @gain_range], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29003_attributes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resolution to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29003_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl29003_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29003_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.isl29003_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @isl29003_probe.__key) #8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end5.exit_kfree_crit_edge, label %if.end.i

if.end5.exit_kfree_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

if.end.i:                                         ; preds = %if.end5
  %conv4.i = trunc i32 %call1.i to i8
  %arrayidx.i = getelementptr %struct.isl29003_data, ptr %10, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %arrayidx.i, align 1
  %call1.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp slt i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %if.end.i.exit_kfree_crit_edge, label %if.end.1.i

if.end.i.exit_kfree_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

if.end.1.i:                                       ; preds = %if.end.i
  %conv4.1.i = trunc i32 %call1.1.i to i8
  %arrayidx.1.i = getelementptr %struct.isl29003_data, ptr %10, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.1.i, ptr %arrayidx.1.i, align 1
  %call1.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp slt i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %if.end.1.i.exit_kfree_crit_edge, label %if.end.2.i

if.end.1.i.exit_kfree_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

if.end.2.i:                                       ; preds = %if.end.1.i
  %conv4.2.i = trunc i32 %call1.2.i to i8
  %arrayidx.2.i = getelementptr %struct.isl29003_data, ptr %10, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.2.i, ptr %arrayidx.2.i, align 1
  %call1.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %cmp2.3.i = icmp slt i32 %call1.3.i, 0
  br i1 %cmp2.3.i, label %if.end.2.i.exit_kfree_crit_edge, label %if.end.3.i

if.end.2.i.exit_kfree_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

if.end.3.i:                                       ; preds = %if.end.2.i
  %conv4.3.i = trunc i32 %call1.3.i to i8
  %arrayidx.3.i = getelementptr %struct.isl29003_data, ptr %10, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.3.i, ptr %arrayidx.3.i, align 1
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.isl29003_data, ptr %16, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i.i, i32 noundef 0) #8
  %arrayidx.i.i.i = getelementptr %struct.isl29003_data, ptr %16, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i, align 1
  %and.i.i.i = and i8 %18, -13
  %call8.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %and.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then9.i.i.i, label %if.end.3.i.isl29003_set_range.exit.i_crit_edge

if.end.3.i.isl29003_set_range.exit.i_crit_edge:   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_range.exit.i

if.then9.i.i.i:                                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and.i.i.i, ptr %arrayidx.i.i.i, align 1
  br label %isl29003_set_range.exit.i

isl29003_set_range.exit.i:                        ; preds = %if.then9.i.i.i, %if.end.3.i.isl29003_set_range.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i.i) #8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i.i21.i = getelementptr inbounds %struct.isl29003_data, ptr %21, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i21.i, i32 noundef 0) #8
  %arrayidx.i.i22.i = getelementptr %struct.isl29003_data, ptr %21, i32 0, i32 2, i32 0
  %22 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i22.i, align 1
  %and.i.i23.i = and i8 %23, -4
  %call8.i.i24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i.i23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i24.i)
  %tobool.not.i.i25.i = icmp eq i32 %call8.i.i24.i, 0
  br i1 %tobool.not.i.i25.i, label %if.then9.i.i26.i, label %isl29003_set_range.exit.i.isl29003_set_resolution.exit.i_crit_edge

isl29003_set_range.exit.i.isl29003_set_resolution.exit.i_crit_edge: ; preds = %isl29003_set_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_resolution.exit.i

if.then9.i.i26.i:                                 ; preds = %isl29003_set_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and.i.i23.i, ptr %arrayidx.i.i22.i, align 1
  br label %isl29003_set_resolution.exit.i

isl29003_set_resolution.exit.i:                   ; preds = %if.then9.i.i26.i, %isl29003_set_range.exit.i.isl29003_set_resolution.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i21.i) #8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i.i28.i = getelementptr inbounds %struct.isl29003_data, ptr %26, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i28.i, i32 noundef 0) #8
  %arrayidx.i.i29.i = getelementptr %struct.isl29003_data, ptr %26, i32 0, i32 2, i32 0
  %27 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i29.i, align 1
  %and.i.i30.i = and i8 %28, -13
  %call8.i.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i.i30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i31.i)
  %tobool.not.i.i32.i = icmp eq i32 %call8.i.i31.i, 0
  br i1 %tobool.not.i.i32.i, label %if.then9.i.i33.i, label %isl29003_set_resolution.exit.i.isl29003_set_mode.exit.i_crit_edge

isl29003_set_resolution.exit.i.isl29003_set_mode.exit.i_crit_edge: ; preds = %isl29003_set_resolution.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_mode.exit.i

if.then9.i.i33.i:                                 ; preds = %isl29003_set_resolution.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and.i.i30.i, ptr %arrayidx.i.i29.i, align 1
  br label %isl29003_set_mode.exit.i

isl29003_set_mode.exit.i:                         ; preds = %if.then9.i.i33.i, %isl29003_set_resolution.exit.i.isl29003_set_mode.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i28.i) #8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i.i35.i = getelementptr inbounds %struct.isl29003_data, ptr %31, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i35.i, i32 noundef 0) #8
  %arrayidx.i.i36.i = getelementptr %struct.isl29003_data, ptr %31, i32 0, i32 2, i32 0
  %32 = ptrtoint ptr %arrayidx.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i36.i, align 1
  %and.i.i37.i = and i8 %33, 63
  %conv6.i.i.i = or i8 %and.i.i37.i, 64
  %call8.i.i38.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %call8.i.i38.i, 0
  br i1 %tobool.not.i.i39.i, label %if.then9.i.i40.i, label %isl29003_set_mode.exit.i.if.end10_crit_edge

isl29003_set_mode.exit.i.if.end10_crit_edge:      ; preds = %isl29003_set_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9.i.i40.i:                                 ; preds = %isl29003_set_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %arrayidx.i.i36.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv6.i.i.i, ptr %arrayidx.i.i36.i, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9.i.i40.i, %isl29003_set_mode.exit.i.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i35.i) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call11 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @isl29003_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end17, label %if.end10.exit_kfree_crit_edge

if.end10.exit_kfree_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #12
  br label %cleanup

exit_kfree:                                       ; preds = %if.end10.exit_kfree_crit_edge, %if.end.2.i.exit_kfree_crit_edge, %if.end.1.i.exit_kfree_crit_edge, %if.end.i.exit_kfree_crit_edge, %if.end5.exit_kfree_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.exit_kfree_crit_edge ], [ -19, %if.end.2.i.exit_kfree_crit_edge ], [ -19, %if.end.1.i.exit_kfree_crit_edge ], [ -19, %if.end.i.exit_kfree_crit_edge ], [ -19, %if.end5.exit_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_kfree, %do.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_kfree ], [ 0, %do.end17 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @isl29003_attr_group) #8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %3, 63
  %conv6.i.i = or i8 %and.i.i, 64
  %call8.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %entry.isl29003_set_power_state.exit_crit_edge

entry.isl29003_set_power_state.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_power_state.exit

if.then9.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_power_state.exit

isl29003_set_power_state.exit:                    ; preds = %if.then9.i.i, %entry.isl29003_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #8
  %5 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_show_range(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %and3.i.i = lshr i8 %3, 2
  %4 = and i8 %and3.i.i, 3
  %shr.i.i = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %shr.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_store_range(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !67
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ugt i32 %2, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %3 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %6, -13
  %range.tr.i = trunc i32 %2 to i8
  %7 = shl nuw nsw i8 %range.tr.i, 2
  %conv6.i.i = or i8 %and.i.i, %7
  %call8.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %if.end2.isl29003_set_range.exit_crit_edge

if.end2.isl29003_set_range.exit_crit_edge:        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_range.exit

if.then9.i.i:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_range.exit

isl29003_set_range.exit:                          ; preds = %if.then9.i.i, %if.end2.isl29003_set_range.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp4 = icmp slt i32 %call8.i.i, 0
  %call3.count = select i1 %cmp4, i32 %call8.i.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %isl29003_set_range.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call3.count, %isl29003_set_range.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_show_resolution(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %and3.i.i = and i8 %3, 3
  %and.i.i = zext i8 %and3.i.i to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %and.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_store_resolution(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !67
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ugt i32 %2, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %conv.i = trunc i32 %2 to i8
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %3 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %6, -4
  %conv6.i.i = or i8 %and.i.i, %conv.i
  %call8.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %if.end2.isl29003_set_resolution.exit_crit_edge

if.end2.isl29003_set_resolution.exit_crit_edge:   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_resolution.exit

if.then9.i.i:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_resolution.exit

isl29003_set_resolution.exit:                     ; preds = %if.then9.i.i, %if.end2.isl29003_set_resolution.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp4 = icmp slt i32 %call8.i.i, 0
  %call3.count = select i1 %cmp4, i32 %call8.i.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %isl29003_set_resolution.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call3.count, %isl29003_set_resolution.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_show_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %and3.i.i = lshr i8 %3, 2
  %4 = and i8 %and3.i.i, 3
  %shr.i.i = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %shr.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_store_mode(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !67
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %3 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %6, -13
  %mode.tr.i = trunc i32 %2 to i8
  %7 = shl nuw nsw i8 %mode.tr.i, 2
  %conv6.i.i = or i8 %and.i.i, %7
  %call8.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %if.end2.isl29003_set_mode.exit_crit_edge

if.end2.isl29003_set_mode.exit_crit_edge:         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_mode.exit

if.then9.i.i:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_mode.exit

isl29003_set_mode.exit:                           ; preds = %if.then9.i.i, %if.end2.isl29003_set_mode.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp4 = icmp slt i32 %call8.i.i, 0
  %call3.count = select i1 %cmp4, i32 %call8.i.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %isl29003_set_mode.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call3.count, %isl29003_set_mode.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_show_power_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_cache.i = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_cache.i, align 4
  %4 = and i8 %3, 64
  %5 = xor i8 %4, 64
  %and.i = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %and.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_store_power_state(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !67
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %conv.i = select i1 %tobool.not.i, i8 64, i8 -128
  %driver_data.i.i.i.i = getelementptr i8, ptr %dev, i32 164
  %3 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %4, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %6, 63
  %conv6.i.i = or i8 %and.i.i, %conv.i
  %call8.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %if.end2.isl29003_set_power_state.exit_crit_edge

if.end2.isl29003_set_power_state.exit_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_power_state.exit

if.then9.i.i:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_power_state.exit

isl29003_set_power_state.exit:                    ; preds = %if.then9.i.i, %if.end2.isl29003_set_power_state.exit_crit_edge
  %count.call3 = phi i32 [ %call8.i.i, %if.end2.isl29003_set_power_state.exit_crit_edge ], [ %count, %if.then9.i.i ]
  call void @mutex_unlock(ptr noundef %lock.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %isl29003_set_power_state.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call3, %isl29003_set_power_state.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_show_lux(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_cache.i = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_cache.i, align 4
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.not = icmp eq i8 %4, 0
  br i1 %tobool.not.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %isl29003_get_adc_value.exit

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 5) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp5.i = icmp slt i32 %call3.i, 0
  br i1 %cmp5.i, label %if.end.i.isl29003_get_adc_value.exit_crit_edge, label %if.end7.i

if.end.i.isl29003_get_adc_value.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_get_adc_value.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.isl29003_data, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %and3.i.i.i = lshr i8 %8, 2
  %9 = and i8 %and3.i.i.i, 3
  %shr.i.i.i = zext i8 %9 to i32
  %arrayidx.i.i26.i = getelementptr %struct.isl29003_data, ptr %6, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i26.i, align 1
  %and3.i.i27.i = and i8 %11, 3
  %and.i.i.i = zext i8 %and3.i.i27.i to i32
  %.neg.i = mul nsw i32 %and.i.i.i, -4
  %mul.i = add nsw i32 %.neg.i, 16
  %shl.i = shl i32 %call3.i, 8
  %or.i = or i32 %shl.i, %call1.i
  %arrayidx.i = getelementptr [4 x i32], ptr @gain_range, i32 0, i32 %shr.i.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %mul10.i = mul i32 %13, %or.i
  %shr.i = ashr i32 %mul10.i, %mul.i
  br label %isl29003_get_adc_value.exit

isl29003_get_adc_value.exit:                      ; preds = %if.end7.i, %if.end.i.isl29003_get_adc_value.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %shr.i, %if.end7.i ], [ %call3.i, %if.end.i.isl29003_get_adc_value.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %isl29003_get_adc_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %isl29003_get_adc_value.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reg_cache.i = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_cache.i, align 4
  %4 = and i8 %3, 64
  %5 = xor i8 %4, 64
  %power_state_before_suspend = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %power_state_before_suspend to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %power_state_before_suspend, align 4
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %7, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %9, 63
  %conv6.i.i = or i8 %and.i.i, 64
  %call8.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %entry.isl29003_set_power_state.exit_crit_edge

entry.isl29003_set_power_state.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_power_state.exit

if.then9.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_power_state.exit

isl29003_set_power_state.exit:                    ; preds = %if.then9.i.i, %entry.isl29003_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #8
  ret i32 %call8.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29003_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %call1.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %call1.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.isl29003_data, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %call1.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %power_state_before_suspend = getelementptr inbounds %struct.isl29003_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %power_state_before_suspend to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_state_before_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %conv.i = select i1 %tobool.not.i, i8 64, i8 -128
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.isl29003_data, ptr %13, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.isl29003_data, ptr %13, i32 0, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %15, 63
  %conv6.i.i = or i8 %and.i.i, %conv.i
  %call8.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %for.cond.3.isl29003_set_power_state.exit_crit_edge

for.cond.3.isl29003_set_power_state.exit_crit_edge: ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %isl29003_set_power_state.exit

if.then9.i.i:                                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i.i, ptr %arrayidx.i.i, align 1
  br label %isl29003_set_power_state.exit

isl29003_set_power_state.exit:                    ; preds = %if.then9.i.i, %for.cond.3.isl29003_set_power_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %isl29003_set_power_state.exit, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.i.i, %isl29003_set_power_state.exit ], [ -5, %for.cond.2.cleanup_crit_edge ], [ -5, %for.cond.1.cleanup_crit_edge ], [ -5, %for.cond.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !49, !51, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_isl29003__288_469_isl29003_driver_init6, !1, !"__initcall__kmod_isl29003__288_469_isl29003_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/isl29003.c", i32 469, i32 1}
!2 = !{ptr @__exitcall_isl29003_driver_exit, !1, !"__exitcall_isl29003_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/misc/isl29003.c", i32 471, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/misc/isl29003.c", i32 472, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/misc/isl29003.c", i32 473, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version293, !11, !"__UNIQUE_ID_version293", i1 false, i1 false}
!11 = !{!"../drivers/misc/isl29003.c", i32 474, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @isl29003_driver, !17, !"isl29003_driver", i1 false, i1 false}
!17 = !{!"../drivers/misc/isl29003.c", i32 459, i32 26}
!18 = !{ptr @isl29003_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/misc/isl29003.c", i32 393, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/isl29003.c", i32 405, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @isl29003_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @isl29003_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @isl29003_attr_group, !30, !"isl29003_attr_group", i1 false, i1 false}
!30 = !{!"../drivers/misc/isl29003.c", i32 344, i32 37}
!31 = !{ptr @isl29003_attributes, !32, !"isl29003_attributes", i1 false, i1 false}
!32 = !{!"../drivers/misc/isl29003.c", i32 335, i32 26}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/isl29003.c", i32 214, i32 8}
!35 = !{ptr @dev_attr_range, !34, !"dev_attr_range", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/isl29003.c", i32 189, i32 22}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/isl29003.c", i32 250, i32 8}
!40 = !{ptr @dev_attr_resolution, !39, !"dev_attr_resolution", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/isl29003.c", i32 225, i32 22}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/isl29003.c", i32 283, i32 8}
!45 = !{ptr @dev_attr_mode, !44, !"dev_attr_mode", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/isl29003.c", i32 316, i32 8}
!48 = !{ptr @dev_attr_power_state, !47, !"dev_attr_power_state", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/isl29003.c", i32 333, i32 8}
!51 = !{ptr @dev_attr_lux, !50, !"dev_attr_lux", i1 false, i1 false}
!52 = !{ptr @gain_range, !53, !"gain_range", i1 false, i1 false}
!53 = !{!"../drivers/misc/isl29003.c", i32 56, i32 12}
!54 = !{ptr @isl29003_pm_ops, !55, !"isl29003_pm_ops", i1 false, i1 false}
!55 = !{!"../drivers/misc/isl29003.c", i32 446, i32 8}
!56 = !{ptr @isl29003_id, !57, !"isl29003_id", i1 false, i1 false}
!57 = !{!"../drivers/misc/isl29003.c", i32 453, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
