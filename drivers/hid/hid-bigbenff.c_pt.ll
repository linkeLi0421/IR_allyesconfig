; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-bigbenff.c_pt.bc'
source_filename = "../drivers/hid/hid-bigbenff.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bigben_device = type { ptr, ptr, i8, i8, i8, i8, [4 x ptr], i8, i8, %struct.work_struct }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_bigbenff__223_429_bigben_driver_init6 = internal global ptr @bigben_driver_init, section ".initcall6.init", align 4
@bigben_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @bigben_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @bigben_probe, ptr @bigben_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bigben_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bigben_driver_exit = internal global ptr @bigben_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [43 x i8] c"hid_bigbenff.file=drivers/hid/hid-bigbenff\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [25 x i8] c"hid_bigbenff.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hid_bigbenff\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bigben\00", [25 x i8] zeroinitializer }, align 32
@bigben_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 5227, i32 2306, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bigben_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bigben_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hid/hid-bigbenff.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bigben_probe._entry_ptr = internal global ptr @bigben_probe._entry, section ".printk_index", align 4
@bigben_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@bigben_probe._entry_ptr.9 = internal global ptr @bigben_probe._entry.7, section ".printk_index", align 4
@bigben_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&bigben->worker)\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:red:bigben%d\00", [16 x i8] zeroinitializer }, align 32
@bigben_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 396, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"LED and force feedback support for BigBen gamepad\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bigben_probe._entry_ptr.15 = internal global ptr @bigben_probe._entry.12, section ".printk_index", align 4
@hid_bigben_play_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no device data\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hid_bigben_play_effect\00", [41 x i8] zeroinitializer }, align 32
@hid_bigben_play_effect._entry_ptr = internal global ptr @hid_bigben_play_effect._entry, section ".printk_index", align 4
@bigben_get_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bigben_get_led\00", [17 x i8] zeroinitializer }, align 32
@bigben_get_led._entry_ptr = internal global ptr @bigben_get_led._entry, section ".printk_index", align 4
@bigben_set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.19, ptr @.str.4, i32 264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bigben_set_led\00", [17 x i8] zeroinitializer }, align 32
@bigben_set_led._entry_ptr = internal global ptr @bigben_set_led._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pid0902_rdesc_fixed = internal global { [141 x i8], [51 x i8] } { [141 x i8] c"\05\01\09\05\A1\01\15\00%\015\00E\01u\01\95\0D\05\09\09\05\09\01\09\02\09\04\09\07\09\08\09\09\09\0A\09\0B\09\0C\09\0E\09\0F\09\0D\81\02u\01\95\03\81\01\05\01%\07F;\01u\04\95\01e\14\099\81Be\00\95\01\81\01&\FF\00F\FF\00\090\091\093\094u\08\95\04\81\02\95\0A\81\01\05\01&\FF\00F\FF\00\092\095\95\02\81\02\95\08\81\01\06\00\FF\B1\02\0A!&\95\08\91\02\0A!&\95\08\81\02\C0", [51 x i8] zeroinitializer }, align 32
@bigben_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 412, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unexpected rdesc, please submit for review\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bigben_report_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bigben_report_fixup._entry_ptr = internal global ptr @bigben_report_fixup._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"bigben_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 422, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 429, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 423, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"bigben_devices\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 416, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 336, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 342, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 353, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 374, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 396, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 233, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 295, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 264, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"pid0902_rdesc_fixed\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 102, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [30 x i8] c"../drivers/hid/hid-bigbenff.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 412, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_bigben_driver_exit, ptr @__initcall__kmod_hid_bigbenff__223_429_bigben_driver_init6, ptr @bigben_driver_exit, ptr @bigben_get_led._entry, ptr @bigben_get_led._entry_ptr, ptr @bigben_probe._entry, ptr @bigben_probe._entry.12, ptr @bigben_probe._entry.7, ptr @bigben_probe._entry_ptr, ptr @bigben_probe._entry_ptr.15, ptr @bigben_probe._entry_ptr.9, ptr @bigben_report_fixup._entry, ptr @bigben_report_fixup._entry_ptr, ptr @bigben_set_led._entry, ptr @bigben_set_led._entry_ptr, ptr @hid_bigben_play_effect._entry, ptr @hid_bigben_play_effect._entry_ptr, ptr @bigben_driver, ptr @.str, ptr @.str.1, ptr @bigben_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @bigben_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pid0902_rdesc_fixed, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_bigben_play_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_get_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid0902_rdesc_fixed to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bigben_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bigben_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @bigben_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bigben_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @bigben_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bigben_probe(ptr noundef %hid, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hid, ptr %call.i, align 4
  %removed = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %removed, align 4
  %call.i120 = tail call i32 @hid_open_report(ptr noundef %hid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool3.not = icmp eq i32 %call.i120, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @hid_hw_start(ptr noundef %hid, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %report_list15 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %3 = ptrtoint ptr %report_list15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %report_list15, align 4
  %report = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %report to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %report, align 4
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %6 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inputs, align 8
  %input = getelementptr inbounds %struct.hid_input, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit) #6
  %worker = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %worker, i32 noundef 0) #6
  %10 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @bigben_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry24 = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bigben_worker, ptr %func, align 4
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  %call29 = tail call i32 @input_ff_create_memless(ptr noundef %15, ptr noundef null, ptr noundef nonnull @hid_bigben_play_effect) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end14.error_hw_stop_crit_edge

if.end14.error_hw_stop_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_hw_stop

if.end32:                                         ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.end32.dev_name.exit_crit_edge ]
  %call35 = tail call i32 @strlen(ptr noundef %retval.0.i) #10
  %add36 = add i32 %call35, 13
  %add38 = add i32 %call35, 413
  br label %for.cond

