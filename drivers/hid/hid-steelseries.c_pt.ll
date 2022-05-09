; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-steelseries.c_pt.bc'
source_filename = "../drivers/hid/hid-steelseries.c"
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
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.steelseries_srws1_data = type { i16, [16 x ptr] }

@__initcall__kmod_hid_steelseries__223_384_steelseries_srws1_driver_init6 = internal global ptr @steelseries_srws1_driver_init, section ".initcall6.init", align 4
@steelseries_srws1_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @steelseries_srws1_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @steelseries_srws1_probe, ptr @steelseries_srws1_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @steelseries_srws1_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_steelseries_srws1_driver_exit = internal global ptr @steelseries_srws1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"hid_steelseries.file=drivers/hid/hid-steelseries\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [28 x i8] c"hid_steelseries.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_steelseries\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"steelseries_srws1\00", [46 x i8] zeroinitializer }, align 32
@steelseries_srws1_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 4152, i32 5136, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't alloc SRW-S1 memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"steelseries_srws1_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-steelseries.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry_ptr = internal global ptr @steelseries_srws1_probe._entry, section ".printk_index", align 4
@steelseries_srws1_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry_ptr.9 = internal global ptr @steelseries_srws1_probe._entry.7, section ".printk_index", align 4
@steelseries_srws1_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry_ptr.12 = internal global ptr @steelseries_srws1_probe._entry.10, section ".printk_index", align 4
@steelseries_srws1_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't allocate memory for LED ALL\0A\00", [61 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry_ptr.15 = internal global ptr @steelseries_srws1_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SRWS1::%s::RPMALL\00", [46 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't allocate memory for LED %d\0A\00", [62 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry_ptr.19 = internal global ptr @steelseries_srws1_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SRWS1::%s::RPM%d\00", [47 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register LED %d. Aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@steelseries_srws1_probe._entry_ptr.23 = internal global ptr @steelseries_srws1_probe._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@steelseries_srws1_led_all_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Device data not found.\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"steelseries_srws1_led_all_get_brightness\00", [55 x i8] zeroinitializer }, align 32
@steelseries_srws1_led_all_get_brightness._entry_ptr = internal global ptr @steelseries_srws1_led_all_get_brightness._entry, section ".printk_index", align 4
@steelseries_srws1_led_all_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.4, i32 145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"steelseries_srws1_led_all_set_brightness\00", [55 x i8] zeroinitializer }, align 32
@steelseries_srws1_led_all_set_brightness._entry_ptr = internal global ptr @steelseries_srws1_led_all_set_brightness._entry, section ".printk_index", align 4
@steelseries_srws1_led_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"steelseries_srws1_led_get_brightness\00", [59 x i8] zeroinitializer }, align 32
@steelseries_srws1_led_get_brightness._entry_ptr = internal global ptr @steelseries_srws1_led_get_brightness._entry, section ".printk_index", align 4
@steelseries_srws1_led_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.28, ptr @.str.4, i32 182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"steelseries_srws1_led_set_brightness\00", [59 x i8] zeroinitializer }, align 32
@steelseries_srws1_led_set_brightness._entry_ptr = internal global ptr @steelseries_srws1_led_set_brightness._entry, section ".printk_index", align 4
@steelseries_srws1_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 360, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Fixing up Steelseries SRW-S1 report descriptor\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"steelseries_srws1_report_fixup\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@steelseries_srws1_report_fixup._entry_ptr = internal global ptr @steelseries_srws1_report_fixup._entry, section ".printk_index", align 4
@steelseries_srws1_rdesc_fixed = internal global { [139 x i8], [53 x i8] } { [139 x i8] c"\05\01\09\08\A1\01\A1\02\95\01\05\01\090\16\F8\F8&\08\07e\14U\0Fu\10\81\02\091\15\00&\FF\03u\0C\81\02\092\15\00&\FF\03u\0C\81\02\05\01\099%\075\00F;\01e\14u\04\95\01\81\02%\01E\01e\00u\01\95\03\81\01\05\09\19\01)\11\95\11\81\02\05\01\093u\04\95\02\15\00%\0B\81\02\095u\04\95\01%\03\81\02\06\00\FF\09\01u\04\95\0D\81\02\C0\A1\02\09\02u\08\95\10\91\02\C0\C0", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"steelseries_srws1_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 373, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 384, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 374, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"steelseries_srws1_devices\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 367, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 236, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 244, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 255, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 271, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 276, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 292, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 297, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 308, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 166, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 145, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 212, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 182, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 360, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"steelseries_srws1_rdesc_fixed\00", align 1
@___asan_gen_.138 = private constant [33 x i8] c"../drivers/hid/hid-steelseries.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 34, i32 13 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_steelseries_srws1_driver_exit, ptr @__initcall__kmod_hid_steelseries__223_384_steelseries_srws1_driver_init6, ptr @steelseries_srws1_driver_exit, ptr @steelseries_srws1_led_all_get_brightness._entry, ptr @steelseries_srws1_led_all_get_brightness._entry_ptr, ptr @steelseries_srws1_led_all_set_brightness._entry, ptr @steelseries_srws1_led_all_set_brightness._entry_ptr, ptr @steelseries_srws1_led_get_brightness._entry, ptr @steelseries_srws1_led_get_brightness._entry_ptr, ptr @steelseries_srws1_led_set_brightness._entry, ptr @steelseries_srws1_led_set_brightness._entry_ptr, ptr @steelseries_srws1_probe._entry, ptr @steelseries_srws1_probe._entry.10, ptr @steelseries_srws1_probe._entry.13, ptr @steelseries_srws1_probe._entry.17, ptr @steelseries_srws1_probe._entry.21, ptr @steelseries_srws1_probe._entry.7, ptr @steelseries_srws1_probe._entry_ptr, ptr @steelseries_srws1_probe._entry_ptr.12, ptr @steelseries_srws1_probe._entry_ptr.15, ptr @steelseries_srws1_probe._entry_ptr.19, ptr @steelseries_srws1_probe._entry_ptr.23, ptr @steelseries_srws1_probe._entry_ptr.9, ptr @steelseries_srws1_report_fixup._entry, ptr @steelseries_srws1_report_fixup._entry_ptr, ptr @steelseries_srws1_driver, ptr @.str, ptr @.str.1, ptr @steelseries_srws1_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @steelseries_srws1_rdesc_fixed], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_led_all_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_led_all_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_led_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_led_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steelseries_srws1_rdesc_fixed to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @steelseries_srws1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @steelseries_srws1_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @steelseries_srws1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @steelseries_srws1_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steelseries_srws1_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %if.end.err_free.sink.split_crit_edge

if.end.err_free.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free.sink.split

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @hid_validate_values(ptr noundef %hdev, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.err_free_crit_edge, label %if.end11

if.end7.err_free_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %if.end11.err_free.sink.split_crit_edge

if.end11.err_free.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free.sink.split

if.end19:                                         ; preds = %if.end11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %call7.i.i, align 8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 4
  %3 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %4 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report_list1.i, align 4
  %field.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field.i, align 4
  %value3.i = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %value3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value3.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %9, align 4
  %arrayidx5.i = getelementptr i32, ptr %9, i32 1
  %11 = call ptr @memset(ptr %arrayidx5.i, i32 0, i32 60)
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %5, i32 noundef 9) #8
  %uniq = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %call22 = tail call i32 @strlen(ptr noundef %uniq) #13
  %add = add i32 %call22, 16
  %add23 = add i32 %call22, 416
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add23, i32 noundef 3520) #14
  %tobool25.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.14) #12
  br label %for.body78.preheader

