; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-dr.c_pt.bc'
source_filename = "../drivers/hid/hid-dr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_dr__224_317_dr_driver_init6 = internal global ptr @dr_driver_init, section ".initcall6.init", align 4
@dr_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @dr_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @dr_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dr_report_fixup, ptr @dr_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dr_driver_exit = internal global ptr @dr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file225 = internal constant [31 x i8] c"hid_dr.file=drivers/hid/hid-dr\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [19 x i8] c"hid_dr.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hid_dr\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dragonrise\00", [21 x i8] zeroinitializer }, align 32
@dr_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 121, i32 6, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 17, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dr_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dr_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hid/hid-dr.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DragonRise Inc. HID hardware probe...\00", [58 x i8] zeroinitializer }, align 32
@dr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_probe._entry_ptr = internal global ptr @dr_probe._entry, section ".printk_index", align 4
@dr_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@dr_probe._entry_ptr.10 = internal global ptr @dr_probe._entry.8, section ".printk_index", align 4
@dr_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"force feedback init failed\0A\00", [36 x i8] zeroinitializer }, align 32
@dr_probe._entry_ptr.13 = internal global ptr @dr_probe._entry.11, section ".printk_index", align 4
@drff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 85, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drff_init\00", [22 x i8] zeroinitializer }, align 32
@drff_init._entry_ptr = internal global ptr @drff_init._entry, section ".printk_index", align 4
@drff_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no output reports found\0A\00", [39 x i8] zeroinitializer }, align 32
@drff_init._entry_ptr.18 = internal global ptr @drff_init._entry.16, section ".printk_index", align 4
@drff_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no fields in the report\0A\00", [39 x i8] zeroinitializer }, align 32
@drff_init._entry_ptr.21 = internal global ptr @drff_init._entry.19, section ".printk_index", align 4
@drff_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 103, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not enough values in the field\0A\00", [32 x i8] zeroinitializer }, align 32
@drff_init._entry_ptr.24 = internal global ptr @drff_init._entry.22, section ".printk_index", align 4
@drff_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.3, i32 130, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Force Feedback for DragonRise Inc. game controllers by Richard Walmsley <richwalm@gmail.com>\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@drff_init._entry_ptr.28 = internal global ptr @drff_init._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@drff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: called with 0x%04x 0x%04x\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drff_play\00", [22 x i8] zeroinitializer }, align 32
@drff_play._entry_ptr = internal global ptr @drff_play._entry, section ".printk_index", align 4
@drff_play._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: running with 0x%02x 0x%02x\00", [63 x i8] zeroinitializer }, align 32
@drff_play._entry_ptr.33 = internal global ptr @drff_play._entry.31, section ".printk_index", align 4
@pid0011_rdesc_fixed = internal global { [50 x i8], [46 x i8] } { [50 x i8] c"\05\01\09\04\A1\01\A1\02\14u\08\95\03\81\01&\FF\00\95\02\090\091\81\02u\01\95\04\81\01%\01\95\0A\05\09\19\01)\0A\81\02\95\0A\81\01\C0\C0", [46 x i8] zeroinitializer }, align 32
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.hid_map_usage, ptr @.str.36, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"dr_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 310, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 317, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 311, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"dr_devices\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 303, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 273, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 277, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 283, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 291, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 85, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 92, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 98, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 103, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 129, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 41, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 68, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"pid0011_rdesc_fixed\00", align 1
@___asan_gen_.134 = private constant [24 x i8] c"../drivers/hid/hid-dr.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 202, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 1036, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_dr_driver_exit, ptr @__initcall__kmod_hid_dr__224_317_dr_driver_init6, ptr @dr_driver_exit, ptr @dr_probe._entry, ptr @dr_probe._entry.11, ptr @dr_probe._entry.8, ptr @dr_probe._entry_ptr, ptr @dr_probe._entry_ptr.10, ptr @dr_probe._entry_ptr.13, ptr @drff_init._entry, ptr @drff_init._entry.16, ptr @drff_init._entry.19, ptr @drff_init._entry.22, ptr @drff_init._entry.25, ptr @drff_init._entry_ptr, ptr @drff_init._entry_ptr.18, ptr @drff_init._entry_ptr.21, ptr @drff_init._entry_ptr.24, ptr @drff_init._entry_ptr.28, ptr @drff_play._entry, ptr @drff_play._entry.31, ptr @drff_play._entry_ptr, ptr @drff_play._entry_ptr.33, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @dr_driver, ptr @.str, ptr @.str.1, ptr @dr_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @pid0011_rdesc_fixed, ptr @hid_map_usage._rs, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drff_play._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid0011_rdesc_fixed to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @dr_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @dr_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %sw.bb, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end18
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %2 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.14) #9
  br label %do.end24

