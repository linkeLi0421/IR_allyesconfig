; ModuleID = '/llk/IR_all_yes/drivers/block/rnbd/rnbd-srv-sysfs.c_pt.bc'
source_filename = "../drivers/block/rnbd/rnbd-srv-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rnbd_srv_dev = type { %struct.list_head, %struct.kobject, ptr, %struct.kref, [255 x i8], %struct.list_head, %struct.mutex, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rnbd_srv_sess_dev = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.kobject, i32, i8, i32, %struct.kref, ptr, [255 x i8], i32 }
%struct.rnbd_srv_session = type { %struct.list_head, ptr, [255 x i8], i32, %struct.bio_set, %struct.xarray, %struct.list_head, %struct.mutex, i8 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }

@dev_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rnbd_srv_dev_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_devs_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sessions\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"block_dev\00", [22 x i8] zeroinitializer }, align 32
@rnbd_srv_default_dev_session_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rnbd_srv_default_dev_sessions_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rnbd_srv_sess_dev_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rnbd_srv_sess_dev_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rnbd_srv_create_sysfs_files.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rnbd-server\00", [20 x i8] zeroinitializer }, align 32
@rnbd_dev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@rnbd_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@rnbd_srv_default_dev_sessions_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @rnbd_srv_dev_session_access_mode_attr, ptr @rnbd_srv_dev_session_ro_attr, ptr @rnbd_srv_dev_session_mapping_path_attr, ptr @rnbd_srv_dev_session_force_close_attr, ptr null], [44 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_access_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @access_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_ro_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_only_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_mapping_path_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mapping_path_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_force_close_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rnbd_srv_dev_session_force_close_show, ptr @rnbd_srv_dev_session_force_close_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"access_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_only\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mapping_path\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"force_close\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Usage: echo 1 > %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_force_close_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rnbd_server L145: <%s@%s>: %s: invalid value: '%s'\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rnbd_srv_dev_session_force_close_store\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/block/rnbd/rnbd-srv-sysfs.c\00", [60 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_force_close_store._entry_ptr = internal global ptr @rnbd_srv_dev_session_force_close_store._entry, section ".printk_index", align 4
@rnbd_srv_dev_session_force_close_store._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.16, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016rnbd_server L149: <%s@%s>: force close requested\0A\00", [44 x i8] zeroinitializer }, align 32
@rnbd_srv_dev_session_force_close_store._entry_ptr.19 = internal global ptr @rnbd_srv_dev_session_force_close_store._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"dev_ktype\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 36, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"rnbd_devs_kobj\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 25, i32 24 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 55, i32 50 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 63, i32 53 }
@___asan_gen_.32 = private unnamed_addr constant [40 x i8] c"rnbd_srv_default_dev_session_attr_group\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 168, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"rnbd_srv_sess_dev_ktype\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 189, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 199, i32 42 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 220, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"rnbd_dev_class\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 24, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 225, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"rnbd_dev\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 23, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 230, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [36 x i8] c"rnbd_srv_default_dev_sessions_attrs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 160, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant [38 x i8] c"rnbd_srv_dev_session_access_mode_attr\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 112, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"rnbd_srv_dev_session_ro_attr\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 97, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant [39 x i8] c"rnbd_srv_dev_session_mapping_path_attr\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 125, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant [38 x i8] c"rnbd_srv_dev_session_force_close_attr\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 155, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 113, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 108, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 98, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 93, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 126, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 156, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 131, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 143, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 144, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [39 x i8] c"../drivers/block/rnbd/rnbd-srv-sysfs.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 149, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @rnbd_srv_dev_session_force_close_store._entry, ptr @rnbd_srv_dev_session_force_close_store._entry.17, ptr @rnbd_srv_dev_session_force_close_store._entry_ptr, ptr @rnbd_srv_dev_session_force_close_store._entry_ptr.19, ptr @dev_ktype, ptr @rnbd_devs_kobj, ptr @.str, ptr @.str.1, ptr @rnbd_srv_default_dev_session_attr_group, ptr @rnbd_srv_sess_dev_ktype, ptr @.str.2, ptr @rnbd_srv_create_sysfs_files.__key, ptr @.str.3, ptr @rnbd_dev_class, ptr @.str.4, ptr @rnbd_dev, ptr @.str.5, ptr @rnbd_srv_default_dev_sessions_attrs, ptr @rnbd_srv_dev_session_access_mode_attr, ptr @rnbd_srv_dev_session_ro_attr, ptr @rnbd_srv_dev_session_mapping_path_attr, ptr @rnbd_srv_dev_session_force_close_attr, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_devs_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_default_dev_session_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_sess_dev_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_create_sysfs_files.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_default_dev_sessions_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_dev_session_access_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_dev_session_ro_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_dev_session_mapping_path_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_dev_session_force_close_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_dev_session_force_close_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_dev_session_force_close_store._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_srv_create_dev_sysfs(ptr noundef %dev, ptr nocapture noundef readonly %bdev, ptr noundef %dev_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_kobj = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 1
  %0 = load ptr, ptr @rnbd_devs_kobj, align 4
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %dev_kobj, ptr noundef nonnull @dev_ktype, ptr noundef %0, ptr noundef %dev_name) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %dev_kobj) #3
  %dev_sessions_kobj = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev_sessions_kobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %dev_sessions_kobj, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.free_dev_kobj_crit_edge, label %if.end7

