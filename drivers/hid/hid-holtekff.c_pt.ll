; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-holtekff.c_pt.bc'
source_filename = "../drivers/hid/hid-holtekff.c"
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

@__initcall__kmod_hid_holtekff__225_215_holtek_driver_init6 = internal global ptr @holtek_driver_init, section ".initcall6.init", align 4
@holtek_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @holtek_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @holtek_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_holtek_driver_exit = internal global ptr @holtek_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file226 = internal constant [43 x i8] c"hid_holtekff.file=drivers/hid/hid-holtekff\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"hid_holtekff.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [57 x i8] c"hid_holtekff.author=Anssi Hannula <anssi.hannula@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [86 x i8] c"hid_holtekff.description=Force feedback support for Holtek On Line Grip based devices\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hid_holtekff\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"holtek\00", [25 x i8] zeroinitializer }, align 32
@holtek_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 4673, i32 20501, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@holtek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"holtek_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hid/hid-holtekff.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@holtek_probe._entry_ptr = internal global ptr @holtek_probe._entry, section ".printk_index", align 4
@holtek_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@holtek_probe._entry_ptr.9 = internal global ptr @holtek_probe._entry.7, section ".printk_index", align 4
@holtekff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"holtekff_init\00", [18 x i8] zeroinitializer }, align 32
@holtekff_init._entry_ptr = internal global ptr @holtekff_init._entry, section ".printk_index", align 4
@holtekff_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no output report found\0A\00", [40 x i8] zeroinitializer }, align 32
@holtekff_init._entry_ptr.14 = internal global ptr @holtekff_init._entry.12, section ".printk_index", align 4
@holtekff_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unexpected output report layout\0A\00", [63 x i8] zeroinitializer }, align 32
@holtekff_init._entry_ptr.17 = internal global ptr @holtekff_init._entry.15, section ".printk_index", align 4
@stop_all4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\04\00\00\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@stop_all6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\06\00\00\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@holtekff_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 170, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Force feedback for Holtek On Line Grip based devices by Anssi Hannula <anssi.hannula@iki.fi>\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@holtekff_init._entry_ptr.21 = internal global ptr @holtekff_init._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@holtekff_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: sending %7ph\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"holtekff_send\00", [18 x i8] zeroinitializer }, align 32
@holtekff_send._entry_ptr = internal global ptr @holtekff_send._entry, section ".printk_index", align 4
@__const.holtekff_play.buf = private unnamed_addr constant [7 x i8] c"\01\01\FF\FF\10\E0\00", align 1
@holtekff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: called with 0x%04x 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"holtekff_play\00", [18 x i8] zeroinitializer }, align 32
@holtekff_play._entry_ptr = internal global ptr @holtekff_play._entry, section ".printk_index", align 4
@start_effect_1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\02\01\00\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"holtek_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 210, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 215, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 211, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"holtek_devices\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 204, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 187, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 193, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 134, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 141, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 148, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"stop_all4\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 68, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"stop_all6\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 69, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 170, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 85, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 102, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"start_effect_1\00", align 1
@___asan_gen_.117 = private constant [30 x i8] c"../drivers/hid/hid-holtekff.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 67, i32 17 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_holtek_driver_exit, ptr @__initcall__kmod_hid_holtekff__225_215_holtek_driver_init6, ptr @holtek_driver_exit, ptr @holtek_probe._entry, ptr @holtek_probe._entry.7, ptr @holtek_probe._entry_ptr, ptr @holtek_probe._entry_ptr.9, ptr @holtekff_init._entry, ptr @holtekff_init._entry.12, ptr @holtekff_init._entry.15, ptr @holtekff_init._entry.18, ptr @holtekff_init._entry_ptr, ptr @holtekff_init._entry_ptr.14, ptr @holtekff_init._entry_ptr.17, ptr @holtekff_init._entry_ptr.21, ptr @holtekff_play._entry, ptr @holtekff_play._entry_ptr, ptr @holtekff_send._entry, ptr @holtekff_send._entry_ptr, ptr @holtek_driver, ptr @.str, ptr @.str.1, ptr @holtek_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @stop_all4, ptr @stop_all6, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @start_effect_1], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtekff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtekff_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtekff_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_all4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_all6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtekff_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtekff_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtekff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_effect_1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @holtek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @holtek_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @holtek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @holtek_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @holtek_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %0 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %input.i = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input.i, align 4
  %4 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.i1.not.i = icmp eq ptr %5, %report_list1.i
  br i1 %cmp.i1.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.end11.i.do.end21.i_crit_edge, label %lor.lhs.false.i

