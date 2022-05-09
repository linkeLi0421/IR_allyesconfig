; ModuleID = '/llk/IR_all_yes/drivers/base/firmware_loader/fallback.c_pt.bc'
source_filename = "../drivers/base/firmware_loader/fallback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.firmware_fallback_config = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fw_sysfs = type { i8, %struct.device, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_priv = type { %struct.kref, %struct.list_head, ptr, %struct.fw_state, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8, %struct.list_head, ptr }
%struct.fw_state = type { %struct.completion, i32 }

@__UNIQUE_ID_import_ns241 = internal constant [49 x i8] c"firmware_class.import_ns=FIRMWARE_LOADER_PRIVATE\00", section ".modinfo", align 1
@fw_fallback_config = external dso_local local_unnamed_addr global %struct.firmware_fallback_config, align 4
@fw_lock = external dso_local global %struct.mutex, align 4
@pending_fw_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pending_fw_head, ptr @pending_fw_head }, [24 x i8] zeroinitializer }, align 32
@register_sysfs_loader.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@firmware_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.6, ptr null, ptr @firmware_class_groups, ptr null, ptr null, ptr @firmware_uevent, ptr null, ptr null, ptr @fw_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@firmware_fallback_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Falling back to sysfs fallback for: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware_fallback_sysfs\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/base/firmware_loader/fallback.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@firmware_fallback_sysfs._entry_ptr = internal global ptr @firmware_fallback_sysfs._entry, section ".printk_index", align 4
@firmware_fallback_sysfs.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"firmware_class\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@firmware_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @firmware_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@firmware_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @firmware_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@firmware_class_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @class_attr_timeout, ptr null], [24 x i8] zeroinitializer }, align 32
@class_attr_timeout = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_show, ptr @timeout_store }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIRMWARE=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TIMEOUT=%i\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASYNC=%d\00", [23 x i8] zeroinitializer }, align 32
@fw_run_sysfs_fallback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fw_run_sysfs_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016Ignoring firmware sysfs fallback due to sysctl knob\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fw_run_sysfs_fallback\00", [42 x i8] zeroinitializer }, align 32
@fw_run_sysfs_fallback._entry_ptr = internal global ptr @fw_run_sysfs_fallback._entry, section ".printk_index", align 4
@fw_load_from_user_helper.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fw_load_from_user_helper\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"firmware: %s loading timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@fw_load_from_user_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 576, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"firmware: %s will not be loaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fw_load_from_user_helper._entry_ptr = internal global ptr @fw_load_from_user_helper._entry, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@fw_dev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fw_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fw_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fw_dev_attrs, ptr @fw_dev_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@fw_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_loading, ptr null], [24 x i8] zeroinitializer }, align 32
@fw_dev_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @firmware_attr_data, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_loading = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_loading_show, ptr @firmware_loading_store }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"loading\00", [24 x i8] zeroinitializer }, align 32
@firmware_loading_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 277, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: map pages failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware_loading_store\00", [41 x i8] zeroinitializer }, align 32
@firmware_loading_store._entry_ptr = internal global ptr @firmware_loading_store._entry, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blob\00", [27 x i8] zeroinitializer }, align 32
@firmware_loading_store._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 297, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unexpected value (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@firmware_loading_store._entry_ptr.25 = internal global ptr @firmware_loading_store._entry.23, section ".printk_index", align 4
@firmware_attr_data = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @firmware_data_read, ptr @firmware_data_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@fw_load_sysfs_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 514, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: device_register failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fw_load_sysfs_fallback\00", [41 x i8] zeroinitializer }, align 32
@fw_load_sysfs_fallback._entry_ptr = internal global ptr @fw_load_sysfs_fallback._entry, section ".printk_index", align 4
@fw_load_sysfs_fallback.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware: requesting %s\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"pending_fw_head\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 107, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 202, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"firmware_class\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 193, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 659, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 662, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 194, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"firmware_class_groups\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"firmware_class_group\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 160, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"firmware_class_attrs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 156, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"class_attr_timeout\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 154, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 126, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 171, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 173, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 175, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 613, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 568, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 575, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 485, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"fw_dev_attr_groups\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 462, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"fw_dev_attr_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 457, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"fw_dev_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 447, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"fw_dev_bin_attrs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 452, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"dev_attr_loading\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 308, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 276, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 281, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 297, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"firmware_attr_data\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 440, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 441, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 44, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 514, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [43 x i8] c"../drivers/base/firmware_loader/fallback.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 530, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_import_ns241, ptr @firmware_fallback_sysfs._entry, ptr @firmware_fallback_sysfs._entry_ptr, ptr @firmware_loading_store._entry, ptr @firmware_loading_store._entry.23, ptr @firmware_loading_store._entry_ptr, ptr @firmware_loading_store._entry_ptr.25, ptr @fw_load_from_user_helper._entry, ptr @fw_load_from_user_helper._entry_ptr, ptr @fw_load_sysfs_fallback._entry, ptr @fw_load_sysfs_fallback._entry_ptr, ptr @fw_run_sysfs_fallback._entry, ptr @fw_run_sysfs_fallback._entry_ptr, ptr @pending_fw_head, ptr @register_sysfs_loader.__key, ptr @firmware_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @firmware_class_groups, ptr @firmware_class_group, ptr @firmware_class_attrs, ptr @class_attr_timeout, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @fw_dev_attr_groups, ptr @fw_dev_attr_group, ptr @fw_dev_attrs, ptr @fw_dev_bin_attrs, ptr @dev_attr_loading, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @firmware_attr_data, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pending_fw_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_sysfs_loader.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_fallback_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_class_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_run_sysfs_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_load_from_user_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_dev_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_loading to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_loading_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_loading_store._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_attr_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_load_sysfs_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fw_fallback_set_cache_timeout() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 2) to i32))
  store i32 %0, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 2), align 4
  store i32 10, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fw_fallback_set_default_timeout() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3) to i32))
  store i32 %0, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_pending_fw_fallback_reqs(i1 noundef zeroext %only_kill_custom) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %0 = load ptr, ptr @pending_fw_head, align 4
  %cmp.not18 = icmp eq ptr %0, @pending_fw_head
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn21, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn21 = load ptr, ptr %.pn.in19, align 4
  %need_uevent = getelementptr i8, ptr %.pn.in19, i32 -4
  %2 = ptrtoint ptr %need_uevent to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_uevent, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %4 = and i1 %tobool.not, %only_kill_custom
  br i1 %4, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %status2.i.i.i = getelementptr i8, ptr %.pn.in19, i32 -44
  %5 = ptrtoint ptr %status2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status2.i.i.i, align 4
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.i = icmp eq i32 %7, 2
  br i1 %switch.i, label %if.then.for.inc_crit_edge, label %if.end.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %status2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 3, ptr %status2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.fw_state_aborted.exit.i_crit_edge