if.end31:                                         ; preds = %if.end19
  %arrayidx32 = getelementptr %struct.led_classdev, ptr %call9.i.i, i32 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx32, i32 noundef %add, ptr noundef nonnull @.str.16, ptr noundef %uniq)
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx32, ptr %call9.i.i, align 128
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %max_brightness, align 8
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @steelseries_srws1_led_all_get_brightness, ptr %brightness_get, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @steelseries_srws1_led_all_set_brightness, ptr %brightness_set, align 4
  %arrayidx38 = getelementptr %struct.steelseries_srws1_data, ptr %call7.i.i, i32 0, i32 1, i32 15
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %arrayidx38, align 8
  %dev39 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i164 = tail call i32 @led_classdev_register_ext(ptr noundef %dev39, ptr noundef nonnull %call9.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool41.not = icmp eq i32 %call.i164, 0
  br i1 %tobool41.not, label %if.end31.for.cond44_crit_edge, label %if.end31.for.body78.preheader_crit_edge

if.end31.for.body78.preheader_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78.preheader

if.end31.for.cond44_crit_edge:                    ; preds = %if.end31
  br label %for.cond44

for.cond44:                                       ; preds = %if.end55.for.cond44_crit_edge, %if.end31.for.cond44_crit_edge
  %i.1 = phi i32 [ %add59, %if.end55.for.cond44_crit_edge ], [ 0, %if.end31.for.cond44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.1)
  %exitcond.not = icmp eq i32 %i.1, 15
  br i1 %exitcond.not, label %for.cond44.cleanup_crit_edge, label %if.end8.i.i191

for.cond44.cleanup_crit_edge:                     ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i191:                                   ; preds = %for.cond44
  %call9.i.i190 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add23, i32 noundef 3520) #14
  %tobool49.not = icmp eq ptr %call9.i.i190, null
  br i1 %tobool49.not, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end8.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.18, i32 noundef %i.1) #12
  br label %for.body78.preheader