for.cond:                                         ; preds = %dev_name.exit126.for.cond_crit_edge, %dev_name.exit
  %n.0 = phi i32 [ 0, %dev_name.exit ], [ %add46, %dev_name.exit126.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n.0)
  %exitcond.not = icmp eq i32 %n.0, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call.i121 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add38, i32 noundef 3520) #6
  %tobool40.not = icmp eq ptr %call.i121, null
  br i1 %tobool40.not, label %for.body.error_hw_stop_crit_edge, label %if.end42

for.body.error_hw_stop_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_hw_stop

if.end42:                                         ; preds = %for.body
  %arrayidx43 = getelementptr %struct.led_classdev, ptr %call.i121, i32 1
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i123 = icmp eq ptr %21, null
  br i1 %tobool.not.i123, label %if.end.i124, label %if.end42.dev_name.exit126_crit_edge

if.end42.dev_name.exit126_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit126

if.end.i124:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit126

dev_name.exit126:                                 ; preds = %if.end.i124, %if.end42.dev_name.exit126_crit_edge
  %retval.0.i125 = phi ptr [ %23, %if.end.i124 ], [ %21, %if.end42.dev_name.exit126_crit_edge ]
  %add46 = add nuw nsw i32 %n.0, 1
  %call47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx43, i32 noundef %add36, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i125, i32 noundef %add46)
  %24 = ptrtoint ptr %call.i121 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx43, ptr %call.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0)
  %cmp49 = icmp eq i32 %n.0, 0
  %cond = zext i1 %cmp49 to i32
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i121, i32 0, i32 1
  %25 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i121, i32 0, i32 2
  %26 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %max_brightness, align 4
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %call.i121, i32 0, i32 7
  %27 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bigben_get_led, ptr %brightness_get, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call.i121, i32 0, i32 5
  %28 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bigben_set_led, ptr %brightness_set, align 4
  %arrayidx50 = getelementptr %struct.bigben_device, ptr %call.i, i32 0, i32 6, i32 %n.0
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i121, ptr %arrayidx50, align 4
  %call.i127 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i121, ptr noundef null) #6
  %tobool53.not = icmp eq i32 %call.i127, 0
  br i1 %tobool53.not, label %dev_name.exit126.for.cond_crit_edge, label %dev_name.exit126.error_hw_stop_crit_edge

dev_name.exit126.error_hw_stop_crit_edge:         ; preds = %dev_name.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_hw_stop

dev_name.exit126.for.cond_crit_edge:              ; preds = %dev_name.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %led_state = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %led_state, align 1
  %right_motor_on = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %right_motor_on to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %right_motor_on, align 2
  %left_motor_force = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %left_motor_force to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %left_motor_force, align 1
  %work_led = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %work_led to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %work_led, align 4
  %work_ff = getelementptr inbounds %struct.bigben_device, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %work_ff to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %work_ff, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %worker) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

error_hw_stop:                                    ; preds = %dev_name.exit126.error_hw_stop_crit_edge, %for.body.error_hw_stop_crit_edge, %if.end14.error_hw_stop_crit_edge
  %error.0 = phi i32 [ %call29, %if.end14.error_hw_stop_crit_edge ], [ -12, %for.body.error_hw_stop_crit_edge ], [ %call.i127, %dev_name.exit126.error_hw_stop_crit_edge ]
  tail call void @hid_hw_stop(ptr noundef %hid) #6
  br label %cleanup

