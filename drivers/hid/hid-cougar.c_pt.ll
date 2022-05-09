; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-cougar.c_pt.bc'
source_filename = "../drivers/hid/hid-cougar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.cougar_shared = type { %struct.list_head, %struct.kref, i8, ptr, ptr }
%struct.cougar = type { i8, ptr }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }

@__UNIQUE_ID_author223 = internal constant [56 x i8] c"hid_cougar.author=Daniel M. Lambea <dmlambea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [51 x i8] c"hid_cougar.description=Cougar 500k Gaming Keyboard\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [39 x i8] c"hid_cougar.file=drivers/hid/hid-cougar\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [23 x i8] c"hid_cougar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_key_mappings227 = internal constant [52 x i8] c"hid_cougar.key_mappings=G1-G6 are mapped to F13-F18\00", section ".modinfo", align 1
@__UNIQUE_ID_g6_is_space228 = internal constant [99 x i8] c"hid_cougar.parm=g6_is_space:If true, G6 programmable key sends SPACE instead of F18 (default=true)\00", section ".modinfo", align 1
@__param_str_g6_is_space = internal constant [23 x i8] c"hid_cougar.g6_is_space\00", align 1
@cougar_g6_is_space_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @cougar_param_set_g6_is_space, ptr @param_get_bool, ptr null }, [16 x i8] zeroinitializer }, align 32
@g6_is_space = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_g6_is_space = internal constant %struct.kernel_param { ptr @__param_str_g6_is_space, ptr null, ptr @cougar_g6_is_space_ops, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @g6_is_space } }, section "__param", align 4
@__initcall__kmod_hid_cougar__229_341_cougar_driver_init6 = internal global ptr @cougar_driver_init, section ".initcall6.init", align 4
@cougar_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.9, ptr @cougar_id_table, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @cougar_probe, ptr @cougar_remove, ptr null, ptr @cougar_raw_event, ptr null, ptr null, ptr null, ptr @cougar_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cougar_driver_exit = internal global ptr @cougar_driver_exit, section ".exitcall.exit", align 4
@cougar_mapping = internal global { [8 x [2 x i8]], [16 x i8] } { [8 x [2 x i8]] [[2 x i8] c"x9", [2 x i8] c"\83\B7", [2 x i8] c"\84\B8", [2 x i8] c"\85\B9", [2 x i8] c"\86\BA", [2 x i8] c"\87\BB", [2 x i8] c"n\98", [2 x i8] zeroinitializer], [16 x i8] zeroinitializer }, align 32
@cougar_fix_g6_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016cougar: G6 mapped to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cougar_fix_g6_mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-cougar.c\00", [39 x i8] zeroinitializer }, align 32
@cougar_fix_g6_mapping._entry_ptr = internal global ptr @cougar_fix_g6_mapping._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"F18\00", [28 x i8] zeroinitializer }, align 32
@cougar_fix_g6_mapping._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014cougar: no mappings defined for G6/spacebar\00", [50 x i8] zeroinitializer }, align 32
@cougar_fix_g6_mapping._entry_ptr.7 = internal global ptr @cougar_fix_g6_mapping._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_cougar\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cougar\00", [25 x i8] zeroinitializer }, align 32
@cougar_id_table = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1547, i32 20490, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1547, i32 28682, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cougar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 208, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cougar_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cougar_probe._entry_ptr = internal global ptr @cougar_probe._entry, section ".printk_index", align 4
@cougar_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 220, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@cougar_probe._entry_ptr.16 = internal global ptr @cougar_probe._entry.14, section ".printk_index", align 4
@cougar_udev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cougar_udev_list_lock, i64 52), ptr getelementptr (i8, ptr @cougar_udev_list_lock, i64 52) }, ptr @cougar_udev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cougar_udev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cougar_udev_list, ptr @cougar_udev_list }, [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cougar_udev_list_lock.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cougar_udev_list_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cougar_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 285, ptr @.str.21, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unmapped special key code %0x: ignoring\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cougar_raw_event\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cougar_raw_event._entry_ptr = internal global ptr @cougar_raw_event._entry, section ".printk_index", align 4
@cougar_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 112, ptr @.str.24, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"usage count exceeds max: fixing up report descriptor\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cougar_report_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cougar_report_fixup._entry_ptr = internal global ptr @cougar_report_fixup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 120]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 65542, i64 4278255360]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 120]
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"cougar_g6_is_space_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 317, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"g6_is_space\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 19, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"cougar_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 332, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"cougar_mapping\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 48, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 95, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 100, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 341, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 333, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"cougar_id_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 323, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 208, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 220, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"cougar_udev_list_lock\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"cougar_udev_list\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 81, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 82, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 285, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [28 x i8] c"../drivers/hid/hid-cougar.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 111, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_g6_is_space228, ptr @__UNIQUE_ID_key_mappings227, ptr @__UNIQUE_ID_license226, ptr @__exitcall_cougar_driver_exit, ptr @__initcall__kmod_hid_cougar__229_341_cougar_driver_init6, ptr @__param_g6_is_space, ptr @cougar_driver_exit, ptr @cougar_fix_g6_mapping._entry, ptr @cougar_fix_g6_mapping._entry.5, ptr @cougar_fix_g6_mapping._entry_ptr, ptr @cougar_fix_g6_mapping._entry_ptr.7, ptr @cougar_probe._entry, ptr @cougar_probe._entry.14, ptr @cougar_probe._entry_ptr, ptr @cougar_probe._entry_ptr.16, ptr @cougar_raw_event._entry, ptr @cougar_raw_event._entry_ptr, ptr @cougar_report_fixup._entry, ptr @cougar_report_fixup._entry_ptr, ptr @cougar_g6_is_space_ops, ptr @g6_is_space, ptr @cougar_driver, ptr @cougar_mapping, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @cougar_id_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @cougar_udev_list_lock, ptr @cougar_udev_list, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_g6_is_space_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g6_is_space to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_mapping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_fix_g6_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_fix_g6_mapping._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_udev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_udev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cougar_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cougar_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @cougar_driver, ptr noundef null, ptr noundef nonnull @.str.8) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cougar_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @cougar_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cougar_param_set_g6_is_space(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.cond.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %entry.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x [2 x i8]], ptr @cougar_mapping, i32 0, i32 %i.0.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %for.inc.i [
    i8 0, label %do.end15.i
    i8 120, label %if.then.i
  ]