if.end11.i.do.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp17.not.i = icmp eq i32 %11, 7
  br i1 %cmp17.not.i, label %if.end23.i, label %lor.lhs.false.i.do.end21.i_crit_edge

lor.lhs.false.i.do.end21.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end21.i:                                       ; preds = %lor.lhs.false.i.do.end21.i_crit_edge, %if.end11.i.do.end21.i_crit_edge
  %dev22.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end23.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4) #11
  %tobool25.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool25.not.i, label %if.end23.i.cleanup_crit_edge, label %if.end27.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27.i:                                       ; preds = %if.end23.i
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit.i) #7
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field.i, align 4
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i.i.i, align 8
  %value.i.i = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 10
  %16 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %17, align 4
  %19 = load ptr, ptr %call7.i.i.i, align 8
  %value.1.i.i = getelementptr inbounds %struct.hid_field, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %value.1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value.1.i.i, align 4
  %arrayidx1.1.i.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx1.1.i.i, align 4
  %23 = load ptr, ptr %call7.i.i.i, align 8
  %value.2.i.i = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %value.2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value.2.i.i, align 4
  %arrayidx1.2.i.i = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx1.2.i.i, align 4
  %27 = load ptr, ptr %call7.i.i.i, align 8
  %value.3.i.i = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %value.3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %value.3.i.i, align 4
  %arrayidx1.3.i.i = getelementptr i32, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx1.3.i.i, align 4
  %31 = load ptr, ptr %call7.i.i.i, align 8
  %value.4.i.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %value.4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value.4.i.i, align 4
  %arrayidx1.4.i.i = getelementptr i32, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx1.4.i.i, align 4
  %35 = load ptr, ptr %call7.i.i.i, align 8
  %value.5.i.i = getelementptr inbounds %struct.hid_field, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %value.5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %value.5.i.i, align 4
  %arrayidx1.5.i.i = getelementptr i32, ptr %37, i32 5
  %38 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx1.5.i.i, align 4
  %39 = load ptr, ptr %call7.i.i.i, align 8
  %value.6.i.i = getelementptr inbounds %struct.hid_field, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %value.6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value.6.i.i, align 4
  %arrayidx1.6.i.i = getelementptr i32, ptr %41, i32 6
  %42 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx1.6.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %43 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %if.end27.i.holtekff_send.exit.i_crit_edge, label %do.end.i.i

if.end27.i.holtekff_send.exit.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %holtekff_send.exit.i

do.end.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef nonnull @stop_all4) #10
  br label %holtekff_send.exit.i