if.end.i:                                         ; preds = %sw.bb
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %input.i = getelementptr inbounds %struct.hid_input, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input.i, align 4
  %6 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.i107.not.i = icmp eq ptr %7, %report_list1.i
  br i1 %cmp.i107.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.17) #9
  br label %do.end24

if.end11.i:                                       ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev20.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.20) #9
  br label %do.end24

if.end21.i:                                       ; preds = %if.end11.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp23.i = icmp ult i32 %13, 7
  br i1 %cmp23.i, label %do.end27.i, label %if.end29.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev28.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.23) #9
  br label %do.end24

if.end29.i:                                       ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 4) #10
  %tobool31.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool31.not.i, label %if.end29.i.do.end24_crit_edge, label %if.end33.i

if.end29.i.do.end24_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end33.i:                                       ; preds = %if.end29.i
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit.i) #6
  %call34.i = tail call i32 @input_ff_create_memless(ptr noundef %5, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @drff_play) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %drff_init.exit, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %do.end24

drff_init.exit:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %call7.i.i.i, align 8
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 243, ptr %19, align 4
  %21 = load ptr, ptr %call7.i.i.i, align 8
  %field44.i = getelementptr inbounds %struct.hid_report, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %field44.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %field44.i, align 4
  %value46.i = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %value46.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value46.i, align 4
  %arrayidx47.i = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx47.i, align 4
  %27 = load ptr, ptr %call7.i.i.i, align 8
  %field49.i = getelementptr inbounds %struct.hid_report, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %field49.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %field49.i, align 4
  %value51.i = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value51.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value51.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx52.i, align 4
  %33 = load ptr, ptr %call7.i.i.i, align 8
  %field54.i = getelementptr inbounds %struct.hid_report, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %field54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %field54.i, align 4
  %value56.i = getelementptr inbounds %struct.hid_field, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %value56.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %value56.i, align 4
  %arrayidx57.i = getelementptr i32, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx57.i, align 4
  %39 = load ptr, ptr %call7.i.i.i, align 8
  %field59.i = getelementptr inbounds %struct.hid_report, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %field59.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %field59.i, align 4
  %value61.i = getelementptr inbounds %struct.hid_field, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %value61.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value61.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %43, i32 4
  %44 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx62.i, align 4
  %45 = load ptr, ptr %call7.i.i.i, align 8
  %field64.i = getelementptr inbounds %struct.hid_report, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %field64.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %field64.i, align 4
  %value66.i = getelementptr inbounds %struct.hid_field, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %value66.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %value66.i, align 4
  %arrayidx67.i = getelementptr i32, ptr %49, i32 5
  %50 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx67.i, align 4
  %51 = load ptr, ptr %call7.i.i.i, align 8
  %field69.i = getelementptr inbounds %struct.hid_report, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %field69.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %field69.i, align 4
  %value71.i = getelementptr inbounds %struct.hid_field, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %value71.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value71.i, align 4
  %arrayidx72.i = getelementptr i32, ptr %55, i32 6
  %56 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx72.i, align 4
  %57 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %57, i32 noundef 9) #6
  %dev77.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.i, ptr noundef nonnull @.str.26) #9
  br label %cleanup