if.then.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load i8, ptr @g6_is_space, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not.i = icmp eq i8 %3, 0
  %conv7.i = select i1 %tobool5.not.i, i8 -68, i8 57
  %arrayidx9.i = getelementptr [8 x [2 x i8]], ptr @cougar_mapping, i32 0, i32 %i.0.i, i32 1
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7.i, ptr %arrayidx9.i, align 1
  %cond12.i = select i1 %tobool5.not.i, ptr @.str.4, ptr @.str.3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond12.i) #9
  br label %cleanup

for.inc.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %i.0.i, 1
  br label %for.cond.i

do.end15.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end15.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end15.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cougar_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i89 = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool2.not = icmp eq i32 %call.i89, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %collection = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 4
  %1 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %collection, align 8
  %usage = getelementptr inbounds %struct.hid_collection, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16711936, i32 %4)
  %cmp = icmp eq i32 %4, -16711936
  br i1 %cmp, label %if.then6, label %if.end5.if.end7_crit_edge

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  %connect_mask.0 = phi i32 [ 4, %if.then6 ], [ 45, %if.end5.if.end7_crit_edge ]
  %call8 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %connect_mask.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  tail call void @mutex_lock_nested(ptr noundef nonnull @cougar_udev_list_lock, i32 noundef 0) #6
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end15
  %shared.0.in.i.i = phi ptr [ @cougar_udev_list, %if.end15 ], [ %shared.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %shared.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %shared.0.i.i = load ptr, ptr %shared.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %shared.0.i.i, @cougar_udev_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev.i.i = getelementptr inbounds %struct.cougar_shared, ptr %shared.0.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call zeroext i1 @hid_compare_device_paths(ptr noundef %hdev, ptr noundef %8, i8 noundef zeroext 47) #6
  br i1 %call.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %kref.i.i = getelementptr inbounds %struct.cougar_shared, ptr %shared.0.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #6, !srcloc !81
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !82

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.cougar_get_shared_data.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !83

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.cougar_get_shared_data.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cougar_get_shared_data.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %cougar_get_shared_data.exit.i

cougar_get_shared_data.exit.i:                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.cougar_get_shared_data.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %shared.0.i.i, null
  br i1 %tobool.not.i, label %cougar_get_shared_data.exit.i.if.then.i_crit_edge, label %cougar_get_shared_data.exit.i.if.end4.i_crit_edge

cougar_get_shared_data.exit.i.if.end4.i_crit_edge: ; preds = %cougar_get_shared_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

cougar_get_shared_data.exit.i.if.then.i_crit_edge: ; preds = %cougar_get_shared_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %cougar_get_shared_data.exit.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #10
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.cougar_bind_shared_data.exit.thread_crit_edge, label %if.end.i

if.then.i.cougar_bind_shared_data.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cougar_bind_shared_data.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %kref.i = getelementptr inbounds %struct.cougar_shared, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  %12 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %kref.i, align 8
  %dev.i = getelementptr inbounds %struct.cougar_shared, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hdev, ptr %dev.i, align 8
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cougar_udev_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %14, ptr noundef nonnull @cougar_udev_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @cougar_udev_list, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cougar_udev_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i.i, ptr %14, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.i.i, %if.end.i.if.end4.i_crit_edge, %cougar_get_shared_data.exit.i.if.end4.i_crit_edge
  %shared.0.i = phi ptr [ %shared.0.i.i, %cougar_get_shared_data.exit.i.if.end4.i_crit_edge ], [ %call7.i.i.i, %if.end.i.if.end4.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  %shared5.i = getelementptr inbounds %struct.cougar, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %shared5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %shared.0.i, ptr %shared5.i, align 4
  %call.i22.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cougar_remove_shared_data, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i.i, label %if.end19, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cougar_remove_shared_data(ptr noundef nonnull %call.i) #6
  br label %cougar_bind_shared_data.exit.thread

cougar_bind_shared_data.exit.thread:              ; preds = %if.then9.i, %if.then.i.cougar_bind_shared_data.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then.i.cougar_bind_shared_data.exit.thread_crit_edge ], [ %call.i22.i, %if.then9.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @cougar_udev_list_lock) #6
  br label %fail_stop_and_cleanup

if.end19:                                         ; preds = %if.end4.i
  tail call void @mutex_unlock(ptr noundef nonnull @cougar_udev_list_lock) #6
  %19 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %collection, align 8
  %usage21 = getelementptr inbounds %struct.hid_collection, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %usage21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usage21, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %22, label %if.end19.cleanup_crit_edge [
    i32 65542, label %if.then23
    i32 -16711936, label %if.end19.for.cond.i_crit_edge
  ]

if.end19.for.cond.i_crit_edge:                    ; preds = %if.end19
  br label %for.cond.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %24 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inputs, align 8
  %cmp31.not97 = icmp eq ptr %25, %inputs
  br i1 %cmp31.not97, label %if.then23.cleanup_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then23.for.body_crit_edge
  %hidinput.098 = phi ptr [ %next.099, %for.inc.for.body_crit_edge ], [ %25, %if.then23.for.body_crit_edge ]
  %26 = ptrtoint ptr %hidinput.098 to i32
  call void @__asan_load4_noabort(i32 %26)
  %next.099 = load ptr, ptr %hidinput.098, align 4
  %registered = getelementptr inbounds %struct.hid_input, ptr %hidinput.098, i32 0, i32 4
  %27 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %registered, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not = icmp eq i8 %28, 0
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %input = getelementptr inbounds %struct.hid_input, ptr %hidinput.098, i32 0, i32 2
  %29 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input, align 4
  %cmp33.not = icmp eq ptr %30, null
  br i1 %cmp33.not, label %land.lhs.true.for.inc_crit_edge, label %if.then34

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %shared5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shared5.i, align 4
  %input36 = getelementptr inbounds %struct.cougar_shared, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %input36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %input36, align 4
  %34 = load ptr, ptr %shared5.i, align 4
  %enabled = getelementptr inbounds %struct.cougar_shared, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp31.not = icmp eq ptr %next.099, %inputs
  br i1 %cmp31.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %for.inc.i, %if.end19.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %if.end19.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x [2 x i8]], ptr @cougar_mapping, i32 0, i32 %i.0.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %37, label %for.inc.i [
    i8 0, label %do.end15.i
    i8 120, label %if.then.i91
  ]