if.end.free_dev_kobj_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %free_dev_kobj

if.end7:                                          ; preds = %if.end
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  %call9 = tail call i32 @sysfs_create_link(ptr noundef %dev_kobj, ptr noundef %bd_device, ptr noundef nonnull @.str.1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %put_sess_kobj

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

put_sess_kobj:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %dev_sessions_kobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_sessions_kobj, align 4
  tail call void @kobject_put(ptr noundef %7) #3
  br label %free_dev_kobj

free_dev_kobj:                                    ; preds = %put_sess_kobj, %if.end.free_dev_kobj_crit_edge
  %ret.0 = phi i32 [ %call9, %put_sess_kobj ], [ -12, %if.end.free_dev_kobj_crit_edge ]
  tail call void @kobject_del(ptr noundef %dev_kobj) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_dev_kobj, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %free_dev_kobj ], [ %call, %entry.cleanup.sink.split_crit_edge ]
  tail call void @kobject_put(ptr noundef %dev_kobj) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_srv_destroy_dev_sysfs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_kobj = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %dev_kobj, ptr noundef nonnull @.str.1) #3
  %dev_sessions_kobj = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev_sessions_kobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_sessions_kobj, align 4
  tail call void @kobject_del(ptr noundef %1) #3
  %2 = ptrtoint ptr %dev_sessions_kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_sessions_kobj, align 4
  tail call void @kobject_put(ptr noundef %3) #3
  tail call void @kobject_del(ptr noundef %dev_kobj) #3
  tail call void @kobject_put(ptr noundef %dev_kobj) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_srv_destroy_dev_session_sysfs(ptr noundef %sess_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 5
  tail call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef nonnull @rnbd_srv_default_dev_session_attr_group) #3
  tail call void @kobject_del(ptr noundef %kobj) #3
  tail call void @kobject_put(ptr noundef %kobj) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_srv_create_dev_session_sysfs(ptr noundef %sess_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 5
  %dev = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_sessions_kobj = getelementptr inbounds %struct.rnbd_srv_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev_sessions_kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_sessions_kobj, align 4
  %sess = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 3
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess, align 4
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %5, i32 0, i32 2
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @rnbd_srv_sess_dev_ktype, ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %sessname) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @rnbd_srv_default_dev_session_attr_group) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kobject_del(ptr noundef %kobj) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3, %if.then5 ], [ %call, %entry.cleanup.sink.split_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_srv_create_sysfs_files() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @rnbd_srv_create_sysfs_files.__key) #3
  store ptr %call, ptr @rnbd_dev_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %call, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.4) #3
  store ptr %call3, ptr @rnbd_dev, align 4
  %cmp.i11 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call3 to i32
  br label %cls_destroy

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.5, ptr noundef %call3) #3
  store ptr %call8, ptr @rnbd_devs_kobj, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %2 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef 0) #3
  br label %cls_destroy

cls_destroy:                                      ; preds = %if.then9, %if.then5
  %err.0 = phi i32 [ %1, %if.then5 ], [ -12, %if.then9 ]
  %3 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @class_destroy(ptr noundef %3) #3
  br label %cleanup

