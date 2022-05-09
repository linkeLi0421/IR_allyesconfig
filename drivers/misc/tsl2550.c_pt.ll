; ModuleID = '/llk/IR_all_yes/drivers/misc/tsl2550.c_pt.bc'
source_filename = "../drivers/misc/tsl2550.c"
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.tsl2550_data = type { ptr, %struct.mutex, i8 }

@__initcall__kmod_tsl2550__288_448_tsl2550_driver_init6 = internal global ptr @tsl2550_driver_init, section ".initcall6.init", align 4
@tsl2550_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsl2550_probe, ptr @tsl2550_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsl2550_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2550_pm_ops, ptr null, ptr null }, ptr @tsl2550_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsl2550_driver_exit = internal global ptr @tsl2550_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"tsl2550.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"tsl2550.description=TSL2550 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [34 x i8] c"tsl2550.file=drivers/misc/tsl2550\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"tsl2550.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [20 x i8] c"tsl2550.version=1.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsl2550\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@tsl2550_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"taos,tsl2550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tsl2550_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tsl2550_suspend, ptr @tsl2550_resume, ptr @tsl2550_suspend, ptr @tsl2550_resume, ptr @tsl2550_suspend, ptr @tsl2550_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tsl2550_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsl2550\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tsl2550_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 360, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid operating_mode (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsl2550_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/misc/tsl2550.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsl2550_probe._entry_ptr = internal global ptr @tsl2550_probe._entry, section ".printk_index", align 4
@tsl2550_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 368, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s operating mode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsl2550_probe._entry_ptr.11 = internal global ptr @tsl2550_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"extended\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standard\00", [23 x i8] zeroinitializer }, align 32
@tsl2550_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@tsl2550_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2550_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@tsl2550_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 382, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"support ver. %s enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@tsl2550_probe._entry_ptr.17 = internal global ptr @tsl2550_probe._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@TSL2550_MODE_RANGE = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\18\1D", [30 x i8] zeroinitializer }, align 32
@tsl2550_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_power_state, ptr @dev_attr_operating_mode, ptr @dev_attr_lux1_input, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsl2550_show_power_state, ptr @tsl2550_store_power_state }, [36 x i8] zeroinitializer }, align 32
@dev_attr_operating_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsl2550_show_operating_mode, ptr @tsl2550_store_operating_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lux1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsl2550_show_lux1_input, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"operating_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lux1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@count_lut = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 30, i16 32, i16 34, i16 36, i16 38, i16 40, i16 42, i16 44, i16 46, i16 49, i16 53, i16 57, i16 61, i16 65, i16 69, i16 73, i16 77, i16 81, i16 85, i16 89, i16 93, i16 97, i16 101, i16 105, i16 109, i16 115, i16 123, i16 131, i16 139, i16 147, i16 155, i16 163, i16 171, i16 179, i16 187, i16 195, i16 203, i16 211, i16 219, i16 227, i16 235, i16 247, i16 263, i16 279, i16 295, i16 311, i16 327, i16 343, i16 359, i16 375, i16 391, i16 407, i16 423, i16 439, i16 455, i16 471, i16 487, i16 511, i16 543, i16 575, i16 607, i16 639, i16 671, i16 703, i16 735, i16 767, i16 799, i16 831, i16 863, i16 895, i16 927, i16 959, i16 991, i16 1039, i16 1103, i16 1167, i16 1231, i16 1295, i16 1359, i16 1423, i16 1487, i16 1551, i16 1615, i16 1679, i16 1743, i16 1807, i16 1871, i16 1935, i16 1999, i16 2095, i16 2223, i16 2351, i16 2479, i16 2607, i16 2735, i16 2863, i16 2991, i16 3119, i16 3247, i16 3375, i16 3503, i16 3631, i16 3759, i16 3887, i16 4015], [64 x i8] zeroinitializer }, align 32
@ratio_lut = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"ddddddddddddddcccccccccccccbbbbbbbaaaaa````___^^]]]\\\\[[ZYYXWWVUTSRQPONMKJIGEDB@><:8641/,*)((''&&%%%$$$####\22\22\22\22!!!!     \1F\1F\1F\1F\1F\1E\1E\1E\1E\1E", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"tsl2550_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 437, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 453, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"tsl2550_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 431, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"tsl2550_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 416, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"tsl2550_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 425, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 359, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 367, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 370, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"tsl2550_attr_group\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 296, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 382, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"TSL2550_MODE_RANGE\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 44, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"tsl2550_attributes\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 289, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"dev_attr_operating_mode\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"dev_attr_lux1_input\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 204, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 180, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 239, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 286, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 265, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"count_lut\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 120, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant [10 x i8] c"ratio_lut\00", align 1
@___asan_gen_.126 = private constant [26 x i8] c"../drivers/misc/tsl2550.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 100, i32 17 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_version293, ptr @__exitcall_tsl2550_driver_exit, ptr @__initcall__kmod_tsl2550__288_448_tsl2550_driver_init6, ptr @__modver_attr, ptr @tsl2550_driver_exit, ptr @tsl2550_probe._entry, ptr @tsl2550_probe._entry.15, ptr @tsl2550_probe._entry.8, ptr @tsl2550_probe._entry_ptr, ptr @tsl2550_probe._entry_ptr.11, ptr @tsl2550_probe._entry_ptr.17, ptr @tsl2550_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tsl2550_of_match, ptr @tsl2550_pm_ops, ptr @tsl2550_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @tsl2550_probe.__key, ptr @.str.14, ptr @tsl2550_attr_group, ptr @.str.16, ptr @TSL2550_MODE_RANGE, ptr @tsl2550_attributes, ptr @dev_attr_power_state, ptr @dev_attr_operating_mode, ptr @dev_attr_lux1_input, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @count_lut, ptr @ratio_lut], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSL2550_MODE_RANGE to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_operating_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lux1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @count_lut to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratio_lut to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsl2550_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsl2550_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tsl2550_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 786432
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 100) #11
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
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data, align 8
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %do.end, label %if.end12

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %12) #12
  br label %exit_kfree

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %operating_mode = getelementptr inbounds %struct.tsl2550_data, ptr %call7.i.i, i32 0, i32 2
  %14 = trunc i32 %12 to i8
  %15 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %operating_mode, align 8
  %bf.value = shl nuw nsw i8 %14, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %operating_mode, align 8
  br label %do.end20

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %operating_mode13 = getelementptr inbounds %struct.tsl2550_data, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %operating_mode13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load14 = load i8, ptr %operating_mode13, align 8
  %bf.clear15 = and i8 %bf.load14, -65
  store i8 %bf.clear15, ptr %operating_mode13, align 8
  br label %do.end20