holtekff_send.exit.i:                             ; preds = %do.end.i.i, %if.end27.i.holtekff_send.exit.i_crit_edge
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i.i, align 8
  %report.i.i = getelementptr inbounds %struct.hid_field, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %report.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %report.i.i, align 4
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %47, i32 noundef 9) #7
  %value.i3.i = getelementptr inbounds %struct.hid_field, ptr %45, i32 0, i32 10
  %48 = ptrtoint ptr %value.i3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %value.i3.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %49, align 4
  %51 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i.i, align 8
  %value.1.i4.i = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %value.1.i4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %value.1.i4.i, align 4
  %arrayidx1.1.i5.i = getelementptr i32, ptr %54, i32 1
  %55 = ptrtoint ptr %arrayidx1.1.i5.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx1.1.i5.i, align 4
  %56 = load ptr, ptr %call7.i.i.i, align 8
  %value.2.i6.i = getelementptr inbounds %struct.hid_field, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %value.2.i6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value.2.i6.i, align 4
  %arrayidx1.2.i7.i = getelementptr i32, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx1.2.i7.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx1.2.i7.i, align 4
  %60 = load ptr, ptr %call7.i.i.i, align 8
  %value.3.i8.i = getelementptr inbounds %struct.hid_field, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %value.3.i8.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %value.3.i8.i, align 4
  %arrayidx1.3.i9.i = getelementptr i32, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx1.3.i9.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx1.3.i9.i, align 4
  %64 = load ptr, ptr %call7.i.i.i, align 8
  %value.4.i10.i = getelementptr inbounds %struct.hid_field, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %value.4.i10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %value.4.i10.i, align 4
  %arrayidx1.4.i11.i = getelementptr i32, ptr %66, i32 4
  %67 = ptrtoint ptr %arrayidx1.4.i11.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %arrayidx1.4.i11.i, align 4
  %68 = load ptr, ptr %call7.i.i.i, align 8
  %value.5.i12.i = getelementptr inbounds %struct.hid_field, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %value.5.i12.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %value.5.i12.i, align 4
  %arrayidx1.5.i13.i = getelementptr i32, ptr %70, i32 5
  %71 = ptrtoint ptr %arrayidx1.5.i13.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx1.5.i13.i, align 4
  %72 = load ptr, ptr %call7.i.i.i, align 8
  %value.6.i14.i = getelementptr inbounds %struct.hid_field, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %value.6.i14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %value.6.i14.i, align 4
  %arrayidx1.6.i15.i = getelementptr i32, ptr %74, i32 6
  %75 = ptrtoint ptr %arrayidx1.6.i15.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx1.6.i15.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %76 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i16.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i16.i, label %holtekff_send.exit.i.holtekff_send.exit20.i_crit_edge, label %do.end.i18.i

holtekff_send.exit.i.holtekff_send.exit20.i_crit_edge: ; preds = %holtekff_send.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %holtekff_send.exit20.i

do.end.i18.i:                                     ; preds = %holtekff_send.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef nonnull @stop_all6) #10
  br label %holtekff_send.exit20.i

holtekff_send.exit20.i:                           ; preds = %do.end.i18.i, %holtekff_send.exit.i.holtekff_send.exit20.i_crit_edge
  %77 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i.i, align 8
  %report.i19.i = getelementptr inbounds %struct.hid_field, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %report.i19.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %report.i19.i, align 4
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %80, i32 noundef 9) #7
  %call31.i = tail call i32 @input_ff_create_memless(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @holtekff_play) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.end37.i, label %if.then33.i

if.then33.i:                                      ; preds = %holtekff_send.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