if.end55:                                         ; preds = %if.end8.i.i191
  %arrayidx56 = getelementptr %struct.led_classdev, ptr %call9.i.i190, i32 1
  %add59 = add nuw nsw i32 %i.1, 1
  %call60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx56, i32 noundef %add, ptr noundef nonnull @.str.20, ptr noundef %uniq, i32 noundef %add59)
  %18 = ptrtoint ptr %call9.i.i190 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx56, ptr %call9.i.i190, align 128
  %brightness62 = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i190, i32 0, i32 1
  %19 = ptrtoint ptr %brightness62 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %brightness62, align 4
  %max_brightness63 = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i190, i32 0, i32 2
  %20 = ptrtoint ptr %max_brightness63 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %max_brightness63, align 8
  %brightness_get64 = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i190, i32 0, i32 7
  %21 = ptrtoint ptr %brightness_get64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @steelseries_srws1_led_get_brightness, ptr %brightness_get64, align 4
  %brightness_set65 = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i190, i32 0, i32 5
  %22 = ptrtoint ptr %brightness_set65 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @steelseries_srws1_led_set_brightness, ptr %brightness_set65, align 4
  %arrayidx67 = getelementptr %struct.steelseries_srws1_data, ptr %call7.i.i, i32 0, i32 1, i32 %i.1
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i190, ptr %arrayidx67, align 4
  %call.i194 = tail call i32 @led_classdev_register_ext(ptr noundef %dev39, ptr noundef nonnull %call9.i.i190, ptr noundef null) #8
  %tobool70.not = icmp eq i32 %call.i194, 0
  br i1 %tobool70.not, label %if.end55.for.cond44_crit_edge, label %do.end74

if.end55.for.cond44_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond44

do.end74:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.22, i32 noundef %i.1) #12
  br label %for.body78.preheader

for.body78.preheader:                             ; preds = %do.end74, %do.end53, %if.end31.for.body78.preheader_crit_edge, %do.end29
  br label %for.body78

for.body78:                                       ; preds = %for.inc86.for.body78_crit_edge, %for.body78.preheader
  %i.2205 = phi i32 [ %inc87, %for.inc86.for.body78_crit_edge ], [ 0, %for.body78.preheader ]
  %arrayidx80 = getelementptr %struct.steelseries_srws1_data, ptr %call7.i.i, i32 0, i32 1, i32 %i.2205
  %24 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx80, align 4
  store ptr null, ptr %arrayidx80, align 4
  %tobool83.not = icmp eq ptr %25, null
  br i1 %tobool83.not, label %for.body78.for.inc86_crit_edge, label %if.end85

for.body78.for.inc86_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86

if.end85:                                         ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_classdev_unregister(ptr noundef nonnull %25) #8
  tail call void @kfree(ptr noundef nonnull %25) #8
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85, %for.body78.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %i.2205, 1
  %exitcond211.not = icmp eq i32 %inc87, 16
  br i1 %exitcond211.not, label %for.inc86.cleanup_crit_edge, label %for.inc86.for.body78_crit_edge

for.inc86.for.body78_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78

for.inc86.cleanup_crit_edge:                      ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free.sink.split:                              ; preds = %if.end11.err_free.sink.split_crit_edge, %if.end.err_free.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.8, %if.end.err_free.sink.split_crit_edge ], [ @.str.11, %if.end11.err_free.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %if.end.err_free.sink.split_crit_edge ], [ %call12, %if.end11.err_free.sink.split_crit_edge ]
  %dev18 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull %.str.11.sink) #12
  br label %err_free