do.end24:                                         ; preds = %if.then36.i, %if.end29.i.do.end24_crit_edge, %do.end27.i, %do.end19.i, %do.end9.i, %do.end.i
  %retval.0.i38.ph = phi i32 [ -12, %if.end29.i.do.end24_crit_edge ], [ %call34.i, %if.then36.i ], [ -19, %do.end27.i ], [ -19, %do.end19.i ], [ -19, %do.end9.i ], [ -19, %do.end.i ]
  %dev25 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.12) #9
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %drff_init.exit, %if.end18.cleanup_crit_edge, %do.end16, %do.end8
  %retval.0 = phi i32 [ 0, %drff_init.exit ], [ 0, %if.end18.cleanup_crit_edge ], [ %call.i, %do.end8 ], [ %call11, %do.end16 ], [ %retval.0.i38.ph, %do.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dr_report_fixup(ptr nocapture noundef readonly %hdev, ptr noundef readnone %rdesc, ptr nocapture noundef %rsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cond = icmp eq i32 %1, 17
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %3)
  %cmp = icmp eq i32 %3, 101
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 50, ptr %rsize, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rdesc.addr.0 = phi ptr [ @pid0011_rdesc_fixed, %if.then ], [ %rdesc, %sw.bb.sw.epilog_crit_edge ], [ %rdesc, %entry.sw.epilog_crit_edge ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_input_mapping(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %.off = add i32 %1, -65584
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off)
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %1, 15
  %input1.i12 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %4 = ptrtoint ptr %input1.i12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1.i12, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %relbit.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end18.i, !prof !83

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.then.i.return.sink.split_crit_edge, label %do.end.i

if.then.i.return.sink.split_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %7, i32 noundef %and4, i32 noundef 2) #9
  br label %return.sink.split

if.end18.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %type19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %8 = ptrtoint ptr %type19.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %type19.i, align 4
  %conv20.i = trunc i32 %and4 to i16
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %9 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv20.i, ptr %code.i, align 2
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15, ptr %max, align 4
  br label %return.sink.split

if.else:                                          ; preds = %sw.bb
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 8
  %tobool.not.i13 = icmp eq ptr %absbit.i, null
  br i1 %tobool.not.i13, label %if.then.i16, label %if.end18.i22, !prof !83

if.then.i16:                                      ; preds = %if.else
  %call.i14 = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool14.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool14.not.i15, label %if.then.i16.return.sink.split_crit_edge, label %do.end.i18

if.then.i16.return.sink.split_crit_edge:          ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.end.i18:                                       ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %call17.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %12, i32 noundef %and4, i32 noundef 3) #9
  br label %return.sink.split

if.end18.i22:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %type19.i19 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %type19.i19, align 4
  %conv20.i20 = trunc i32 %and4 to i16
  %code.i21 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i21 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv20.i20, ptr %code.i21, align 2
  %15 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 63, ptr %max, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end18.i22, %do.end.i18, %if.then.i16.return.sink.split_crit_edge, %if.end18.i, %do.end.i, %if.then.i.return.sink.split_crit_edge
  %relbit.i.sink = phi ptr [ %relbit.i, %if.then.i.return.sink.split_crit_edge ], [ %relbit.i, %do.end.i ], [ %relbit.i, %if.end18.i ], [ %absbit.i, %if.then.i16.return.sink.split_crit_edge ], [ %absbit.i, %do.end.i18 ], [ %absbit.i, %if.end18.i22 ]
  %16 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %relbit.i.sink, ptr %bit, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  %conv2 = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %6 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %3 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv2) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool8.not = icmp eq i16 %5, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %do.end6.if.end52_crit_edge, label %if.then9