do.end37.i:                                       ; preds = %holtekff_send.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev38.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38.i, ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37.i, %if.then33.i, %if.end23.i.cleanup_crit_edge, %do.end21.i, %do.end9.i, %do.end.i, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call1, %do.end6 ], [ 0, %do.end.i ], [ 0, %do.end9.i ], [ 0, %do.end21.i ], [ 0, %if.end23.i.cleanup_crit_edge ], [ 0, %if.then33.i ], [ 0, %do.end37.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @holtekff_play(ptr nocapture noundef readonly %dev, ptr noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %2 = call ptr @memcpy(ptr %buf, ptr @__const.holtekff_play.buf, i32 7)
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %u, align 4
  %conv = zext i16 %4 to i32
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %weak_magnitude, align 2
  %conv2 = zext i16 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %7 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv2) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool7.not = icmp eq i16 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %11, align 4
  %13 = load ptr, ptr %data, align 4
  %value.1.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %value.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value.1.i, align 4
  %arrayidx1.1.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx1.1.i, align 4
  %17 = load ptr, ptr %data, align 4
  %value.2.i = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %value.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value.2.i, align 4
  %arrayidx1.2.i = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx1.2.i, align 4
  %21 = load ptr, ptr %data, align 4
  %value.3.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value.3.i, align 4
  %arrayidx1.3.i = getelementptr i32, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx1.3.i, align 4
  %25 = load ptr, ptr %data, align 4
  %value.4.i = getelementptr inbounds %struct.hid_field, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %value.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value.4.i, align 4
  %arrayidx1.4.i = getelementptr i32, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx1.4.i, align 4
  %29 = load ptr, ptr %data, align 4
  %value.5.i = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value.5.i, align 4
  %arrayidx1.5.i = getelementptr i32, ptr %31, i32 5
  %32 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx1.5.i, align 4
  %33 = load ptr, ptr %data, align 4
  %value.6.i = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %value.6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value.6.i, align 4
  %arrayidx1.6.i = getelementptr i32, ptr %35, i32 6
  %36 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx1.6.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %37 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.then9.holtekff_send.exit_crit_edge, label %do.end.i

if.then9.holtekff_send.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %holtekff_send.exit

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef nonnull @stop_all6) #10
  br label %holtekff_send.exit

holtekff_send.exit:                               ; preds = %do.end.i, %if.then9.holtekff_send.exit_crit_edge
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %report.i = getelementptr inbounds %struct.hid_field, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %report.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %report.i, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %41, i32 noundef 9) #7
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  br i1 %tobool7.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  %44 = or i8 %43, -128
  store i8 %44, ptr %arrayidx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  br i1 %tobool8.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx18, align 1
  %47 = or i8 %46, 64
  store i8 %47, ptr %arrayidx18, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15.if.end22_crit_edge
  %48 = lshr i32 %conv, 12
  %49 = lshr i32 %conv2, 12
  %add = add nuw nsw i32 %49, %48
  %50 = tail call i32 @llvm.umin.i32(i32 %add, i32 15)
  %51 = trunc i32 %50 to i8
  %arrayidx27 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx27, align 1
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf, align 1
  %conv.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %value.i45 = getelementptr inbounds %struct.hid_field, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %value.i45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value.i45, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i, ptr %58, align 4
  %arrayidx.1.i = getelementptr inbounds i8, ptr %buf, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %61 to i32
  %62 = load ptr, ptr %data, align 4
  %value.1.i46 = getelementptr inbounds %struct.hid_field, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %value.1.i46 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %value.1.i46, align 4
  %arrayidx1.1.i47 = getelementptr i32, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx1.1.i47 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv.1.i, ptr %arrayidx1.1.i47, align 4
  %arrayidx.2.i = getelementptr inbounds i8, ptr %buf, i32 2
  %66 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %67 to i32
  %68 = load ptr, ptr %data, align 4
  %value.2.i48 = getelementptr inbounds %struct.hid_field, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %value.2.i48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %value.2.i48, align 4
  %arrayidx1.2.i49 = getelementptr i32, ptr %70, i32 2
  %71 = ptrtoint ptr %arrayidx1.2.i49 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv.2.i, ptr %arrayidx1.2.i49, align 4
  %arrayidx.3.i = getelementptr inbounds i8, ptr %buf, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %73 to i32
  %74 = load ptr, ptr %data, align 4
  %value.3.i50 = getelementptr inbounds %struct.hid_field, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %value.3.i50 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %value.3.i50, align 4
  %arrayidx1.3.i51 = getelementptr i32, ptr %76, i32 3
  %77 = ptrtoint ptr %arrayidx1.3.i51 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv.3.i, ptr %arrayidx1.3.i51, align 4
  %arrayidx.4.i = getelementptr inbounds i8, ptr %buf, i32 4
  %78 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %79 to i32
  %80 = load ptr, ptr %data, align 4
  %value.4.i52 = getelementptr inbounds %struct.hid_field, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %value.4.i52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %value.4.i52, align 4
  %arrayidx1.4.i53 = getelementptr i32, ptr %82, i32 4
  %83 = ptrtoint ptr %arrayidx1.4.i53 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.4.i, ptr %arrayidx1.4.i53, align 4
  %arrayidx.5.i = getelementptr inbounds i8, ptr %buf, i32 5
  %84 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %85 to i32
  %86 = load ptr, ptr %data, align 4
  %value.5.i54 = getelementptr inbounds %struct.hid_field, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %value.5.i54 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %value.5.i54, align 4
  %arrayidx1.5.i55 = getelementptr i32, ptr %88, i32 5
  %89 = ptrtoint ptr %arrayidx1.5.i55 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv.5.i, ptr %arrayidx1.5.i55, align 4
  %90 = load i8, ptr %arrayidx27, align 1
  %conv.6.i = zext i8 %90 to i32
  %91 = load ptr, ptr %data, align 4
  %value.6.i56 = getelementptr inbounds %struct.hid_field, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %value.6.i56 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %value.6.i56, align 4
  %arrayidx1.6.i57 = getelementptr i32, ptr %93, i32 6
  %94 = ptrtoint ptr %arrayidx1.6.i57 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.6.i, ptr %arrayidx1.6.i57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %95 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i58 = icmp eq i32 %95, 0
  br i1 %tobool.not.i58, label %if.end22.holtekff_send.exit62_crit_edge, label %do.end.i60