if.end.i.fw_state_aborted.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_state_aborted.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in19, i32 4
  %9 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in19, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %fw_state_aborted.exit.i

fw_state_aborted.exit.i:                          ; preds = %if.end.i.i.i.i.i, %if.end.i.fw_state_aborted.exit.i_crit_edge
  %fw_st1.i.i.i = getelementptr i8, ptr %.pn.in19, i32 -100
  %15 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %.pn.in19, ptr %.pn.in19, align 4
  %prev.i3.i.i.i.i = getelementptr i8, ptr %.pn.in19, i32 4
  %16 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.in19, ptr %prev.i3.i.i.i.i, align 4
  tail call void @complete_all(ptr noundef %fw_st1.i.i.i) #6
  br label %for.inc

for.inc:                                          ; preds = %fw_state_aborted.exit.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn21, @pending_fw_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_sysfs_loader() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @firmware_class, ptr noundef nonnull @register_sysfs_loader.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @register_firmware_config_sysctl() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_firmware_config_sysctl() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_sysfs_loader() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_firmware_config_sysctl() #6
  tail call void @class_unregister(ptr noundef nonnull @firmware_class) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_firmware_config_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @firmware_fallback_sysfs(ptr noundef %fw, ptr noundef %name, ptr noundef %device, i32 noundef %opt_flags, i32 noundef %ret) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end14.i, label %land.end.i

land.end.i:                                       ; preds = %entry
  %.b24.i = load i1, ptr @fw_run_sysfs_fallback.__already_done, align 1
  br i1 %.b24.i, label %land.end.i.return_crit_edge, label %if.then6.i, !prof !100

land.end.i.return_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fw_run_sysfs_fallback.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %return

if.end14.i:                                       ; preds = %entry
  %and.i = and i32 %opt_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end14.i.return_crit_edge

if.end14.i.return_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end17.i:                                       ; preds = %if.end14.i
  %call18.i = tail call i32 @security_kernel_load_data(i32 noundef 1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %if.end17.i.return_crit_edge, label %fw_run_sysfs_fallback.exit

if.end17.i.return_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

fw_run_sysfs_fallback.exit:                       ; preds = %if.end17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_fallback_config to i32))
  %1 = load i32, ptr @fw_fallback_config, align 4
  %and.i.i = and i32 %opt_flags, 4
  %2 = or i32 %1, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %fw_run_sysfs_fallback.exit.return_crit_edge, label %if.end

fw_run_sysfs_fallback.exit.return_crit_edge:      ; preds = %fw_run_sysfs_fallback.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %fw_run_sysfs_fallback.exit
  %and = and i32 %opt_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %if.end10

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firmware_fallback_sysfs.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firmware_fallback_sysfs, %if.then7)) #6
          to label %if.end10 [label %if.then7], !srcloc !101

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firmware_fallback_sysfs.__UNIQUE_ID_ddebug248, ptr noundef %device, ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body2, %do.end
  %call11 = tail call fastcc i32 @fw_load_from_user_helper(ptr noundef %fw, ptr noundef %name, ptr noundef %device, i32 noundef %opt_flags)
  br label %return