err_free:                                         ; preds = %err_free.sink.split, %if.end7.err_free_crit_edge
  %ret.0 = phi i32 [ -19, %if.end7.err_free_crit_edge ], [ %ret.0.ph, %err_free.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %for.inc86.cleanup_crit_edge, %for.cond44.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %err_free ], [ 0, %for.inc86.cleanup_crit_edge ], [ 0, %for.cond44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steelseries_srws1_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.steelseries_srws1_data, ptr %1, i32 0, i32 1, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_classdev_unregister(ptr noundef nonnull %3) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.if.end6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %for.inc.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @steelseries_srws1_report_fixup(ptr noundef %hdev, ptr noundef readonly %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 114, i32 %1)
  %cmp = icmp ugt i32 %1, 114
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %rdesc, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp1 = icmp eq i8 %3, 2
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %rdesc, i32 13
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %5)
  %cmp6 = icmp eq i8 %5, -56
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %rdesc, i32 29
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %7)
  %cmp11 = icmp eq i8 %7, -69
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %arrayidx14 = getelementptr i8, ptr %rdesc, i32 40
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -59, i8 %9)
  %cmp16 = icmp eq i8 %9, -59
  br i1 %cmp16, label %do.end, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  %10 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 139, ptr %rsize, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true13.if.end_crit_edge, %land.lhs.true8.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rdesc.addr.0 = phi ptr [ @steelseries_srws1_rdesc_fixed, %do.end ], [ %rdesc, %land.lhs.true13.if.end_crit_edge ], [ %rdesc, %land.lhs.true8.if.end_crit_edge ], [ %rdesc, %land.lhs.true3.if.end_crit_edge ], [ %rdesc, %land.lhs.true.if.end_crit_edge ], [ %rdesc, %entry.if.end_crit_edge ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_validate_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steelseries_srws1_led_all_get_brightness(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
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
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool3.not = icmp sgt i16 %7, -1
  %cond = select i1 %tobool3.not, i32 0, i32 255
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steelseries_srws1_led_all_set_brightness(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
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
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %3, i32 -3264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp ne i32 %value, 0
  %. = sext i1 %cmp to i16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %., ptr %5, align 4
  %report_list1.i = getelementptr i8, ptr %3, i32 -2168
  %7 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %report_list1.i, align 4
  %field.i = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %field.i, align 4
  %value3.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %value3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value3.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %12, align 4
  %conv.i = zext i16 %. to i32
  %and.i = and i32 %conv.i, 255
  %arrayidx5.i = getelementptr i32, ptr %12, i32 1
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i, ptr %arrayidx5.i, align 4
  %15 = lshr i32 %conv.i, 8
  %arrayidx7.i = getelementptr i32, ptr %12, i32 2
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %12, i32 3
  %17 = call ptr @memset(ptr %arrayidx8.i, i32 0, i32 52)
  tail call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %8, i32 noundef 9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steelseries_srws1_led_get_brightness(ptr noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
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
  %arrayidx = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %7, %led_cdev
  br i1 %cmp3, label %for.body.preheader.if.then4_crit_edge, label %for.inc

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.then4:                                         ; preds = %for.inc.13.if.then4_crit_edge, %for.inc.12.if.then4_crit_edge, %for.inc.11.if.then4_crit_edge, %for.inc.10.if.then4_crit_edge, %for.inc.9.if.then4_crit_edge, %for.inc.8.if.then4_crit_edge, %for.inc.7.if.then4_crit_edge, %for.inc.6.if.then4_crit_edge, %for.inc.5.if.then4_crit_edge, %for.inc.4.if.then4_crit_edge, %for.inc.3.if.then4_crit_edge, %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %for.body.preheader.if.then4_crit_edge
  %i.020.lcssa = phi i32 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 1, %for.inc.if.then4_crit_edge ], [ 2, %for.inc.1.if.then4_crit_edge ], [ 3, %for.inc.2.if.then4_crit_edge ], [ 4, %for.inc.3.if.then4_crit_edge ], [ 5, %for.inc.4.if.then4_crit_edge ], [ 6, %for.inc.5.if.then4_crit_edge ], [ 7, %for.inc.6.if.then4_crit_edge ], [ 8, %for.inc.7.if.then4_crit_edge ], [ 9, %for.inc.8.if.then4_crit_edge ], [ 10, %for.inc.9.if.then4_crit_edge ], [ 11, %for.inc.10.if.then4_crit_edge ], [ 12, %for.inc.11.if.then4_crit_edge ], [ 13, %for.inc.12.if.then4_crit_edge ], [ 14, %for.inc.13.if.then4_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 4
  %conv = zext i16 %9 to i32
  %10 = shl nuw nsw i32 1, %i.020.lcssa
  %11 = and i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp = icmp eq i32 %11, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 255
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %13, %led_cdev
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.2 = icmp eq ptr %15, %led_cdev
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.3 = icmp eq ptr %17, %led_cdev
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.3

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  %cmp3.4 = icmp eq ptr %19, %led_cdev
  br i1 %cmp3.4, label %for.inc.3.if.then4_crit_edge, label %for.inc.4

for.inc.3.if.then4_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %cmp3.5 = icmp eq ptr %21, %led_cdev
  br i1 %cmp3.5, label %for.inc.4.if.then4_crit_edge, label %for.inc.5

for.inc.4.if.then4_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.6, align 4
  %cmp3.6 = icmp eq ptr %23, %led_cdev
  br i1 %cmp3.6, label %for.inc.5.if.then4_crit_edge, label %for.inc.6

for.inc.5.if.then4_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.7, align 4
  %cmp3.7 = icmp eq ptr %25, %led_cdev
  br i1 %cmp3.7, label %for.inc.6.if.then4_crit_edge, label %for.inc.7

for.inc.6.if.then4_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.8, align 4
  %cmp3.8 = icmp eq ptr %27, %led_cdev
  br i1 %cmp3.8, label %for.inc.7.if.then4_crit_edge, label %for.inc.8

for.inc.7.if.then4_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.9, align 4
  %cmp3.9 = icmp eq ptr %29, %led_cdev
  br i1 %cmp3.9, label %for.inc.8.if.then4_crit_edge, label %for.inc.9

for.inc.8.if.then4_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.10, align 4
  %cmp3.10 = icmp eq ptr %31, %led_cdev
  br i1 %cmp3.10, label %for.inc.9.if.then4_crit_edge, label %for.inc.10

for.inc.9.if.then4_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 11
  %32 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.11, align 4
  %cmp3.11 = icmp eq ptr %33, %led_cdev
  br i1 %cmp3.11, label %for.inc.10.if.then4_crit_edge, label %for.inc.11

for.inc.10.if.then4_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 12
  %34 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.12, align 4
  %cmp3.12 = icmp eq ptr %35, %led_cdev
  br i1 %cmp3.12, label %for.inc.11.if.then4_crit_edge, label %for.inc.12

for.inc.11.if.then4_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 13
  %36 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.13, align 4
  %cmp3.13 = icmp eq ptr %37, %led_cdev
  br i1 %cmp3.13, label %for.inc.12.if.then4_crit_edge, label %for.inc.13

for.inc.12.if.then4_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 14
  %38 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.14, align 4
  %cmp3.14 = icmp eq ptr %39, %led_cdev
  br i1 %cmp3.14, label %for.inc.13.if.then4_crit_edge, label %for.inc.13.cleanup_crit_edge

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.13.if.then4_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

cleanup:                                          ; preds = %for.inc.13.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %phi.sel, %if.then4 ], [ 0, %for.inc.13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steelseries_srws1_led_set_brightness(ptr noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %7, %led_cdev
  br i1 %cmp3.not, label %for.body.preheader.if.end5_crit_edge, label %for.inc

for.body.preheader.if.end5_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end5:                                          ; preds = %for.inc.13.if.end5_crit_edge, %for.inc.12.if.end5_crit_edge, %for.inc.11.if.end5_crit_edge, %for.inc.10.if.end5_crit_edge, %for.inc.9.if.end5_crit_edge, %for.inc.8.if.end5_crit_edge, %for.inc.7.if.end5_crit_edge, %for.inc.6.if.end5_crit_edge, %for.inc.5.if.end5_crit_edge, %for.inc.4.if.end5_crit_edge, %for.inc.3.if.end5_crit_edge, %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %for.body.preheader.if.end5_crit_edge
  %i.058.lcssa = phi i32 [ 0, %for.body.preheader.if.end5_crit_edge ], [ 1, %for.inc.if.end5_crit_edge ], [ 2, %for.inc.1.if.end5_crit_edge ], [ 3, %for.inc.2.if.end5_crit_edge ], [ 4, %for.inc.3.if.end5_crit_edge ], [ 5, %for.inc.4.if.end5_crit_edge ], [ 6, %for.inc.5.if.end5_crit_edge ], [ 7, %for.inc.6.if.end5_crit_edge ], [ 8, %for.inc.7.if.end5_crit_edge ], [ 9, %for.inc.8.if.end5_crit_edge ], [ 10, %for.inc.9.if.end5_crit_edge ], [ 11, %for.inc.10.if.end5_crit_edge ], [ 12, %for.inc.11.if.end5_crit_edge ], [ 13, %for.inc.12.if.end5_crit_edge ], [ 14, %for.inc.13.if.end5_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp6 = icmp ne i32 %value, 0
  %10 = shl nuw nsw i32 1, %i.058.lcssa
  %11 = and i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %10 to i16
  %13 = xor i16 %12, -1
  %conv13 = and i16 %9, %13
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %5, align 4
  %report_list1.i = getelementptr i8, ptr %3, i32 -2168
  %15 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %report_list1.i, align 4
  %field.i = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %field.i, align 4
  %value3.i = getelementptr inbounds %struct.hid_field, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %value3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %value3.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %20, align 4
  %conv.i = zext i16 %conv13 to i32
  %and.i = and i32 %conv.i, 255
  %arrayidx5.i = getelementptr i32, ptr %20, i32 1
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %arrayidx5.i, align 4
  %23 = lshr i32 %conv.i, 8
  %arrayidx7.i = getelementptr i32, ptr %20, i32 2
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %20, i32 3
  %25 = call ptr @memset(ptr %arrayidx8.i, i32 0, i32 52)
  tail call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %16, i32 noundef 9) #8
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %or.cond48 = select i1 %cmp6, i1 %tobool8.not, i1 false
  br i1 %or.cond48, label %if.then19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %26 = trunc i32 %10 to i16
  %conv23 = or i16 %9, %26
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv23, ptr %5, align 4
  %report_list1.i49 = getelementptr i8, ptr %3, i32 -2168
  %28 = ptrtoint ptr %report_list1.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %report_list1.i49, align 4
  %field.i50 = getelementptr inbounds %struct.hid_report, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %field.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %field.i50, align 4
  %value3.i51 = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %value3.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value3.i51, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %33, align 4
  %conv.i52 = zext i16 %conv23 to i32
  %and.i53 = and i32 %conv.i52, 255
  %arrayidx5.i54 = getelementptr i32, ptr %33, i32 1
  %35 = ptrtoint ptr %arrayidx5.i54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i53, ptr %arrayidx5.i54, align 4
  %36 = lshr i32 %conv.i52, 8
  %arrayidx7.i55 = getelementptr i32, ptr %33, i32 2
  %37 = ptrtoint ptr %arrayidx7.i55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx7.i55, align 4
  %arrayidx8.i56 = getelementptr i32, ptr %33, i32 3
  %38 = call ptr @memset(ptr %arrayidx8.i56, i32 0, i32 52)
  tail call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %29, i32 noundef 9) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.not.1 = icmp eq ptr %40, %led_cdev
  br i1 %cmp3.not.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.not.2 = icmp eq ptr %42, %led_cdev
  br i1 %cmp3.not.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.2

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.not.3 = icmp eq ptr %44, %led_cdev
  br i1 %cmp3.not.3, label %for.inc.2.if.end5_crit_edge, label %for.inc.3

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.4, align 4
  %cmp3.not.4 = icmp eq ptr %46, %led_cdev
  br i1 %cmp3.not.4, label %for.inc.3.if.end5_crit_edge, label %for.inc.4

for.inc.3.if.end5_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.5, align 4
  %cmp3.not.5 = icmp eq ptr %48, %led_cdev
  br i1 %cmp3.not.5, label %for.inc.4.if.end5_crit_edge, label %for.inc.5

for.inc.4.if.end5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.6, align 4
  %cmp3.not.6 = icmp eq ptr %50, %led_cdev
  br i1 %cmp3.not.6, label %for.inc.5.if.end5_crit_edge, label %for.inc.6

for.inc.5.if.end5_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 7
  %51 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.7, align 4
  %cmp3.not.7 = icmp eq ptr %52, %led_cdev
  br i1 %cmp3.not.7, label %for.inc.6.if.end5_crit_edge, label %for.inc.7

for.inc.6.if.end5_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 8
  %53 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.8, align 4
  %cmp3.not.8 = icmp eq ptr %54, %led_cdev
  br i1 %cmp3.not.8, label %for.inc.7.if.end5_crit_edge, label %for.inc.8

for.inc.7.if.end5_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 9
  %55 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.9, align 4
  %cmp3.not.9 = icmp eq ptr %56, %led_cdev
  br i1 %cmp3.not.9, label %for.inc.8.if.end5_crit_edge, label %for.inc.9

for.inc.8.if.end5_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 10
  %57 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.10, align 4
  %cmp3.not.10 = icmp eq ptr %58, %led_cdev
  br i1 %cmp3.not.10, label %for.inc.9.if.end5_crit_edge, label %for.inc.10

for.inc.9.if.end5_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 11
  %59 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.11, align 4
  %cmp3.not.11 = icmp eq ptr %60, %led_cdev
  br i1 %cmp3.not.11, label %for.inc.10.if.end5_crit_edge, label %for.inc.11

for.inc.10.if.end5_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 12
  %61 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.12, align 4
  %cmp3.not.12 = icmp eq ptr %62, %led_cdev
  br i1 %cmp3.not.12, label %for.inc.11.if.end5_crit_edge, label %for.inc.12

for.inc.11.if.end5_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 13
  %63 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.13, align 4
  %cmp3.not.13 = icmp eq ptr %64, %led_cdev
  br i1 %cmp3.not.13, label %for.inc.12.if.end5_crit_edge, label %for.inc.13

for.inc.12.if.end5_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.steelseries_srws1_data, ptr %5, i32 0, i32 1, i32 14
  %65 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.14, align 4
  %cmp3.not.14 = icmp eq ptr %66, %led_cdev
  br i1 %cmp3.not.14, label %for.inc.13.if.end5_crit_edge, label %for.inc.13.cleanup_crit_edge

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.13.if.end5_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

cleanup:                                          ; preds = %for.inc.13.cleanup_crit_edge, %if.then19, %if.else.cleanup_crit_edge, %if.then9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_hid_steelseries__223_384_steelseries_srws1_driver_init6, !1, !"__initcall__kmod_hid_steelseries__223_384_steelseries_srws1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-steelseries.c", i32 384, i32 1}
!2 = !{ptr @__exitcall_steelseries_srws1_driver_exit, !1, !"__exitcall_steelseries_srws1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-steelseries.c", i32 385, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-steelseries.c", i32 374, i32 10}
!9 = !{ptr @steelseries_srws1_driver, !10, !"steelseries_srws1_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-steelseries.c", i32 373, i32 26}
!11 = !{ptr @steelseries_srws1_devices, !12, !"steelseries_srws1_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-steelseries.c", i32 367, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-steelseries.c", i32 236, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @steelseries_srws1_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @steelseries_srws1_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-steelseries.c", i32 244, i32 3}
!23 = !{ptr @steelseries_srws1_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @steelseries_srws1_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-steelseries.c", i32 255, i32 3}
!27 = !{ptr @steelseries_srws1_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @steelseries_srws1_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-steelseries.c", i32 271, i32 3}
!31 = !{ptr @steelseries_srws1_probe._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @steelseries_srws1_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-steelseries.c", i32 276, i32 26}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-steelseries.c", i32 292, i32 4}
!37 = !{ptr @steelseries_srws1_probe._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @steelseries_srws1_probe._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-steelseries.c", i32 297, i32 27}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-steelseries.c", i32 308, i32 4}
!43 = !{ptr @steelseries_srws1_probe._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @steelseries_srws1_probe._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-steelseries.c", i32 166, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @steelseries_srws1_led_all_get_brightness._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @steelseries_srws1_led_all_get_brightness._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-steelseries.c", i32 145, i32 3}
!52 = !{ptr @steelseries_srws1_led_all_set_brightness._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @steelseries_srws1_led_all_set_brightness._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-steelseries.c", i32 212, i32 3}
!56 = !{ptr @steelseries_srws1_led_get_brightness._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @steelseries_srws1_led_get_brightness._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-steelseries.c", i32 182, i32 3}
!60 = !{ptr @steelseries_srws1_led_set_brightness._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @steelseries_srws1_led_set_brightness._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-steelseries.c", i32 360, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @steelseries_srws1_report_fixup._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @steelseries_srws1_report_fixup._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @steelseries_srws1_rdesc_fixed, !69, !"steelseries_srws1_rdesc_fixed", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-steelseries.c", i32 34, i32 13}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