if.end22.holtekff_send.exit62_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %holtekff_send.exit62

do.end.i60:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef nonnull %buf) #10
  br label %holtekff_send.exit62

holtekff_send.exit62:                             ; preds = %do.end.i60, %if.end22.holtekff_send.exit62_crit_edge
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %report.i61 = getelementptr inbounds %struct.hid_field, ptr %97, i32 0, i32 17
  %98 = ptrtoint ptr %report.i61 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %report.i61, align 4
  call void @hid_hw_request(ptr noundef %1, ptr noundef %99, i32 noundef 9) #7
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data, align 4
  %value.i63 = getelementptr inbounds %struct.hid_field, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %value.i63 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %value.i63, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %103, align 4
  %105 = load ptr, ptr %data, align 4
  %value.1.i64 = getelementptr inbounds %struct.hid_field, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %value.1.i64 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %value.1.i64, align 4
  %arrayidx1.1.i65 = getelementptr i32, ptr %107, i32 1
  %108 = ptrtoint ptr %arrayidx1.1.i65 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %arrayidx1.1.i65, align 4
  %109 = load ptr, ptr %data, align 4
  %value.2.i66 = getelementptr inbounds %struct.hid_field, ptr %109, i32 0, i32 10
  %110 = ptrtoint ptr %value.2.i66 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %value.2.i66, align 4
  %arrayidx1.2.i67 = getelementptr i32, ptr %111, i32 2
  %112 = ptrtoint ptr %arrayidx1.2.i67 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arrayidx1.2.i67, align 4
  %113 = load ptr, ptr %data, align 4
  %value.3.i68 = getelementptr inbounds %struct.hid_field, ptr %113, i32 0, i32 10
  %114 = ptrtoint ptr %value.3.i68 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %value.3.i68, align 4
  %arrayidx1.3.i69 = getelementptr i32, ptr %115, i32 3
  %116 = ptrtoint ptr %arrayidx1.3.i69 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx1.3.i69, align 4
  %117 = load ptr, ptr %data, align 4
  %value.4.i70 = getelementptr inbounds %struct.hid_field, ptr %117, i32 0, i32 10
  %118 = ptrtoint ptr %value.4.i70 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %value.4.i70, align 4
  %arrayidx1.4.i71 = getelementptr i32, ptr %119, i32 4
  %120 = ptrtoint ptr %arrayidx1.4.i71 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %arrayidx1.4.i71, align 4
  %121 = load ptr, ptr %data, align 4
  %value.5.i72 = getelementptr inbounds %struct.hid_field, ptr %121, i32 0, i32 10
  %122 = ptrtoint ptr %value.5.i72 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %value.5.i72, align 4
  %arrayidx1.5.i73 = getelementptr i32, ptr %123, i32 5
  %124 = ptrtoint ptr %arrayidx1.5.i73 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %arrayidx1.5.i73, align 4
  %125 = load ptr, ptr %data, align 4
  %value.6.i74 = getelementptr inbounds %struct.hid_field, ptr %125, i32 0, i32 10
  %126 = ptrtoint ptr %value.6.i74 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %value.6.i74, align 4
  %arrayidx1.6.i75 = getelementptr i32, ptr %127, i32 6
  %128 = ptrtoint ptr %arrayidx1.6.i75 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx1.6.i75, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %129 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i76 = icmp eq i32 %129, 0
  br i1 %tobool.not.i76, label %holtekff_send.exit62.holtekff_send.exit80_crit_edge, label %do.end.i78