do.end20:                                         ; preds = %if.else, %if.end12
  %operating_mode22 = getelementptr inbounds %struct.tsl2550_data, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %operating_mode22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load23 = load i8, ptr %operating_mode22, align 8
  %18 = and i8 %bf.load23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  %cond = select i1 %tobool25.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #12
  %update_lock = getelementptr inbounds %struct.tsl2550_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @tsl2550_probe.__key) #8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i67 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i67, label %do.end20.exit_kfree_crit_edge, label %if.end.i

do.end20.exit_kfree_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

if.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 3
  br i1 %cmp2.not.i, label %tsl2550_init_client.exit, label %if.end.i.exit_kfree_crit_edge

if.end.i.exit_kfree_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

tsl2550_init_client.exit:                         ; preds = %if.end.i
  %power_state.i = getelementptr inbounds %struct.tsl2550_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %power_state.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %power_state.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.clear6.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear6.i to i32
  %arrayidx.i = getelementptr [2 x i8], ptr @TSL2550_MODE_RANGE, i32 0, i32 %bf.cast.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %call7.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %23) #8
  %24 = tail call i32 @llvm.smin.i32(i32 %call7.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %tobool30.not = icmp sgt i32 %call7.i, -1
  br i1 %tobool30.not, label %if.end32, label %tsl2550_init_client.exit.exit_kfree_crit_edge

tsl2550_init_client.exit.exit_kfree_crit_edge:    ; preds = %tsl2550_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

if.end32:                                         ; preds = %tsl2550_init_client.exit
  %call34 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @tsl2550_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end40, label %if.end32.exit_kfree_crit_edge

if.end32.exit_kfree_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_kfree

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #12
  br label %cleanup

exit_kfree:                                       ; preds = %if.end32.exit_kfree_crit_edge, %tsl2550_init_client.exit.exit_kfree_crit_edge, %if.end.i.exit_kfree_crit_edge, %do.end20.exit_kfree_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %24, %tsl2550_init_client.exit.exit_kfree_crit_edge ], [ %call34, %if.end32.exit_kfree_crit_edge ], [ -19, %if.end.i.exit_kfree_crit_edge ], [ %call1.i, %do.end20.exit_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_kfree, %do.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end40 ], [ %err.0, %exit_kfree ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @tsl2550_attr_group) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 0) #8
  %power_state.i = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load4.i = load i8, ptr %power_state.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %power_state.i, align 4
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @kfree(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_show_power_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power_state = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %power_state, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %bf.cast)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_store_power_state(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp ugt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.i = icmp eq i32 %call1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext 0) #8
  br label %tsl2550_set_power_state.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext 3) #8
  %operating_mode.i = getelementptr inbounds %struct.tsl2550_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %operating_mode.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr [2 x i8], ptr @TSL2550_MODE_RANGE, i32 0, i32 %bf.cast.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %call1.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext %8) #8
  %operating_mode.i.i = getelementptr inbounds %struct.tsl2550_data, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %operating_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %operating_mode.i.i, align 4
  %bf.value.i.i = shl nuw nsw i8 %bf.clear.i, 6
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.value.i.i
  store i8 %bf.set.i.i, ptr %operating_mode.i.i, align 4
  br label %tsl2550_set_power_state.exit