return:                                           ; preds = %if.end10, %fw_run_sysfs_fallback.exit.return_crit_edge, %if.end17.i.return_crit_edge, %if.end14.i.return_crit_edge, %if.then6.i, %land.end.i.return_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %ret, %fw_run_sysfs_fallback.exit.return_crit_edge ], [ %ret, %if.then6.i ], [ %ret, %land.end.i.return_crit_edge ], [ %ret, %if.end14.i.return_crit_edge ], [ %ret, %if.end17.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_load_from_user_helper(ptr noundef %firmware, ptr noundef %name, ptr noundef %device, i32 noundef %opt_flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp sgt i32 %0, 0
  %mul.i = mul i32 %0, 100
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 1073741822
  %and = and i32 %opt_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @usermodehelper_read_lock_wait(i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.then.if.end47_crit_edge

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_load_from_user_helper.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_load_from_user_helper, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !101

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_load_from_user_helper.__UNIQUE_ID_ddebug247, ptr noundef %device, ptr noundef nonnull @.str.15, ptr noundef %name) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %call10 = tail call i32 @usermodehelper_read_trylock() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.if.end47_crit_edge, label %do.end27, !prof !100

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 574, i32 noundef 9, ptr noundef null) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.16, ptr noundef %name) #9
  br label %cleanup

if.end47:                                         ; preds = %if.else.if.end47_crit_edge, %if.then.if.end47_crit_edge
  %timeout.0 = phi i32 [ %call1, %if.then.if.end47_crit_edge ], [ %spec.select.i, %if.else.if.end47_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 944) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end47.if.then50_crit_edge, label %fw_create_instance.exit

if.end47.if.then50_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

fw_create_instance.exit:                          ; preds = %if.end47
  %2 = trunc i32 %opt_flags to i8
  %3 = lshr i8 %2, 1
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %call7.i.i.i, align 8
  %fw.i = getelementptr inbounds %struct.fw_sysfs, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %firmware, ptr %fw.i, align 4
  %dev.i = getelementptr inbounds %struct.fw_sysfs, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev.i) #6
  %call4.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef %name) #6
  %parent.i = getelementptr inbounds %struct.fw_sysfs, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %device, ptr %parent.i, align 8
  %class.i = getelementptr inbounds %struct.fw_sysfs, ptr %call7.i.i.i, i32 0, i32 1, i32 33
  %8 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @firmware_class, ptr %class.i, align 4
  %groups.i = getelementptr inbounds %struct.fw_sysfs, ptr %call7.i.i.i, i32 0, i32 1, i32 34
  %9 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fw_dev_attr_groups, ptr %groups.i, align 8
  %cmp.i77 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %fw_create_instance.exit.if.then50_crit_edge, label %if.end52

fw_create_instance.exit.if.then50_crit_edge:      ; preds = %fw_create_instance.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.then50:                                        ; preds = %fw_create_instance.exit.if.then50_crit_edge, %if.end47.if.then50_crit_edge
  %fw_sysfs.0.i81 = phi ptr [ %call7.i.i.i, %fw_create_instance.exit.if.then50_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end47.if.then50_crit_edge ]
  %10 = ptrtoint ptr %fw_sysfs.0.i81 to i32
  br label %out_unlock