cleanup:                                          ; preds = %error_hw_stop, %for.end, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i120, %do.end ], [ %call7, %do.end12 ], [ %error.0, %error_hw_stop ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bigben_remove(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %removed = getelementptr inbounds %struct.bigben_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %removed, align 4
  %worker = getelementptr inbounds %struct.bigben_device, ptr %1, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %worker) #6
  tail call void @hid_hw_stop(ptr noundef %hid) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bigben_report_fixup(ptr noundef %hid, ptr noundef readnone %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %1)
  %cmp = icmp eq i32 %1, 137
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 141, ptr %rsize, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %rdesc.addr.0 = phi ptr [ @pid0902_rdesc_fixed, %if.then ], [ %rdesc, %do.end ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bigben_worker(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %report = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %field, align 4
  %removed = getelementptr i8, ptr %work, i32 -24
  %4 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %removed, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %tobool1.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_led = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %work_led to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %work_led, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end21_crit_edge, label %if.then3

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %work_led to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %work_led, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %10, align 4
  %12 = load ptr, ptr %value, align 4
  %arrayidx7 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %arrayidx7, align 4
  %led_state = getelementptr i8, ptr %work, i32 -23
  %14 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %led_state, align 1
  %conv = zext i8 %15 to i32
  %16 = load ptr, ptr %value, align 4
  %arrayidx9 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %arrayidx9, align 4
  %18 = load ptr, ptr %value, align 4
  %arrayidx11 = getelementptr i32, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx11, align 4
  %20 = load ptr, ptr %value, align 4
  %arrayidx13 = getelementptr i32, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx13, align 4
  %22 = load ptr, ptr %value, align 4
  %arrayidx15 = getelementptr i32, ptr %22, i32 5
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx15, align 4
  %24 = load ptr, ptr %value, align 4
  %arrayidx17 = getelementptr i32, ptr %24, i32 6
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx17, align 4
  %26 = load ptr, ptr %value, align 4
  %arrayidx19 = getelementptr i32, ptr %26, i32 7
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx19, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %30 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %29, ptr noundef %31, i32 noundef 9) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then3, %if.end.if.end21_crit_edge
  %work_ff = getelementptr i8, ptr %work, i32 -3
  %32 = ptrtoint ptr %work_ff to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %work_ff, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not = icmp eq i8 %33, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %work_ff to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %work_ff, align 1
  %value25 = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %value25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value25, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %36, align 4
  %38 = load ptr, ptr %value25, align 4
  %arrayidx28 = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %arrayidx28, align 4
  %right_motor_on = getelementptr i8, ptr %work, i32 -22
  %40 = ptrtoint ptr %right_motor_on to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %right_motor_on, align 2
  %conv29 = zext i8 %41 to i32
  %42 = load ptr, ptr %value25, align 4
  %arrayidx31 = getelementptr i32, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv29, ptr %arrayidx31, align 4
  %left_motor_force = getelementptr i8, ptr %work, i32 -21
  %44 = ptrtoint ptr %left_motor_force to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %left_motor_force, align 1
  %conv32 = zext i8 %45 to i32
  %46 = load ptr, ptr %value25, align 4
  %arrayidx34 = getelementptr i32, ptr %46, i32 3
  %47 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv32, ptr %arrayidx34, align 4
  %48 = load ptr, ptr %value25, align 4
  %arrayidx36 = getelementptr i32, ptr %48, i32 4
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 255, ptr %arrayidx36, align 4
  %50 = load ptr, ptr %value25, align 4
  %arrayidx38 = getelementptr i32, ptr %50, i32 5
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx38, align 4
  %52 = load ptr, ptr %value25, align 4
  %arrayidx40 = getelementptr i32, ptr %52, i32 6
  %53 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx40, align 4
  %54 = load ptr, ptr %value25, align 4
  %arrayidx42 = getelementptr i32, ptr %54, i32 7
  %55 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx42, align 4
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 4
  %58 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %57, ptr noundef %59, i32 noundef 9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_bigben_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i41 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i41 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i41, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %5)
  %cmp.not = icmp eq i16 %5, 80
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %weak_magnitude, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not = icmp ne i16 %7, 0
  %conv8 = zext i1 %tobool7.not to i8
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %u, align 4
  %10 = lshr i16 %9, 8
  %conv11 = trunc i16 %10 to i8
  %right_motor_on13 = getelementptr inbounds %struct.bigben_device, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %right_motor_on13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %right_motor_on13, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %conv8)
  %cmp15.not = icmp eq i8 %12, %conv8
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end5.if.then22_crit_edge

