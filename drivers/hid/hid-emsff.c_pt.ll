; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-emsff.c_pt.bc'
source_filename = "../drivers/hid/hid-emsff.c"
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
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_emsff__223_145_ems_driver_init6 = internal global ptr @ems_driver_init, section ".initcall6.init", align 4
@ems_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ems_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ems_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ems_driver_exit = internal global ptr @ems_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [37 x i8] c"hid_emsff.file=drivers/hid/hid-emsff\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [22 x i8] c"hid_emsff.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid_emsff\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hkems\00", [26 x i8] zeroinitializer }, align 32
@ems_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 8198, i32 280, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ems_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ems_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-emsff.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ems_probe._entry_ptr = internal global ptr @ems_probe._entry, section ".printk_index", align 4
@ems_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ems_probe._entry_ptr.9 = internal global ptr @ems_probe._entry.7, section ".printk_index", align 4
@ems_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"force feedback init failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ems_probe._entry_ptr.12 = internal global ptr @ems_probe._entry.10, section ".printk_index", align 4
@emsff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 57, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emsff_init\00", [21 x i8] zeroinitializer }, align 32
@emsff_init._entry_ptr = internal global ptr @emsff_init._entry, section ".printk_index", align 4
@emsff_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 64, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no output reports found\0A\00", [39 x i8] zeroinitializer }, align 32
@emsff_init._entry_ptr.17 = internal global ptr @emsff_init._entry.15, section ".printk_index", align 4
@emsff_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.4, i32 70, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no fields in the report\0A\00", [39 x i8] zeroinitializer }, align 32
@emsff_init._entry_ptr.20 = internal global ptr @emsff_init._entry.18, section ".printk_index", align 4
@emsff_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not enough values in the field\0A\00", [32 x i8] zeroinitializer }, align 32
@emsff_init._entry_ptr.23 = internal global ptr @emsff_init._entry.21, section ".printk_index", align 4
@emsff_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.4, i32 101, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"force feedback for EMS based devices by Ignaz Forster <ignaz.forster@gmx.de>\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@emsff_init._entry_ptr.27 = internal global ptr @emsff_init._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@emsff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: called with 0x%04x 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emsff_play\00", [21 x i8] zeroinitializer }, align 32
@emsff_play._entry_ptr = internal global ptr @emsff_play._entry, section ".printk_index", align 4
@emsff_play._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: running with 0x%02x 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@emsff_play._entry_ptr.32 = internal global ptr @emsff_play._entry.30, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"ems_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 140, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 145, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 141, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"ems_devices\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 134, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 112, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 118, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 124, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 57, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 64, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 70, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 75, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 101, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 32, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [27 x i8] c"../drivers/hid/hid-emsff.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 40, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_ems_driver_exit, ptr @__initcall__kmod_hid_emsff__223_145_ems_driver_init6, ptr @ems_driver_exit, ptr @ems_probe._entry, ptr @ems_probe._entry.10, ptr @ems_probe._entry.7, ptr @ems_probe._entry_ptr, ptr @ems_probe._entry_ptr.12, ptr @ems_probe._entry_ptr.9, ptr @emsff_init._entry, ptr @emsff_init._entry.15, ptr @emsff_init._entry.18, ptr @emsff_init._entry.21, ptr @emsff_init._entry.24, ptr @emsff_init._entry_ptr, ptr @emsff_init._entry_ptr.17, ptr @emsff_init._entry_ptr.20, ptr @emsff_init._entry_ptr.23, ptr @emsff_init._entry_ptr.27, ptr @emsff_play._entry, ptr @emsff_play._entry.30, ptr @emsff_play._entry_ptr, ptr @emsff_play._entry_ptr.32, ptr @ems_driver, ptr @.str, ptr @.str.1, ptr @ems_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsff_play._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ems_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ems_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @ems_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %0 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.13) #8
  br label %do.end14

if.end.i:                                         ; preds = %if.end8
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %input.i = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input.i, align 4
  %4 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.i107.not.i = icmp eq ptr %5, %report_list1.i
  br i1 %cmp.i107.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.16) #8
  br label %do.end14

if.end11.i:                                       ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev20.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.19) #8
  br label %do.end14

if.end21.i:                                       ; preds = %if.end11.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp23.i = icmp ult i32 %11, 7
  br i1 %cmp23.i, label %do.end27.i, label %if.end29.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev28.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.22) #8
  br label %do.end14

if.end29.i:                                       ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4) #9
  %tobool31.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool31.not.i, label %if.end29.i.do.end14_crit_edge, label %if.end33.i