tsl2550_set_power_state.exit:                     ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %power_state.i = getelementptr inbounds %struct.tsl2550_data, ptr %3, i32 0, i32 2
  %10 = trunc i32 %call1 to i8
  %11 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load4.i = load i8, ptr %power_state.i, align 4
  %bf.shl.i = shl nuw i8 %10, 7
  %bf.clear5.i = and i8 %bf.load4.i, 127
  %bf.set.i = or i8 %bf.clear5.i, %bf.shl.i
  store i8 %bf.set.i, ptr %power_state.i, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp4 = icmp slt i32 %ret.0.i, 0
  %call2.count = select i1 %cmp4, i32 %ret.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %tsl2550_set_power_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.count, %tsl2550_set_power_state.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_show_operating_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %operating_mode = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %operating_mode, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %bf.cast)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_store_operating_mode(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp ugt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp2 = icmp sgt i8 %bf.load, -1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr [2 x i8], ptr @TSL2550_MODE_RANGE, i32 0, i32 %call1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext %6) #8
  %operating_mode.i = getelementptr inbounds %struct.tsl2550_data, ptr %4, i32 0, i32 2
  %7 = trunc i32 %call1 to i8
  %8 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %operating_mode.i, align 4
  %bf.value.i = shl nuw nsw i8 %7, 6
  %bf.shl.i = and i8 %bf.value.i, 64
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %operating_mode.i, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp7 = icmp slt i32 %call1.i, 0
  %call5.count = select i1 %cmp7, i32 %call1.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call5.count, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_show_lux1_input(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power_state = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %and.i.i = and i32 %call.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %call.i.i, 127
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 -11, i32 %and3.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.end.__tsl2550_show_lux.exit_crit_edge, label %if.end.i

if.end.__tsl2550_show_lux.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__tsl2550_show_lux.exit

if.end.i:                                         ; preds = %if.end
  %call.i32.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp.i33.i = icmp slt i32 %call.i32.i, 0
  %and.i34.i = and i32 %call.i32.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i)
  %tobool.not.i35.i = icmp eq i32 %and.i34.i, 0
  %and3.i36.i = and i32 %call.i32.i, 127
  %spec.select.i37.i = select i1 %tobool.not.i35.i, i32 -11, i32 %and3.i36.i
  %retval.0.i38.i = select i1 %cmp.i33.i, i32 %call.i32.i, i32 %spec.select.i37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i38.i)
  %cmp3.i = icmp slt i32 %retval.0.i38.i, 0
  br i1 %cmp3.i, label %if.end.i.__tsl2550_show_lux.exit_crit_edge, label %if.end6.i