if.end52:                                         ; preds = %fw_create_instance.exit
  %priv = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %fw_priv = getelementptr inbounds %struct.fw_sysfs, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %fw_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %fw_priv, align 8
  %call53 = tail call fastcc i32 @fw_load_sysfs_fallback(ptr noundef nonnull %call7.i.i.i, i32 noundef %timeout.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %if.end52.out_unlock_crit_edge

if.end52.out_unlock_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call i32 @assign_fw(ptr noundef %firmware, ptr noundef %device) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.then55, %if.end52.out_unlock_crit_edge, %if.then50
  %ret.0 = phi i32 [ %10, %if.then50 ], [ %call53, %if.end52.out_unlock_crit_edge ], [ %call56, %if.then55 ]
  tail call void @usermodehelper_read_unlock() #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end27, %if.then8, %do.body
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ %call10, %do.end27 ], [ -16, %if.then8 ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %fw_priv = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %fw_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %fw_name.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_name.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.9, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  %call2.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.10, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 8, !range !99
  %7 = zext i8 %6 to i32
  %call7.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.11, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %..i = select i1 %tobool8.not.i, i32 0, i32 -12
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ -12, %if.then.if.end_crit_edge ], [ -12, %if.end.i.if.end_crit_edge ], [ %..i, %if.end5.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_dev_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  tail call void @kfree(ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %0) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtol(ptr noundef %buf, ptr noundef null, i32 noundef 10) #6
  %0 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3) to i32))
  store i32 %0, ptr getelementptr inbounds (%struct.firmware_fallback_config, ptr @fw_fallback_config, i32 0, i32 3), align 4
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_load_data(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usermodehelper_read_lock_wait(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usermodehelper_read_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_load_sysfs_fallback(ptr noundef %fw_sysfs, i32 noundef %timeout) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fw_sysfs, ptr %fw_sysfs, i32 0, i32 1
  %fw_priv2 = getelementptr inbounds %struct.fw_sysfs, ptr %fw_sysfs, i32 0, i32 2
  %0 = ptrtoint ptr %fw_priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_priv2, align 8
  %data = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %is_paged_buf = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %is_paged_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_paged_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %uevent_suppress.i = getelementptr inbounds %struct.fw_sysfs, ptr %fw_sysfs, i32 0, i32 1, i32 0, i32 8
  %5 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  %call = tail call i32 @device_add(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  br label %err_put_dev

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %status2.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 3
  br i1 %cmp.i.i, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  br label %out

if.end8:                                          ; preds = %if.end5
  %pending_list = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14
  %8 = load ptr, ptr @pending_fw_head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pending_list, ptr noundef nonnull @pending_fw_head, ptr noundef %8) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pending_list, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %pending_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pending_fw_head, ptr %prev3.i.i, align 4
  store volatile ptr %pending_list, ptr @pending_fw_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end8.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  %opt_flags = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %opt_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opt_flags, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %list_add.exit.if.end22_crit_edge, label %if.then10

list_add.exit.if.end22_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10:                                        ; preds = %list_add.exit
  %need_uevent = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %need_uevent to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %need_uevent, align 4
  %15 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i65 = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i66 = and i8 %bf.load.i65, -9
  store i8 %bf.clear.i66, ptr %uevent_suppress.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_load_sysfs_fallback.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_load_sysfs_fallback, %if.then16)) #6
          to label %do.end19 [label %if.then16], !srcloc !101

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %fw_name = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_load_sysfs_fallback.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %17) #6
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %if.then10
  %call21 = tail call i32 @kobject_uevent(ptr noundef %dev, i32 noundef 0) #6
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %list_add.exit.if.end22_crit_edge
  %timeout.addr.0 = phi i32 [ %timeout, %do.end19 ], [ 1073741822, %list_add.exit.if.end22_crit_edge ]
  %fw_st1.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3
  %call.i.i67 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %fw_st1.i.i, i32 noundef %timeout.addr.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.not.i.i = icmp eq i32 %call.i.i67, 0
  br i1 %cmp.not.i.i, label %if.end22.fw_sysfs_wait_timeout.exit_crit_edge, label %land.lhs.true.i.i

if.end22.fw_sysfs_wait_timeout.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_sysfs_wait_timeout.exit

land.lhs.true.i.i:                                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp2.i.i = icmp eq i32 %19, 3
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i67, i32 0) #6
  %spec.select.i.i = select i1 %cmp2.i.i, i32 -2, i32 %20
  br label %fw_sysfs_wait_timeout.exit

fw_sysfs_wait_timeout.exit:                       ; preds = %land.lhs.true.i.i, %if.end22.fw_sysfs_wait_timeout.exit_crit_edge
  %retval.0.i.i = phi i32 [ -110, %if.end22.fw_sysfs_wait_timeout.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp = icmp sgt i32 %retval.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i.i)
  %cmp24.not = icmp eq i32 %retval.0.i.i, -2
  %or.cond = or i1 %cmp, %cmp24.not
  br i1 %or.cond, label %fw_sysfs_wait_timeout.exit.if.end26_crit_edge, label %if.then25

fw_sysfs_wait_timeout.exit.if.end26_crit_edge:    ; preds = %fw_sysfs_wait_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %fw_sysfs_wait_timeout.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %21 = ptrtoint ptr %fw_priv2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_priv2, align 8
  %status2.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %22, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %status2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status2.i.i.i.i, align 4
  %25 = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch.i.i = icmp eq i32 %25, 2
  br i1 %switch.i.i, label %if.then25.fw_load_abort.exit_crit_edge, label %if.end.i.i68

if.then25.fw_load_abort.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_load_abort.exit

if.end.i.i68:                                     ; preds = %if.then25
  %26 = ptrtoint ptr %status2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 3, ptr %status2.i.i.i.i, align 4
  %pending_list.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %22, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_list.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.i68.fw_state_aborted.exit.i.i_crit_edge

if.end.i.i68.fw_state_aborted.exit.i.i_crit_edge: ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_state_aborted.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %22, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %pending_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pending_list.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %fw_state_aborted.exit.i.i

fw_state_aborted.exit.i.i:                        ; preds = %if.end.i.i.i.i.i.i, %if.end.i.i68.fw_state_aborted.exit.i.i_crit_edge
  %fw_st1.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %22, i32 0, i32 3
  %33 = ptrtoint ptr %pending_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pending_list.i.i.i.i, ptr %pending_list.i.i.i.i, align 4
  %prev.i3.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %22, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pending_list.i.i.i.i, ptr %prev.i3.i.i.i.i.i, align 4
  tail call void @complete_all(ptr noundef %fw_st1.i.i.i.i) #6
  br label %fw_load_abort.exit

