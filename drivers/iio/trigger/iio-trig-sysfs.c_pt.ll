; ModuleID = '/llk/IR_all_yes/drivers/iio/trigger/iio-trig-sysfs.c_pt.bc'
source_filename = "../drivers/iio/trigger/iio-trig-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_sysfs_trig = type { ptr, %struct.irq_work, i32, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_iio_trig_sysfs__208_210_iio_sysfs_trig_init6 = internal global ptr @iio_sysfs_trig_init, section ".initcall6.init", align 4
@iio_sysfs_trig_dev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @iio_bus_type, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @iio_sysfs_trig_groups, ptr @iio_trigger_sysfs_release, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@__exitcall_iio_sysfs_trig_exit = internal global ptr @iio_sysfs_trig_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author209 = internal constant [71 x i8] c"iio_trig_sysfs.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description210 = internal constant [69 x i8] c"iio_trig_sysfs.description=Sysfs based trigger for the iio subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file211 = internal constant [55 x i8] c"iio_trig_sysfs.file=drivers/iio/trigger/iio-trig-sysfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [30 x i8] c"iio_trig_sysfs.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [45 x i8] c"iio_trig_sysfs.alias=platform:iio-trig-sysfs\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iio_sysfs_trigger\00", [46 x i8] zeroinitializer }, align 32
@iio_bus_type = external dso_local global %struct.bus_type, align 4
@iio_sysfs_trig_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_sysfs_trig_group, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_sysfs_trig_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iio_sysfs_trig_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iio_sysfs_trig_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_add_trigger, ptr @dev_attr_remove_trigger, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_add_trigger = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_sysfs_trig_add }, [36 x i8] zeroinitializer }, align 32
@dev_attr_remove_trigger = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_sysfs_trig_remove }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_trigger\00", [20 x i8] zeroinitializer }, align 32
@iio_sysfs_trig_list_mut = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iio_sysfs_trig_list_mut, i64 52), ptr getelementptr (i8, ptr @iio_sysfs_trig_list_mut, i64 52) }, ptr @iio_sysfs_trig_list_mut, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@iio_sysfs_trig_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @iio_sysfs_trig_list, ptr @iio_sysfs_trig_list }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysfstrig%d\00", [20 x i8] zeroinitializer }, align 32
@iio_sysfs_trigger_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_sysfs_trigger_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iio_sysfs_trig_list_mut.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio_sysfs_trig_list_mut\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iio_sysfs_trigger_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iio_sysfs_trigger_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iio_sysfs_trigger_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_trigger_now, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_trigger_now = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_sysfs_trigger_poll }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trigger_now\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"remove_trigger\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"iio_sysfs_trig_dev\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 86, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 207, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"iio_sysfs_trig_groups\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 75, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"iio_sysfs_trig_group\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 71, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"iio_sysfs_trig_attrs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 65, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"dev_attr_add_trigger\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"dev_attr_remove_trigger\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 43, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"iio_sysfs_trig_list_mut\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"iio_sysfs_trig_list\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 23, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 149, i32 51 }
@___asan_gen_.40 = private unnamed_addr constant [30 x i8] c"iio_sysfs_trigger_attr_groups\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 122, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 24, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [29 x i8] c"iio_sysfs_trigger_attr_group\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"iio_sysfs_trigger_attrs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 113, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"dev_attr_trigger_now\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 111, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [40 x i8] c"../drivers/iio/trigger/iio-trig-sysfs.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 63, i32 8 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author209, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_iio_sysfs_trig_exit, ptr @__initcall__kmod_iio_trig_sysfs__208_210_iio_sysfs_trig_init6, ptr @iio_sysfs_trig_exit, ptr @iio_sysfs_trig_dev, ptr @.str, ptr @iio_sysfs_trig_groups, ptr @iio_sysfs_trig_group, ptr @iio_sysfs_trig_attrs, ptr @dev_attr_add_trigger, ptr @dev_attr_remove_trigger, ptr @.str.1, ptr @iio_sysfs_trig_list_mut, ptr @iio_sysfs_trig_list, ptr @.str.2, ptr @iio_sysfs_trigger_attr_groups, ptr @.str.3, ptr @.str.4, ptr @iio_sysfs_trigger_attr_group, ptr @iio_sysfs_trigger_attrs, ptr @dev_attr_trigger_now, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trig_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trig_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trig_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trig_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_add_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_remove_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trig_list_mut to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trig_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trigger_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trigger_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sysfs_trigger_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_now to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_sysfs_trig_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_initialize(ptr noundef nonnull @iio_sysfs_trig_dev) #6
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @iio_sysfs_trig_dev, ptr noundef nonnull @.str) #6
  %call1 = tail call i32 @device_add(ptr noundef nonnull @iio_sysfs_trig_dev) #6
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_sysfs_trig_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_unregister(ptr noundef nonnull @iio_sysfs_trig_dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iio_trigger_sysfs_release(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_sysfs_trig_add(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #6
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !55
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %input) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @iio_sysfs_trig_list_mut, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @iio_sysfs_trig_list, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @iio_sysfs_trig_list
  br i1 %cmp.not.i, label %if.end8.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr i8, ptr %.pn.i, i32 -4
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %5, %2
  br i1 %cmp2.i, label %for.body.i.cleanup.sink.split_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #9
  %cmp9.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp9.i, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.end11.i

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end11.i:                                       ; preds = %if.end8.i
  %id12.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %id12.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %2, ptr %id12.i, align 4
  %call13.i = call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef nonnull @iio_sysfs_trig_dev, ptr noundef nonnull @.str.2, i32 noundef %2) #6
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13.i, ptr %call7.i.i, align 8
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.end11.i.free_t.i_crit_edge, label %if.end17.i

if.end11.i.free_t.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_t.i

if.end17.i:                                       ; preds = %if.end11.i
  %groups.i = getelementptr inbounds %struct.iio_trigger, ptr %call13.i, i32 0, i32 4, i32 34
  %9 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @iio_sysfs_trigger_attr_groups, ptr %groups.i, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %11, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %work.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %work.i, align 4
  %.compoundliteral.sroa.2.0.work.sroa_idx.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0.work.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %.compoundliteral.sroa.2.0.work.sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0.work.sroa_idx.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0.work.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @iio_sysfs_trigger_work, ptr %.compoundliteral.sroa.3.0.work.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.work.sroa_idx.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0.work.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %.compoundliteral.sroa.4.0.work.sroa_idx.i, align 8
  %17 = load ptr, ptr %call7.i.i, align 8
  %call21.i = call i32 @__iio_trigger_register(ptr noundef %17, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %out2.i

if.end24.i:                                       ; preds = %if.end17.i
  %l25.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 3
  %18 = load ptr, ptr @iio_sysfs_trig_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %l25.i, ptr noundef nonnull @iio_sysfs_trig_list, ptr noundef %18) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.i._crit_edge

if.end24.i._crit_edge:                            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %l25.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %l25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %l25.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.iio_sysfs_trig, ptr %call7.i.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iio_sysfs_trig_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %l25.i, ptr @iio_sysfs_trig_list, align 4
  br label %24

out2.i:                                           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  call void @iio_trigger_free(ptr noundef %23) #6
  br label %free_t.i

free_t.i:                                         ; preds = %out2.i, %if.end11.i.free_t.i_crit_edge
  %ret.0.i = phi i32 [ %call21.i, %out2.i ], [ -12, %if.end11.i.free_t.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup.sink.split

24:                                               ; preds = %if.end.i.i.i, %if.end24.i._crit_edge
  call void @__module_get(ptr noundef null) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %24, %free_t.i, %if.end8.i.cleanup.sink.split_crit_edge, %for.body.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %len, %24 ], [ -12, %if.end8.i.cleanup.sink.split_crit_edge ], [ %ret.0.i, %free_t.i ], [ -22, %for.body.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @iio_sysfs_trig_list_mut) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_sysfs_trigger_work(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @iio_trigger_poll(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_sysfs_trigger_poll(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.iio_sysfs_trig, ptr %1, i32 0, i32 1
  %call2 = tail call zeroext i1 @irq_work_queue(ptr noundef %work) #6
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_sysfs_trig_remove(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #6
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !55
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %input) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @iio_sysfs_trig_list_mut, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @iio_sysfs_trig_list, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @iio_sysfs_trig_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %for.body.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr i8, ptr %.pn.i, i32 -4
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %5, %2
  br i1 %cmp2.i, label %if.end8.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end8.i:                                        ; preds = %for.body.i
  %t.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %6 = ptrtoint ptr %t.0.le.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t.0.le.i, align 4
  call void @iio_trigger_unregister(ptr noundef %7) #6
  %8 = ptrtoint ptr %t.0.le.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t.0.le.i, align 4
  call void @iio_trigger_free(ptr noundef %9) #6
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i._crit_edge

if.end8.i._crit_edge:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %16

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %16

16:                                               ; preds = %if.end.i.i.i, %if.end8.i._crit_edge
  %17 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %t.0.le.i) #6
  call void @module_put(ptr noundef null) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %16, %for.cond.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %len, %16 ], [ -22, %for.cond.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @iio_sysfs_trig_list_mut) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_iio_trig_sysfs__208_210_iio_sysfs_trig_init6, !1, !"__initcall__kmod_iio_trig_sysfs__208_210_iio_sysfs_trig_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 210, i32 1}
!2 = !{ptr @__exitcall_iio_sysfs_trig_exit, !3, !"__exitcall_iio_sysfs_trig_exit", i1 false, i1 false}
!3 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 216, i32 1}
!4 = !{ptr @__UNIQUE_ID_author209, !5, !"__UNIQUE_ID_author209", i1 false, i1 false}
!5 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 218, i32 1}
!6 = !{ptr @__UNIQUE_ID_description210, !7, !"__UNIQUE_ID_description210", i1 false, i1 false}
!7 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 219, i32 1}
!8 = !{ptr @__UNIQUE_ID_file211, !9, !"__UNIQUE_ID_file211", i1 false, i1 false}
!9 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 220, i32 1}
!10 = !{ptr @__UNIQUE_ID_license212, !9, !"__UNIQUE_ID_license212", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias213, !12, !"__UNIQUE_ID_alias213", i1 false, i1 false}
!12 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 221, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 207, i32 36}
!15 = !{ptr @iio_sysfs_trig_dev, !16, !"iio_sysfs_trig_dev", i1 false, i1 false}
!16 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 86, i32 22}
!17 = !{ptr @iio_sysfs_trig_groups, !18, !"iio_sysfs_trig_groups", i1 false, i1 false}
!18 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 75, i32 38}
!19 = !{ptr @iio_sysfs_trig_group, !20, !"iio_sysfs_trig_group", i1 false, i1 false}
!20 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 71, i32 37}
!21 = !{ptr @iio_sysfs_trig_attrs, !22, !"iio_sysfs_trig_attrs", i1 false, i1 false}
!22 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 65, i32 26}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 43, i32 8}
!25 = !{ptr @dev_attr_add_trigger, !24, !"dev_attr_add_trigger", i1 false, i1 false}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 149, i32 51}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 24, i32 8}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @iio_sysfs_trig_list_mut, !29, !"iio_sysfs_trig_list_mut", i1 false, i1 false}
!32 = !{ptr @iio_sysfs_trig_list, !33, !"iio_sysfs_trig_list", i1 false, i1 false}
!33 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 23, i32 8}
!34 = !{ptr @iio_sysfs_trigger_attr_groups, !35, !"iio_sysfs_trigger_attr_groups", i1 false, i1 false}
!35 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 122, i32 38}
!36 = !{ptr @iio_sysfs_trigger_attr_group, !37, !"iio_sysfs_trigger_attr_group", i1 false, i1 false}
!37 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 118, i32 37}
!38 = !{ptr @iio_sysfs_trigger_attrs, !39, !"iio_sysfs_trigger_attrs", i1 false, i1 false}
!39 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 113, i32 26}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 111, i32 8}
!42 = !{ptr @dev_attr_trigger_now, !41, !"dev_attr_trigger_now", i1 false, i1 false}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/trigger/iio-trig-sysfs.c", i32 63, i32 8}
!45 = !{ptr @dev_attr_remove_trigger, !44, !"dev_attr_remove_trigger", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