if.then.i91:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = load i8, ptr @g6_is_space, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not.i = icmp eq i8 %39, 0
  %conv7.i = select i1 %tobool5.not.i, i8 -68, i8 57
  %arrayidx9.i = getelementptr [8 x [2 x i8]], ptr @cougar_mapping, i32 0, i32 %i.0.i, i32 1
  %40 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv7.i, ptr %arrayidx9.i, align 1
  %cond12.i = select i1 %tobool5.not.i, ptr @.str.4, ptr @.str.3
  %call.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond12.i) #9
  br label %cougar_fix_g6_mapping.exit

for.inc.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %i.0.i, 1
  br label %for.cond.i

do.end15.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cougar_fix_g6_mapping.exit

cougar_fix_g6_mapping.exit:                       ; preds = %do.end15.i, %if.then.i91
  %call49 = tail call i32 @hid_hw_open(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cougar_fix_g6_mapping.exit.cleanup_crit_edge, label %cougar_fix_g6_mapping.exit.fail_stop_and_cleanup_crit_edge

cougar_fix_g6_mapping.exit.fail_stop_and_cleanup_crit_edge: ; preds = %cougar_fix_g6_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_stop_and_cleanup

cougar_fix_g6_mapping.exit.cleanup_crit_edge:     ; preds = %cougar_fix_g6_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail_stop_and_cleanup:                            ; preds = %cougar_fix_g6_mapping.exit.fail_stop_and_cleanup_crit_edge, %cougar_bind_shared_data.exit.thread
  %error.0 = phi i32 [ %call49, %cougar_fix_g6_mapping.exit.fail_stop_and_cleanup_crit_edge ], [ %retval.0.i.ph, %cougar_bind_shared_data.exit.thread ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_stop_and_cleanup, %cougar_fix_g6_mapping.exit.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then34, %if.then23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i89, %do.end ], [ %call8, %do.end13 ], [ %error.0, %fail_stop_and_cleanup ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %cougar_fix_g6_mapping.exit.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cougar_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %shared = getelementptr inbounds %struct.cougar, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr inbounds %struct.cougar_shared, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_hw_close(ptr noundef %hdev) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cougar_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shared1 = getelementptr inbounds %struct.cougar, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.cougar_shared, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %input = getelementptr inbounds %struct.cougar_shared, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %arrayidx8 = getelementptr i8, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %14 = load i8, ptr @cougar_mapping, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not48 = icmp eq i8 %14, 0
  br i1 %tobool11.not48, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %15 = phi i8 [ %21, %for.inc.for.body_crit_edge ], [ %14, %if.end7.for.body_crit_edge ]
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %15)
  %cmp = icmp eq i8 %11, %15
  br i1 %cmp, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr [8 x [2 x i8]], ptr @cougar_mapping, i32 0, i32 %i.049, i32 1
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %conv21 = zext i8 %13 to i32
  tail call void @input_event(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %conv20, i32 noundef %conv21) #6
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.049, 1
  %arrayidx9 = getelementptr [8 x [2 x i8]], ptr @cougar_mapping, i32 0, i32 %inc
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 1
  %tobool11.not = icmp eq i8 %21, 0
  br i1 %tobool11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp25.not = icmp eq i8 %13, 0
  br i1 %cmp25.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %conv28 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %if.then16, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then16 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cougar_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readnone %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %rdesc, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp = icmp eq i8 %1, 9
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %rdesc, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp4 = icmp eq i8 %3, 2
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr i8, ptr %rdesc, i32 116
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %5)
  %cmp11 = icmp ugt i8 %5, 47
  br i1 %cmp11, label %do.end, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr i8, ptr %rdesc, i32 115
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %arrayidx7, align 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 47, ptr %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %rdesc
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cougar_remove_shared_data(ptr nocapture noundef %resource) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.cougar, ptr %resource, i32 0, i32 1
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.cougar_shared, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !85
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @mutex_lock_nested(ptr noundef nonnull @cougar_udev_list_lock, i32 noundef 0) #6
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.cougar_release_shared_data.exit.i_crit_edge