fw_load_abort.exit:                               ; preds = %fw_state_aborted.exit.i.i, %if.then25.fw_load_abort.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  br label %if.end26

if.end26:                                         ; preds = %fw_load_abort.exit, %fw_sysfs_wait_timeout.exit.if.end26_crit_edge
  %35 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.i.i70 = icmp eq i32 %36, 3
  br i1 %cmp.i.i70, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %retval.0.i.i)
  %cmp29 = icmp eq i32 %retval.0.i.i, -512
  %spec.store.select = select i1 %cmp29, i32 -4, i32 %retval.0.i.i
  br label %out

if.else32:                                        ; preds = %if.end26
  %is_paged_buf33 = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %is_paged_buf33 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_paged_buf33, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool34.not = icmp eq i8 %38, 0
  br i1 %tobool34.not, label %if.else32.out_crit_edge, label %land.lhs.true35

if.else32.out_crit_edge:                          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true35:                                  ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %tobool37.not = icmp eq ptr %40, null
  %spec.select = select i1 %tobool37.not, i32 -12, i32 %retval.0.i.i
  br label %out

out:                                              ; preds = %land.lhs.true35, %if.else32.out_crit_edge, %if.then28, %if.then7
  %retval1.0 = phi i32 [ -4, %if.then7 ], [ %spec.store.select, %if.then28 ], [ %retval.0.i.i, %if.else32.out_crit_edge ], [ %spec.select, %land.lhs.true35 ]
  tail call void @device_del(ptr noundef %dev) #6
  br label %err_put_dev

err_put_dev:                                      ; preds = %out, %do.end
  %retval1.1 = phi i32 [ %call, %do.end ], [ %retval1.0, %out ]
  tail call void @put_device(ptr noundef %dev) #6
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @assign_fw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usermodehelper_read_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_loading_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %fw_priv = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %fw_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %status2.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 1
  %conv = zext i1 %cmp.i.i to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %loading.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %loading.0) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_loading_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @simple_strtol(ptr noundef %buf, ptr noundef null, i32 noundef 10) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %fw_priv2 = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %fw_priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_priv2, align 8
  %status2.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 3
  br i1 %cmp.i.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end.do.end21_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 -1, label %if.end.sw.bb22_crit_edge
  ]

if.end.sw.bb22_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.i39 = icmp eq i32 %3, 2
  br i1 %cmp.i.i39, label %sw.bb.out_crit_edge, label %if.then5

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fw_free_paged_buf(ptr noundef %1) #6
  %5 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %status2.i.i, align 4
  br label %out

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.i41 = icmp eq i32 %3, 1
  br i1 %cmp.i.i41, label %if.then9, label %sw.bb7.do.end21_crit_edge

sw.bb7.do.end21_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

if.then9:                                         ; preds = %sw.bb7
  %call10 = tail call i32 @fw_map_paged_buf(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end13, label %if.end13.thread

if.end13.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #9
  br label %if.then15

if.end13:                                         ; preds = %if.then9
  %data = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %size = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %conv = zext i32 %9 to i64
  %call12 = tail call i32 @security_kernel_post_load_data(ptr noundef %7, i64 noundef %conv, i32 noundef 1, ptr noundef nonnull @.str.22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.else16, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end13.thread
  %rc.053 = phi i32 [ %call10, %if.end13.thread ], [ %call12, %if.end13.if.then15_crit_edge ]
  %10 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 3, ptr %status2.i.i, align 4
  %pending_list.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_list.i.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then15.fw_state_aborted.exit_crit_edge

if.then15.fw_state_aborted.exit_crit_edge:        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_state_aborted.exit

if.end.i.i.i.i:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %pending_list.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pending_list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %fw_state_aborted.exit

fw_state_aborted.exit:                            ; preds = %if.end.i.i.i.i, %if.then15.fw_state_aborted.exit_crit_edge
  %fw_st1.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %pending_list.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %pending_list.i.i, ptr %pending_list.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pending_list.i.i, ptr %prev.i3.i.i.i, align 4
  tail call void @complete_all(ptr noundef %fw_st1.i.i) #6
  br label %out

if.else16:                                        ; preds = %if.end13
  %19 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %status2.i.i, align 4
  %pending_list.i.i44 = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14
  %call.i.i.i.i45 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_list.i.i44) #6
  br i1 %call.i.i.i.i45, label %if.end.i.i.i.i48, label %if.else16.fw_state_done.exit_crit_edge

if.else16.fw_state_done.exit_crit_edge:           ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_state_done.exit

if.end.i.i.i.i48:                                 ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i46 = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i46, align 4
  %22 = ptrtoint ptr %pending_list.i.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pending_list.i.i44, align 4
  %prev1.i.i.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.i47, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %fw_state_done.exit

fw_state_done.exit:                               ; preds = %if.end.i.i.i.i48, %if.else16.fw_state_done.exit_crit_edge
  %fw_st1.i.i49 = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %pending_list.i.i44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %pending_list.i.i44, ptr %pending_list.i.i44, align 4
  %prev.i3.i.i.i50 = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pending_list.i.i44, ptr %prev.i3.i.i.i50, align 4
  tail call void @complete_all(ptr noundef %fw_st1.i.i49) #6
  br label %out

do.end21:                                         ; preds = %sw.bb7.do.end21_crit_edge, %if.end.do.end21_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef %call1) #9
  br label %sw.bb22