if.end29.i.do.end14_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.end33.i:                                       ; preds = %if.end29.i
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit.i) #5
  %call34.i = tail call i32 @input_ff_create_memless(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @emsff_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %emsff_init.exit, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %do.end14

emsff_init.exit:                                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %call7.i.i.i, align 8
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %17, align 4
  %19 = load ptr, ptr %call7.i.i.i, align 8
  %field44.i = getelementptr inbounds %struct.hid_report, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %field44.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field44.i, align 4
  %value46.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value46.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value46.i, align 4
  %arrayidx47.i = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx47.i, align 4
  %25 = load ptr, ptr %call7.i.i.i, align 8
  %field49.i = getelementptr inbounds %struct.hid_report, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %field49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %field49.i, align 4
  %value51.i = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %value51.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %value51.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx52.i, align 4
  %31 = load ptr, ptr %call7.i.i.i, align 8
  %field54.i = getelementptr inbounds %struct.hid_report, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %field54.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %field54.i, align 4
  %value56.i = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %value56.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value56.i, align 4
  %arrayidx57.i = getelementptr i32, ptr %35, i32 3
  %36 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx57.i, align 4
  %37 = load ptr, ptr %call7.i.i.i, align 8
  %field59.i = getelementptr inbounds %struct.hid_report, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %field59.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %field59.i, align 4
  %value61.i = getelementptr inbounds %struct.hid_field, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %value61.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value61.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %41, i32 4
  %42 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx62.i, align 4
  %43 = load ptr, ptr %call7.i.i.i, align 8
  %field64.i = getelementptr inbounds %struct.hid_report, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %field64.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %field64.i, align 4
  %value66.i = getelementptr inbounds %struct.hid_field, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %value66.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %value66.i, align 4
  %arrayidx67.i = getelementptr i32, ptr %47, i32 5
  %48 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx67.i, align 4
  %49 = load ptr, ptr %call7.i.i.i, align 8
  %field69.i = getelementptr inbounds %struct.hid_report, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %field69.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %field69.i, align 4
  %value71.i = getelementptr inbounds %struct.hid_field, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %value71.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value71.i, align 4
  %arrayidx72.i = getelementptr i32, ptr %53, i32 6
  %54 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx72.i, align 4
  %55 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %55, i32 noundef 9) #5
  %dev77.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.i, ptr noundef nonnull @.str.25) #8
  br label %cleanup

do.end14:                                         ; preds = %if.then36.i, %if.end29.i.do.end14_crit_edge, %do.end27.i, %do.end19.i, %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end29.i.do.end14_crit_edge ], [ %call34.i, %if.then36.i ], [ -19, %do.end27.i ], [ -19, %do.end19.i ], [ -19, %do.end9.i ], [ -19, %do.end.i ]
  %dev15 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.11) #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %emsff_init.exit, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %emsff_init.exit ], [ %call.i, %do.end ], [ %call1, %do.end6 ], [ %retval.0.i.ph, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
define internal i32 @emsff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %weak_magnitude, align 2
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %6 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = zext i16 %5 to i32
  %conv = zext i16 %3 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, i32 noundef %conv2, i32 noundef %conv) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %div36 = udiv i16 %3, 257
  %div.zext = zext i16 %div36 to i32
  %div837 = udiv i16 %5, 257
  %div8.zext = zext i16 %div837 to i32
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value, align 4
  %arrayidx9 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.zext, ptr %arrayidx9, align 4
  %14 = load ptr, ptr %data, align 4
  %field11 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %field11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %field11, align 4
  %value13 = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %value13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value13, align 4
  %arrayidx14 = getelementptr i32, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div8.zext, ptr %arrayidx14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %20 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %do.end6.do.end25_crit_edge, label %do.end20

do.end6.do.end25_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

do.end20:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, i32 noundef %div8.zext, i32 noundef %div.zext) #8
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.end6.do.end25_crit_edge
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %22, i32 noundef 9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_hid_emsff__223_145_ems_driver_init6, !1, !"__initcall__kmod_hid_emsff__223_145_ems_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-emsff.c", i32 145, i32 1}
!2 = !{ptr @__exitcall_ems_driver_exit, !1, !"__exitcall_ems_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-emsff.c", i32 147, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-emsff.c", i32 141, i32 10}
!9 = !{ptr @ems_driver, !10, !"ems_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-emsff.c", i32 140, i32 26}
!11 = !{ptr @ems_devices, !12, !"ems_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-emsff.c", i32 134, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-emsff.c", i32 112, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ems_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ems_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-emsff.c", i32 118, i32 3}
!23 = !{ptr @ems_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ems_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-emsff.c", i32 124, i32 3}
!27 = !{ptr @ems_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ems_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-emsff.c", i32 57, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @emsff_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @emsff_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-emsff.c", i32 64, i32 3}
!36 = !{ptr @emsff_init._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @emsff_init._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-emsff.c", i32 70, i32 3}
!40 = !{ptr @emsff_init._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @emsff_init._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-emsff.c", i32 75, i32 3}
!44 = !{ptr @emsff_init._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @emsff_init._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-emsff.c", i32 101, i32 2}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @emsff_init._entry.24, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @emsff_init._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-emsff.c", i32 32, i32 2}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @emsff_play._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @emsff_play._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-emsff.c", i32 40, i32 2}
!58 = !{ptr @emsff_play._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @emsff_play._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