do.end6.if.end52_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %div97 = udiv i16 %3, 257
  %div.zext = zext i16 %div97 to i32
  %div1198 = udiv i16 %5, 257
  %div11.zext = zext i16 %div1198 to i32
  %conv2.off = add nsw i32 %conv2, -2570
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %conv2.off)
  %7 = icmp ult i32 %conv2.off, 257
  %spec.store.select = select i1 %7, i32 11, i32 %div11.zext
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 81, ptr %13, align 4
  %15 = load ptr, ptr %data, align 4
  %field17 = getelementptr inbounds %struct.hid_report, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %field17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %field17, align 4
  %value19 = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %value19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value19, align 4
  %arrayidx20 = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx20, align 4
  %21 = load ptr, ptr %data, align 4
  %field22 = getelementptr inbounds %struct.hid_report, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %field22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %field22, align 4
  %value24 = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %value24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value24, align 4
  %arrayidx25 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select, ptr %arrayidx25, align 4
  %27 = load ptr, ptr %data, align 4
  %field27 = getelementptr inbounds %struct.hid_report, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %field27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %field27, align 4
  %value29 = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value29, align 4
  %arrayidx30 = getelementptr i32, ptr %31, i32 4
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.zext, ptr %arrayidx30, align 4
  %33 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %33, i32 noundef 9) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then9, %do.end6.if.end52_crit_edge
  %.sink102 = phi i32 [ 250, %if.then9 ], [ 243, %do.end6.if.end52_crit_edge ]
  %.sink = phi i32 [ 254, %if.then9 ], [ 0, %do.end6.if.end52_crit_edge ]
  %strong.0 = phi i32 [ %div.zext, %if.then9 ], [ 0, %do.end6.if.end52_crit_edge ]
  %weak.0 = phi i32 [ %spec.store.select, %if.then9 ], [ 0, %do.end6.if.end52_crit_edge ]
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %field43 = getelementptr inbounds %struct.hid_report, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %field43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %field43, align 4
  %value45 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value45, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink102, ptr %39, align 4
  %41 = load ptr, ptr %data, align 4
  %field48 = getelementptr inbounds %struct.hid_report, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %field48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %field48, align 4
  %value50 = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value50, align 4
  %arrayidx51 = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %arrayidx51, align 4
  %47 = load ptr, ptr %data, align 4
  %field54 = getelementptr inbounds %struct.hid_report, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %field54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %field54, align 4
  %value56 = getelementptr inbounds %struct.hid_field, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %value56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %value56, align 4
  %arrayidx57 = getelementptr i32, ptr %51, i32 2
  %52 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx57, align 4
  %53 = load ptr, ptr %data, align 4
  %field59 = getelementptr inbounds %struct.hid_report, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %field59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %field59, align 4
  %value61 = getelementptr inbounds %struct.hid_field, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %value61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %value61, align 4
  %arrayidx62 = getelementptr i32, ptr %57, i32 4
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %arrayidx62, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %59 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool64.not = icmp eq i32 %59, 0
  br i1 %tobool64.not, label %if.end52.do.end73_crit_edge, label %do.end68

if.end52.do.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

do.end68:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, i32 noundef %strong.0, i32 noundef %weak.0) #9
  br label %do.end73

do.end73:                                         ; preds = %do.end68, %if.end52.do.end73_crit_edge
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %61, i32 noundef 9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_hid_dr__224_317_dr_driver_init6, !1, !"__initcall__kmod_hid_dr__224_317_dr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-dr.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_dr_driver_exit, !1, !"__exitcall_dr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file225, !4, !"__UNIQUE_ID_file225", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-dr.c", i32 319, i32 1}
!5 = !{ptr @__UNIQUE_ID_license226, !4, !"__UNIQUE_ID_license226", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-dr.c", i32 311, i32 10}
!9 = !{ptr @dr_driver, !10, !"dr_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-dr.c", i32 310, i32 26}
!11 = !{ptr @dr_devices, !12, !"dr_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-dr.c", i32 303, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-dr.c", i32 273, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dr_probe.__UNIQUE_ID_ddebug223, !14, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-dr.c", i32 277, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dr_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @dr_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-dr.c", i32 283, i32 3}
!26 = !{ptr @dr_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dr_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-dr.c", i32 291, i32 4}
!30 = !{ptr @dr_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dr_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-dr.c", i32 85, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @drff_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @drff_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-dr.c", i32 92, i32 3}
!39 = !{ptr @drff_init._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @drff_init._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-dr.c", i32 98, i32 3}
!43 = !{ptr @drff_init._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @drff_init._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-dr.c", i32 103, i32 3}
!47 = !{ptr @drff_init._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @drff_init._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-dr.c", i32 129, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @drff_init._entry.25, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @drff_init._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-dr.c", i32 41, i32 2}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @drff_play._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @drff_play._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-dr.c", i32 68, i32 2}
!61 = !{ptr @drff_play._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @drff_play._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @pid0011_rdesc_fixed, !64, !"pid0011_rdesc_fixed", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-dr.c", i32 202, i32 13}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!67 = !{ptr @hid_map_usage._rs, !66, !"_rs", i1 false, i1 false}
!68 = !{ptr @__func__.hid_map_usage, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hid_map_usage._entry, !66, !"_entry", i1 false, i1 false}
!72 = !{ptr @hid_map_usage._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2149040369, i64 2149040374, i64 2149040387, i64 2149040431, i64 2149040465, i64 2149040486}
!83 = !{!"branch_weights", i32 1, i32 2000}