sw.bb22:                                          ; preds = %do.end21, %if.end.sw.bb22_crit_edge
  %28 = ptrtoint ptr %fw_priv2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw_priv2, align 8
  %status2.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %status2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status2.i.i.i.i, align 4
  %32 = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch.i.i = icmp eq i32 %32, 2
  br i1 %switch.i.i, label %sw.bb22.out_crit_edge, label %if.end.i.i

sw.bb22.out_crit_edge:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i:                                       ; preds = %sw.bb22
  %33 = ptrtoint ptr %status2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 3, ptr %status2.i.i.i.i, align 4
  %pending_list.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %29, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_list.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.i.fw_state_aborted.exit.i.i_crit_edge

if.end.i.i.fw_state_aborted.exit.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_state_aborted.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %29, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %pending_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pending_list.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %fw_state_aborted.exit.i.i

fw_state_aborted.exit.i.i:                        ; preds = %if.end.i.i.i.i.i.i, %if.end.i.i.fw_state_aborted.exit.i.i_crit_edge
  %fw_st1.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %29, i32 0, i32 3
  %40 = ptrtoint ptr %pending_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %pending_list.i.i.i.i, ptr %pending_list.i.i.i.i, align 4
  %prev.i3.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %29, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pending_list.i.i.i.i, ptr %prev.i3.i.i.i.i.i, align 4
  tail call void @complete_all(ptr noundef %fw_st1.i.i.i.i) #6
  br label %out

out:                                              ; preds = %fw_state_aborted.exit.i.i, %sw.bb22.out_crit_edge, %fw_state_done.exit, %fw_state_aborted.exit, %if.then5, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %written.1 = phi i32 [ %count, %entry.out_crit_edge ], [ %count, %sw.bb.out_crit_edge ], [ %count, %if.then5 ], [ %rc.053, %fw_state_aborted.exit ], [ %count, %fw_state_done.exit ], [ %count, %sw.bb22.out_crit_edge ], [ %count, %fw_state_aborted.exit.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  ret i32 %written.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_free_paged_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_map_paged_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_post_load_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_data_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef %buffer, i64 noundef %offset, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %fw_priv2 = getelementptr i8, ptr %kobj, i32 928
  %0 = ptrtoint ptr %fw_priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_priv2, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %status2.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 2
  br i1 %cmp.i.i, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp = icmp slt i64 %conv, %offset
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %if.end
  %conv7 = zext i32 %count to i64
  %sub = sub i64 %conv, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv7)
  %cmp10 = icmp slt i64 %sub, %conv7
  %conv16 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp10, i32 %conv16, i32 %count
  %data = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %idx.ext.i = trunc i64 %offset to i32
  %add.ptr.i36 = getelementptr i8, ptr %7, i32 %idx.ext.i
  %8 = call ptr @memcpy(ptr %buffer, ptr %add.ptr.i36, i32 %spec.select)
  br label %out

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @firmware_rw(ptr noundef nonnull %1, ptr noundef %buffer, i64 noundef %offset, i32 noundef %spec.select, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.else, %if.then19, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret_count.0 = phi i32 [ %spec.select, %if.then19 ], [ %spec.select, %if.else ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  ret i32 %ret_count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_data_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef %buffer, i64 noundef %offset, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call zeroext i1 @capable(i32 noundef 17) #6
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_lock, i32 noundef 0) #6
  %fw_priv4 = getelementptr i8, ptr %kobj, i32 928
  %0 = ptrtoint ptr %fw_priv4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_priv4, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %status2.i.i = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 2
  br i1 %cmp.i.i, label %lor.lhs.false.out_crit_edge, label %if.end7

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %conv = zext i32 %count to i64
  %add = add i64 %conv, %offset
  %allocated_size = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %allocated_size, align 4
  %conv10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv10)
  %cmp = icmp sgt i64 %add, %conv10
  br i1 %cmp, label %if.then9.out_crit_edge, label %if.end13

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %idx.ext.i = trunc i64 %offset to i32
  %add.ptr.i54 = getelementptr i8, ptr %5, i32 %idx.ext.i
  %8 = call ptr @memcpy(ptr %add.ptr.i54, ptr %buffer, i32 %count)
  br label %if.end21