if.then.i.cougar_release_shared_data.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cougar_release_shared_data.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr %struct.cougar_shared, ptr %1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %cougar_release_shared_data.exit.i

cougar_release_shared_data.exit.i:                ; preds = %if.end.i.i.i.i, %if.then.i.cougar_release_shared_data.exit.i_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i.i = getelementptr %struct.cougar_shared, ptr %1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cougar_udev_list_lock) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %cougar_release_shared_data.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %11 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %shared, align 4
  br label %if.end

if.end:                                           ; preds = %kref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_compare_device_paths(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-cougar.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-cougar.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-cougar.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_key_mappings227, !8, !"__UNIQUE_ID_key_mappings227", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-cougar.c", i32 17, i32 1}
!9 = !{ptr @__UNIQUE_ID_g6_is_space228, !10, !"__UNIQUE_ID_g6_is_space228", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-cougar.c", i32 20, i32 1}
!11 = !{ptr @__param_g6_is_space, !12, !"__param_g6_is_space", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-cougar.c", i32 321, i32 1}
!13 = !{ptr @__initcall__kmod_hid_cougar__229_341_cougar_driver_init6, !14, !"__initcall__kmod_hid_cougar__229_341_cougar_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-cougar.c", i32 341, i32 1}
!15 = !{ptr @__exitcall_cougar_driver_exit, !14, !"__exitcall_cougar_driver_exit", i1 false, i1 false}
!16 = !{ptr @__param_str_g6_is_space, !12, !"__param_str_g6_is_space", i1 false, i1 false}
!17 = !{ptr @cougar_g6_is_space_ops, !18, !"cougar_g6_is_space_ops", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-cougar.c", i32 317, i32 38}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-cougar.c", i32 95, i32 4}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cougar_fix_g6_mapping._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @cougar_fix_g6_mapping._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-cougar.c", i32 100, i32 2}
!29 = !{ptr @cougar_fix_g6_mapping._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cougar_fix_g6_mapping._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @cougar_mapping, !32, !"cougar_mapping", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-cougar.c", i32 48, i32 22}
!33 = !{ptr @g6_is_space, !34, !"g6_is_space", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-cougar.c", i32 19, i32 13}
!35 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-cougar.c", i32 333, i32 12}
!38 = !{ptr @cougar_driver, !39, !"cougar_driver", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-cougar.c", i32 332, i32 26}
!40 = !{ptr @cougar_id_table, !41, !"cougar_id_table", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-cougar.c", i32 323, i32 35}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-cougar.c", i32 208, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cougar_probe._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @cougar_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-cougar.c", i32 220, i32 3}
!51 = !{ptr @cougar_probe._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cougar_probe._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-cougar.c", i32 82, i32 8}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cougar_udev_list_lock, !54, !"cougar_udev_list_lock", i1 false, i1 false}
!57 = !{ptr @cougar_udev_list, !58, !"cougar_udev_list", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-cougar.c", i32 81, i32 8}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-cougar.c", i32 285, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cougar_raw_event._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @cougar_raw_event._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-cougar.c", i32 111, i32 3}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cougar_report_fixup._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @cougar_report_fixup._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148208768, i64 2148208800, i64 2148208829, i64 2148208863, i64 2148208894, i64 2148208917}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2148296769}
!85 = !{i64 2148211233, i64 2148211265, i64 2148211294, i64 2148211328, i64 2148211359, i64 2148211382}
!86 = !{i64 2149912521}