cleanup:                                          ; preds = %cls_destroy, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %cls_destroy ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_srv_destroy_sysfs_files() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rnbd_devs_kobj, align 4
  tail call void @kobject_del(ptr noundef %0) #3
  %1 = load ptr, ptr @rnbd_devs_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #3
  %2 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef 0) #3
  %3 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @class_destroy(ptr noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_srv_dev_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @access_mode_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %access_mode = getelementptr i8, ptr %kobj, i32 412
  %0 = ptrtoint ptr %access_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %access_mode, align 4
  %call = tail call ptr @rnbd_access_mode_str(i32 noundef %1) #3
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.7, ptr noundef %call) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rnbd_access_mode_str(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_only_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %open_flags = getelementptr i8, ptr %kobj, i32 144
  %0 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open_flags, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %2 = xor i32 %and.lobit, 1
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.9, i32 noundef %2) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mapping_path_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pathname = getelementptr i8, ptr %kobj, i32 156
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.7, ptr noundef %pathname) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_srv_dev_session_force_close_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.12, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_srv_dev_session_force_close_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.13) #3
  br i1 %call, label %do.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pathname = getelementptr i8, ptr %kobj, i32 156
  %sess = getelementptr i8, ptr %kobj, i32 -8
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %pathname, ptr noundef %sessname, ptr noundef %3, ptr noundef %buf) #6
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %kobj, i32 -28
  %pathname9 = getelementptr i8, ptr %kobj, i32 156
  %sess11 = getelementptr i8, ptr %kobj, i32 -8
  %4 = ptrtoint ptr %sess11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess11, align 4
  %sessname12 = getelementptr inbounds %struct.rnbd_srv_session, ptr %5, i32 0, i32 2
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %pathname9, ptr noundef %sessname12) #6
  tail call void @rnbd_srv_sess_dev_force_close(ptr noundef %add.ptr, ptr noundef %attr) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end
  %retval.0 = phi i32 [ %count, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_srv_sess_dev_force_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_srv_sess_dev_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -28
  %keep_id = getelementptr i8, ptr %kobj, i32 140
  %0 = ptrtoint ptr %keep_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %keep_id, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  tail call void @rnbd_destroy_sess_dev(ptr noundef %add.ptr, i1 noundef zeroext %tobool) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_destroy_sess_dev(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 55, i32 50}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 63, i32 53}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 199, i32 42}
!6 = !{ptr @rnbd_srv_create_sysfs_files.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 220, i32 19}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 225, i32 26}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 230, i32 42}
!13 = !{ptr @rnbd_dev, !14, !"rnbd_dev", i1 false, i1 false}
!14 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 23, i32 23}
!15 = !{ptr @rnbd_dev_class, !16, !"rnbd_dev_class", i1 false, i1 false}
!16 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 24, i32 22}
!17 = !{ptr @rnbd_devs_kobj, !18, !"rnbd_devs_kobj", i1 false, i1 false}
!18 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 25, i32 24}
!19 = !{ptr @dev_ktype, !20, !"dev_ktype", i1 false, i1 false}
!20 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 36, i32 25}
!21 = !{ptr @rnbd_srv_default_dev_session_attr_group, !22, !"rnbd_srv_default_dev_session_attr_group", i1 false, i1 false}
!22 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 168, i32 31}
!23 = !{ptr @rnbd_srv_default_dev_sessions_attrs, !24, !"rnbd_srv_default_dev_sessions_attrs", i1 false, i1 false}
!24 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 160, i32 26}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 113, i32 2}
!27 = !{ptr @rnbd_srv_dev_session_access_mode_attr, !28, !"rnbd_srv_dev_session_access_mode_attr", i1 false, i1 false}
!28 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 112, i32 30}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 108, i32 26}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 98, i32 2}
!33 = !{ptr @rnbd_srv_dev_session_ro_attr, !34, !"rnbd_srv_dev_session_ro_attr", i1 false, i1 false}
!34 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 97, i32 30}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 93, i32 26}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 126, i32 2}
!39 = !{ptr @rnbd_srv_dev_session_mapping_path_attr, !40, !"rnbd_srv_dev_session_mapping_path_attr", i1 false, i1 false}
!40 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 125, i32 30}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 156, i32 2}
!43 = !{ptr @rnbd_srv_dev_session_force_close_attr, !44, !"rnbd_srv_dev_session_force_close_attr", i1 false, i1 false}
!44 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 155, i32 30}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 131, i32 26}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 143, i32 24}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 144, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rnbd_srv_dev_session_force_close_store._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @rnbd_srv_dev_session_force_close_store._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 149, i32 2}
!57 = !{ptr @rnbd_srv_dev_session_force_close_store._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rnbd_srv_dev_session_force_close_store._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @rnbd_srv_sess_dev_ktype, !60, !"rnbd_srv_sess_dev_ktype", i1 false, i1 false}
!60 = !{!"../drivers/block/rnbd/rnbd-srv-sysfs.c", i32 189, i32 25}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i8 0, i8 2}