if.end5.if.then22_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end5
  %left_motor_force18 = getelementptr inbounds %struct.bigben_device, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %left_motor_force18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %left_motor_force18, align 1
  %15 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %15)
  %cmp20.not = icmp eq i16 %10, %15
  br i1 %cmp20.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end5.if.then22_crit_edge
  %16 = ptrtoint ptr %right_motor_on13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %right_motor_on13, align 2
  %left_motor_force24 = getelementptr inbounds %struct.bigben_device, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %left_motor_force24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %left_motor_force24, align 1
  %work_ff = getelementptr inbounds %struct.bigben_device, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %work_ff to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %work_ff, align 1
  %worker = getelementptr inbounds %struct.bigben_device, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %worker) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bigben_get_led(ptr noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %7, %led
  br i1 %cmp3, label %for.body.preheader.if.then4_crit_edge, label %for.inc

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.then4:                                         ; preds = %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %for.body.preheader.if.then4_crit_edge
  %n.018.lcssa = phi i32 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 1, %for.inc.if.then4_crit_edge ], [ 2, %for.inc.1.if.then4_crit_edge ], [ 3, %for.inc.2.if.then4_crit_edge ]
  %led_state = getelementptr inbounds %struct.bigben_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_state, align 1
  %conv = zext i8 %9 to i32
  %10 = lshr i32 %conv, %n.018.lcssa
  %11 = and i32 %10, 1
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %13, %led
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.2 = icmp eq ptr %15, %led
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.3 = icmp eq ptr %17, %led
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ %11, %if.then4 ], [ 0, %do.end ], [ 0, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bigben_set_led(ptr noundef readonly %led, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %7, %led
  br i1 %cmp3, label %for.body.preheader.if.then4_crit_edge, label %for.inc

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.then4:                                         ; preds = %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %for.body.preheader.if.then4_crit_edge
  %n.049.lcssa = phi i32 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 1, %for.inc.if.then4_crit_edge ], [ 2, %for.inc.1.if.then4_crit_edge ], [ 3, %for.inc.2.if.then4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp5 = icmp eq i32 %value, 0
  %led_state = getelementptr inbounds %struct.bigben_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_state, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %n.049.lcssa
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %10 = trunc i32 %shl to i8
  br i1 %cmp5, label %if.then6, label %if.end23

if.then6:                                         ; preds = %if.then4
  %11 = xor i8 %10, -1
  %conv12 = and i8 %9, %11
  %12 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %led_state, align 1
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.then25_crit_edge

if.then6.if.then25_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.then4
  %conv22 = or i8 %9, %10
  %13 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22, ptr %led_state, align 1
  br i1 %tobool7.not, label %if.end23.if.then25_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.then6.if.then25_crit_edge
  %work_led = getelementptr inbounds %struct.bigben_device, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %work_led to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %work_led, align 4
  %worker = getelementptr inbounds %struct.bigben_device, ptr %5, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %worker) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %17, %led
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.2 = icmp eq ptr %19, %led
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.bigben_device, ptr %5, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.3 = icmp eq ptr %21, %led
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %if.then25, %if.end23.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_hid_bigbenff__223_429_bigben_driver_init6, !1, !"__initcall__kmod_hid_bigbenff__223_429_bigben_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-bigbenff.c", i32 429, i32 1}
!2 = !{ptr @__exitcall_bigben_driver_exit, !1, !"__exitcall_bigben_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-bigbenff.c", i32 431, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-bigbenff.c", i32 423, i32 10}
!9 = !{ptr @bigben_driver, !10, !"bigben_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-bigbenff.c", i32 422, i32 26}
!11 = !{ptr @bigben_devices, !12, !"bigben_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-bigbenff.c", i32 416, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-bigbenff.c", i32 336, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bigben_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @bigben_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-bigbenff.c", i32 342, i32 3}
!23 = !{ptr @bigben_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bigben_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @bigben_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-bigbenff.c", i32 353, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-bigbenff.c", i32 374, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-bigbenff.c", i32 396, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bigben_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @bigben_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-bigbenff.c", i32 233, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hid_bigben_play_effect._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hid_bigben_play_effect._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-bigbenff.c", i32 295, i32 3}
!42 = !{ptr @bigben_get_led._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bigben_get_led._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-bigbenff.c", i32 264, i32 3}
!46 = !{ptr @bigben_set_led._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bigben_set_led._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-bigbenff.c", i32 412, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bigben_report_fixup._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @bigben_report_fixup._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @pid0902_rdesc_fixed, !55, !"pid0902_rdesc_fixed", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-bigbenff.c", i32 102, i32 13}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