if.end.i.__tsl2550_show_lux.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__tsl2550_show_lux.exit

if.end6.i:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %retval.0.i.i to i8
  %arrayidx.i.i = getelementptr [128 x i16], ptr @count_lut, i32 0, i32 %retval.0.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i.i, align 2
  %arrayidx2.i.i = getelementptr [128 x i16], ptr @count_lut, i32 0, i32 %retval.0.i38.i
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.not.i.i = icmp ult i16 %6, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i39.i = icmp eq i8 %conv.i, 0
  %or.cond.i.i = or i1 %tobool.not.i39.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %if.end6.i.tsl2550_calculate_lux.exit.i_crit_edge, label %if.end17.i.i

if.end6.i.tsl2550_calculate_lux.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2550_calculate_lux.exit.i

if.end17.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i.i = zext i16 %6 to i32
  %conv.i.i = zext i16 %8 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 7
  %div.i.i = udiv i32 %mul.i.i, %conv3.i.i
  %sub.i.i = sub nsw i32 %conv3.i.i, %conv.i.i
  %idxprom11.i.i = and i32 %div.i.i, 255
  %arrayidx12.i.i = getelementptr [129 x i8], ptr @ratio_lut, i32 0, i32 %idxprom11.i.i
  %9 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %10 to i32
  %mul14.i.i = mul nsw i32 %sub.i.i, %conv13.i.i
  %div15.i.i = sdiv i32 %mul14.i.i, 256
  %11 = tail call i32 @llvm.umin.i32(i32 %div15.i.i, i32 1846) #8
  br label %tsl2550_calculate_lux.exit.i

tsl2550_calculate_lux.exit.i:                     ; preds = %if.end17.i.i, %if.end6.i.tsl2550_calculate_lux.exit.i_crit_edge
  %retval.0.i40.i = phi i32 [ 0, %if.end6.i.tsl2550_calculate_lux.exit.i_crit_edge ], [ %11, %if.end17.i.i ]
  %operating_mode.i = getelementptr inbounds %struct.tsl2550_data, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %operating_mode.i, align 4
  %13 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13.not.i = icmp eq i8 %13, 0
  %mul.i = mul nuw nsw i32 %retval.0.i40.i, 5
  %ret.0.i = select i1 %cmp13.not.i, i32 %retval.0.i40.i, i32 %mul.i
  %call17.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %ret.0.i) #8
  br label %__tsl2550_show_lux.exit