holtekff_send.exit62.holtekff_send.exit80_crit_edge: ; preds = %holtekff_send.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %holtekff_send.exit80

do.end.i78:                                       ; preds = %holtekff_send.exit62
  call void @__sanitizer_cov_trace_pc() #9
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef nonnull @start_effect_1) #10
  br label %holtekff_send.exit80

holtekff_send.exit80:                             ; preds = %do.end.i78, %holtekff_send.exit62.holtekff_send.exit80_crit_edge
  %130 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data, align 4
  %report.i79 = getelementptr inbounds %struct.hid_field, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %report.i79 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %report.i79, align 4
  call void @hid_hw_request(ptr noundef %1, ptr noundef %133, i32 noundef 9) #7
  br label %cleanup

cleanup:                                          ; preds = %holtekff_send.exit80, %holtekff_send.exit
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_hid_holtekff__225_215_holtek_driver_init6, !1, !"__initcall__kmod_hid_holtekff__225_215_holtek_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-holtekff.c", i32 215, i32 1}
!2 = !{ptr @__exitcall_holtek_driver_exit, !1, !"__exitcall_holtek_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file226, !4, !"__UNIQUE_ID_file226", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-holtekff.c", i32 217, i32 1}
!5 = !{ptr @__UNIQUE_ID_license227, !4, !"__UNIQUE_ID_license227", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author228, !7, !"__UNIQUE_ID_author228", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-holtekff.c", i32 218, i32 1}
!8 = !{ptr @__UNIQUE_ID_description229, !9, !"__UNIQUE_ID_description229", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-holtekff.c", i32 219, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-holtekff.c", i32 211, i32 10}
!13 = !{ptr @holtek_driver, !14, !"holtek_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-holtekff.c", i32 210, i32 26}
!15 = !{ptr @holtek_devices, !16, !"holtek_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-holtekff.c", i32 204, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-holtekff.c", i32 187, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @holtek_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @holtek_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-holtekff.c", i32 193, i32 3}
!27 = !{ptr @holtek_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @holtek_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-holtekff.c", i32 134, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @holtekff_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @holtekff_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-holtekff.c", i32 141, i32 3}
!36 = !{ptr @holtekff_init._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @holtekff_init._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-holtekff.c", i32 148, i32 3}
!40 = !{ptr @holtekff_init._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @holtekff_init._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-holtekff.c", i32 170, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @holtekff_init._entry.18, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @holtekff_init._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-holtekff.c", i32 85, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @holtekff_send._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @holtekff_send._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @stop_all4, !53, !"stop_all4", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-holtekff.c", i32 68, i32 17}
!54 = !{ptr @stop_all6, !55, !"stop_all6", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-holtekff.c", i32 69, i32 17}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-holtekff.c", i32 102, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @holtekff_play._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @holtekff_play._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @start_effect_1, !62, !"start_effect_1", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-holtekff.c", i32 67, i32 17}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