if.else:                                          ; preds = %if.end7
  %9 = trunc i64 %offset to i32
  %conv16 = add i32 %count, 4095
  %add.i = add i32 %conv16, %9
  %shr.i = ashr i32 %add.i, 12
  %call.i = tail call i32 @fw_grow_paged_buf(ptr noundef nonnull %1, i32 noundef %shr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %10 = ptrtoint ptr %fw_priv4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_priv4, align 8
  %status2.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %11, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %status2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status2.i.i.i.i.i, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.i.i.i = icmp eq i32 %14, 2
  br i1 %switch.i.i.i, label %if.then.i.out_crit_edge, label %if.end.i.i.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i.i:                                     ; preds = %if.then.i
  %15 = ptrtoint ptr %status2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 3, ptr %status2.i.i.i.i.i, align 4
  %pending_list.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %11, i32 0, i32 14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_list.i.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.i.i.fw_state_aborted.exit.i.i.i_crit_edge

if.end.i.i.i.fw_state_aborted.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_state_aborted.exit.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %11, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %pending_list.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pending_list.i.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %fw_state_aborted.exit.i.i.i

fw_state_aborted.exit.i.i.i:                      ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.i.i.fw_state_aborted.exit.i.i.i_crit_edge
  %fw_st1.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %pending_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pending_list.i.i.i.i.i, ptr %pending_list.i.i.i.i.i, align 4
  %prev.i3.i.i.i.i.i.i = getelementptr inbounds %struct.fw_priv, ptr %11, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %prev.i3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pending_list.i.i.i.i.i, ptr %prev.i3.i.i.i.i.i.i, align 4
  tail call void @complete_all(ptr noundef %fw_st1.i.i.i.i.i) #6
  br label %out

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @firmware_rw(ptr noundef nonnull %1, ptr noundef %buffer, i64 noundef %offset, i32 noundef %count, i1 noundef zeroext false)
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  %.pre-phi = phi i32 [ %9, %if.end20 ], [ %idx.ext.i, %if.end13 ]
  %conv24 = add i32 %.pre-phi, %count
  %size = getelementptr inbounds %struct.fw_priv, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %conv24, i32 %25)
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %size, align 4
  br label %out

out:                                              ; preds = %if.end21, %fw_state_aborted.exit.i.i.i, %if.then.i.out_crit_edge, %if.then9.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %retval2.1 = phi i32 [ %count, %if.end21 ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end.out_crit_edge ], [ -12, %if.then9.out_crit_edge ], [ %call.i, %if.then.i.out_crit_edge ], [ %call.i, %fw_state_aborted.exit.i.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %out ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @firmware_rw(ptr nocapture noundef readonly %fw_priv, ptr nocapture noundef %buffer, i64 noundef %offset, i32 noundef %count, i1 noundef zeroext %read) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not31 = icmp eq i32 %count, 0
  br i1 %tobool.not31, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pages = getelementptr inbounds %struct.fw_priv, ptr %fw_priv, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %kunmap.exit.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.034 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr7, %kunmap.exit.while.body_crit_edge ]
  %offset.addr.033 = phi i64 [ %offset, %while.body.lr.ph ], [ %add, %kunmap.exit.while.body_crit_edge ]
  %count.addr.032 = phi i32 [ %count, %while.body.lr.ph ], [ %sub9, %kunmap.exit.while.body_crit_edge ]
  %0 = lshr i64 %offset.addr.033, 12
  %conv = trunc i64 %0 to i32
  %1 = trunc i64 %offset.addr.033 to i32
  %conv1 = and i32 %1, 4095
  %sub = sub nuw nsw i32 4096, %conv1
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count.addr.032)
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 44) #6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shr.i.i = lshr i32 %8, 30
  %9 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i.i, label %while.body.if.then.i_crit_edge [
    i32 2, label %while.body.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.body.if.else.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %10 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.i.not.i = icmp eq i32 %10, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %6) #6
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %while.body.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %6) #6
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %conv1
  br i1 %read, label %if.then, label %if.else

if.then:                                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %buffer.addr.034, ptr %add.ptr, i32 %2)
  br label %if.end

if.else:                                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %buffer.addr.034, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages, align 4
  %arrayidx6 = getelementptr ptr, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 55) #6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %shr.i.i27 = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i27, label %if.end.kunmap.exit_crit_edge [
    i32 2, label %if.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i29
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.kunmap.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i29:                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i28 = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i28, label %is_highmem_idx.exit.i29.if.end.i_crit_edge, label %is_highmem_idx.exit.i29.kunmap.exit_crit_edge

is_highmem_idx.exit.i29.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i29.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i29.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %16) #6
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i29.kunmap.exit_crit_edge, %if.end.kunmap.exit_crit_edge
  %add.ptr7 = getelementptr i8, ptr %buffer.addr.034, i32 %2
  %conv830 = zext i32 %2 to i64
  %add = add i64 %offset.addr.033, %conv830
  %sub9 = sub i32 %count.addr.032, %2
  %tobool.not = icmp eq i32 %sub9, 0
  br i1 %tobool.not, label %kunmap.exit.while.end_crit_edge, label %kunmap.exit.while.body_crit_edge