__tsl2550_show_lux.exit:                          ; preds = %tsl2550_calculate_lux.exit.i, %if.end.i.__tsl2550_show_lux.exit_crit_edge, %if.end.__tsl2550_show_lux.exit_crit_edge
  %retval.0.i = phi i32 [ %call17.i, %tsl2550_calculate_lux.exit.i ], [ %retval.0.i.i, %if.end.__tsl2550_show_lux.exit_crit_edge ], [ %retval.0.i38.i, %if.end.i.__tsl2550_show_lux.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %__tsl2550_show_lux.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__tsl2550_show_lux.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext 0) #8
  %power_state.i = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load4.i = load i8, ptr %power_state.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %power_state.i, align 4
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2550_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext 3) #8
  %operating_mode.i = getelementptr inbounds %struct.tsl2550_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %operating_mode.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i.i = getelementptr [2 x i8], ptr @TSL2550_MODE_RANGE, i32 0, i32 %bf.cast.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %call1.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext %6) #8
  %operating_mode.i.i = getelementptr inbounds %struct.tsl2550_data, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %operating_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %operating_mode.i.i, align 4
  %bf.value.i.i = shl nuw nsw i8 %bf.clear.i, 6
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.value.i.i
  store i8 %bf.set.i.i, ptr %operating_mode.i.i, align 4
  %8 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load4.i = load i8, ptr %operating_mode.i, align 4
  %bf.set.i = or i8 %bf.load4.i, -128
  store i8 %bf.set.i, ptr %operating_mode.i, align 4
  ret i32 %call2.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_tsl2550__288_448_tsl2550_driver_init6, !1, !"__initcall__kmod_tsl2550__288_448_tsl2550_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/tsl2550.c", i32 448, i32 1}
!2 = !{ptr @__exitcall_tsl2550_driver_exit, !1, !"__exitcall_tsl2550_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/misc/tsl2550.c", i32 450, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/misc/tsl2550.c", i32 451, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/misc/tsl2550.c", i32 452, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version293, !11, !"__UNIQUE_ID_version293", i1 false, i1 false}
!11 = !{!"../drivers/misc/tsl2550.c", i32 453, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @tsl2550_driver, !17, !"tsl2550_driver", i1 false, i1 false}
!17 = !{!"../drivers/misc/tsl2550.c", i32 437, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/tsl2550.c", i32 359, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tsl2550_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tsl2550_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/tsl2550.c", i32 367, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tsl2550_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tsl2550_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tsl2550_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/misc/tsl2550.c", i32 370, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/tsl2550.c", i32 382, i32 2}
!38 = !{ptr @tsl2550_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tsl2550_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @TSL2550_MODE_RANGE, !41, !"TSL2550_MODE_RANGE", i1 false, i1 false}
!41 = !{!"../drivers/misc/tsl2550.c", i32 44, i32 17}
!42 = !{ptr @tsl2550_attr_group, !43, !"tsl2550_attr_group", i1 false, i1 false}
!43 = !{!"../drivers/misc/tsl2550.c", i32 296, i32 37}
!44 = !{ptr @tsl2550_attributes, !45, !"tsl2550_attributes", i1 false, i1 false}
!45 = !{!"../drivers/misc/tsl2550.c", i32 289, i32 26}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/tsl2550.c", i32 204, i32 8}
!48 = !{ptr @dev_attr_power_state, !47, !"dev_attr_power_state", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/tsl2550.c", i32 180, i32 22}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/tsl2550.c", i32 239, i32 8}
!53 = !{ptr @dev_attr_operating_mode, !52, !"dev_attr_operating_mode", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/tsl2550.c", i32 286, i32 8}
!56 = !{ptr @dev_attr_lux1_input, !55, !"dev_attr_lux1_input", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/tsl2550.c", i32 265, i32 22}
!59 = !{ptr @count_lut, !60, !"count_lut", i1 false, i1 false}
!60 = !{!"../drivers/misc/tsl2550.c", i32 120, i32 18}
!61 = !{ptr @ratio_lut, !62, !"ratio_lut", i1 false, i1 false}
!62 = !{!"../drivers/misc/tsl2550.c", i32 100, i32 17}
!63 = !{ptr @tsl2550_of_match, !64, !"tsl2550_of_match", i1 false, i1 false}
!64 = !{!"../drivers/misc/tsl2550.c", i32 431, i32 34}
!65 = !{ptr @tsl2550_pm_ops, !66, !"tsl2550_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/misc/tsl2550.c", i32 416, i32 8}
!67 = !{ptr @tsl2550_id, !68, !"tsl2550_id", i1 false, i1 false}
!68 = !{!"../drivers/misc/tsl2550.c", i32 425, i32 35}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