kunmap.exit.while.body_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

kunmap.exit.while.end_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %kunmap.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_grow_paged_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !19, !21, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__UNIQUE_ID_import_ns241, !1, !"__UNIQUE_ID_import_ns241", i1 false, i1 false}
!1 = !{!"../drivers/base/firmware_loader/fallback.c", i32 21, i32 1}
!2 = !{ptr @register_sysfs_loader.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/base/firmware_loader/fallback.c", i32 202, i32 12}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/firmware_loader/fallback.c", i32 659, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @firmware_fallback_sysfs._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @firmware_fallback_sysfs._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/base/firmware_loader/fallback.c", i32 662, i32 3}
!14 = !{ptr @firmware_fallback_sysfs.__UNIQUE_ID_ddebug248, !13, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!15 = !{ptr @pending_fw_head, !16, !"pending_fw_head", i1 false, i1 false}
!16 = !{!"../drivers/base/firmware_loader/fallback.c", i32 107, i32 8}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/firmware_loader/fallback.c", i32 194, i32 11}
!19 = !{ptr @firmware_class, !20, !"firmware_class", i1 false, i1 false}
!20 = !{!"../drivers/base/firmware_loader/fallback.c", i32 193, i32 21}
!21 = !{ptr @firmware_class_groups, !22, !"firmware_class_groups", i1 false, i1 false}
!22 = !{!"../drivers/base/firmware_loader/fallback.c", i32 160, i32 1}
!23 = !{ptr @firmware_class_group, !22, !"firmware_class_group", i1 false, i1 false}
!24 = !{ptr @firmware_class_attrs, !25, !"firmware_class_attrs", i1 false, i1 false}
!25 = !{!"../drivers/base/firmware_loader/fallback.c", i32 156, i32 26}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/firmware_loader/fallback.c", i32 154, i32 8}
!28 = !{ptr @class_attr_timeout, !27, !"class_attr_timeout", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/base/firmware_loader/fallback.c", i32 126, i32 25}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/base/firmware_loader/fallback.c", i32 171, i32 26}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/base/firmware_loader/fallback.c", i32 173, i32 26}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/base/firmware_loader/fallback.c", i32 175, i32 26}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/base/firmware_loader/fallback.c", i32 613, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @fw_run_sysfs_fallback._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @fw_run_sysfs_fallback._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/firmware_loader/fallback.c", i32 568, i32 4}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fw_load_from_user_helper.__UNIQUE_ID_ddebug247, !44, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/base/firmware_loader/fallback.c", i32 575, i32 4}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fw_load_from_user_helper._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @fw_load_from_user_helper._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/base/firmware_loader/fallback.c", i32 485, i32 22}
!54 = !{ptr @fw_dev_attr_groups, !55, !"fw_dev_attr_groups", i1 false, i1 false}
!55 = !{!"../drivers/base/firmware_loader/fallback.c", i32 462, i32 38}
!56 = !{ptr @fw_dev_attr_group, !57, !"fw_dev_attr_group", i1 false, i1 false}
!57 = !{!"../drivers/base/firmware_loader/fallback.c", i32 457, i32 37}
!58 = !{ptr @fw_dev_attrs, !59, !"fw_dev_attrs", i1 false, i1 false}
!59 = !{!"../drivers/base/firmware_loader/fallback.c", i32 447, i32 26}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/base/firmware_loader/fallback.c", i32 308, i32 8}
!62 = !{ptr @dev_attr_loading, !61, !"dev_attr_loading", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/base/firmware_loader/fallback.c", i32 276, i32 5}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @firmware_loading_store._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @firmware_loading_store._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/base/firmware_loader/fallback.c", i32 281, i32 25}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/base/firmware_loader/fallback.c", i32 297, i32 3}
!72 = !{ptr @firmware_loading_store._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @firmware_loading_store._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @fw_dev_bin_attrs, !75, !"fw_dev_bin_attrs", i1 false, i1 false}
!75 = !{!"../drivers/base/firmware_loader/fallback.c", i32 452, i32 30}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/base/firmware_loader/fallback.c", i32 441, i32 20}
!78 = !{ptr @firmware_attr_data, !79, !"firmware_attr_data", i1 false, i1 false}
!79 = !{!"../drivers/base/firmware_loader/fallback.c", i32 440, i32 29}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/base/firmware_loader/fallback.c", i32 514, i32 3}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @fw_load_sysfs_fallback._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @fw_load_sysfs_fallback._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/base/firmware_loader/fallback.c", i32 530, i32 3}
!89 = !{ptr @fw_load_sysfs_fallback.__UNIQUE_ID_ddebug246, !88, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2148332044, i64 2148332049, i64 2148332062, i64 2148332106, i64 2148332140, i64 2148332161}
