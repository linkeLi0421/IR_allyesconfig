; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-uclogic-core.c_pt.bc'
source_filename = "../drivers/hid/hid-uclogic-core.c"
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
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uclogic_drvdata = type { %struct.uclogic_params, ptr, i32, ptr, %struct.timer_list, i8 }
%struct.uclogic_params = type { i8, ptr, i32, i8, %struct.uclogic_params_pen, %struct.uclogic_params_frame, i8 }
%struct.uclogic_params_pen = type { ptr, i32, i32, i32, i8 }
%struct.uclogic_params_frame = type { ptr, i32, i32, i32, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_uclogic__233_425_uclogic_driver_init6 = internal global ptr @uclogic_driver_init, section ".initcall6.init", align 4
@uclogic_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @uclogic_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @uclogic_probe, ptr @uclogic_remove, ptr null, ptr @uclogic_raw_event, ptr null, ptr null, ptr null, ptr @uclogic_report_fixup, ptr @uclogic_input_mapping, ptr null, ptr @uclogic_input_configured, ptr null, ptr null, ptr @uclogic_resume, ptr @uclogic_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uclogic_driver_exit = internal global ptr @uclogic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [32 x i8] c"hid_uclogic.author=Martin Rusko\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [38 x i8] c"hid_uclogic.author=Nikolai Kondrashov\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [41 x i8] c"hid_uclogic.file=drivers/hid/hid-uclogic\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [24 x i8] c"hid_uclogic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_uclogic\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uclogic\00", [24 x i8] zeroinitializer }, align 32
@uclogic_devices = internal constant { [25 x %struct.hid_device_id], [112 x i8] } { [25 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 21827, i32 66, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 5, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 100, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 1314, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 1921, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 9580, i32 110, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 9580, i32 109, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5215, i32 530, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 110, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 77, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 129, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 69, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 71, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 12337, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8569, i32 83, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8569, i32 119, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10429, i32 116, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10429, i32 113, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10429, i32 85, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10429, i32 117, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10429, i32 148, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10429, i32 66, i32 0 }, %struct.hid_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@uclogic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&drvdata->inrange_timer)\00", [38 x i8] zeroinitializer }, align 32
@uclogic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed probing parameters: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uclogic_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/hid-uclogic-core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uclogic_probe._entry_ptr = internal global ptr @uclogic_probe._entry, section ".printk_index", align 4
@uclogic_probe.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [298 x i8], [86 x i8] } { [298 x i8] c"parameters:\0A.invalid = %s\0A.desc_ptr = %p\0A.desc_size = %u\0A.pen_unused = %s\0A.pen.desc_ptr = %p\0A.pen.desc_size = %u\0A.pen.id = %u\0A.pen.inrange = %s\0A.pen.fragmented_hires = %s\0A.frame.desc_ptr = %p\0A.frame.desc_size = %u\0A.frame.id = %u\0A.frame.re_lsb = %u\0A.frame.dev_id_byte = %u\0A.pen_frame_flag = 0x%02x\0A\00", [86 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@uclogic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 196, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"interface is invalid, ignoring\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@uclogic_probe._entry_ptr.14 = internal global ptr @uclogic_probe._entry.11, section ".printk_index", align 4
@uclogic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 208, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed generating replacement report descriptor: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@uclogic_probe._entry_ptr.17 = internal global ptr @uclogic_probe._entry.15, section ".printk_index", align 4
@uclogic_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@uclogic_probe._entry_ptr.20 = internal global ptr @uclogic_probe._entry.18, section ".printk_index", align 4
@uclogic_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 220, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@uclogic_probe._entry_ptr.23 = internal global ptr @uclogic_probe._entry.21, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Keyboard\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mouse\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Pad\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Pen\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Consumer Control\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"System Control\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@uclogic_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 241, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to re-initialize the device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uclogic_resume\00", [17 x i8] zeroinitializer }, align 32
@uclogic_resume._entry_ptr = internal global ptr @uclogic_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 65538, i64 65542, i64 65543, i64 65664, i64 786433, i64 851970]
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"uclogic_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 411, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 425, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 412, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"uclogic_devices\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 358, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 182, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 189, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 193, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 196, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 206, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 214, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 220, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 129, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 132, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 135, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 138, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 141, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 144, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 152, i32 24 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [34 x i8] c"../drivers/hid/hid-uclogic-core.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 241, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_uclogic_driver_exit, ptr @__initcall__kmod_hid_uclogic__233_425_uclogic_driver_init6, ptr @uclogic_driver_exit, ptr @uclogic_probe._entry, ptr @uclogic_probe._entry.11, ptr @uclogic_probe._entry.15, ptr @uclogic_probe._entry.18, ptr @uclogic_probe._entry.21, ptr @uclogic_probe._entry_ptr, ptr @uclogic_probe._entry_ptr.14, ptr @uclogic_probe._entry_ptr.17, ptr @uclogic_probe._entry_ptr.20, ptr @uclogic_probe._entry_ptr.23, ptr @uclogic_resume._entry, ptr @uclogic_resume._entry_ptr, ptr @uclogic_driver, ptr @.str, ptr @.str.1, ptr @uclogic_devices, ptr @uclogic_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_devices to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 298, i32 384, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uclogic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @uclogic_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uclogic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hid_unregister_driver(ptr noundef nonnull @uclogic_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uclogic_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, 64
  store i32 %or, ptr %quirks, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %inrange_timer = getelementptr inbounds %struct.uclogic_drvdata, ptr %call.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %inrange_timer, ptr noundef nonnull @uclogic_inrange_timeout, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @uclogic_probe.__key) #9
  %re_state = getelementptr inbounds %struct.uclogic_drvdata, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %re_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %re_state, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @uclogic_params_init(ptr noundef nonnull %call.i, ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call4) #12
  br label %cleanup

if.end11:                                         ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_probe.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_probe, %if.then16)) #9
          to label %do.end55 [label %if.then16], !srcloc !78

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool19.not, ptr @.str.10, ptr @.str.9
  %desc_ptr = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %desc_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_ptr, align 4
  %desc_size = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_size, align 4
  %pen_unused = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %pen_unused to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pen_unused, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.10, ptr @.str.9
  %pen = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %pen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pen, align 4
  %desc_size29 = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %desc_size29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_size29, align 4
  %id32 = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id32, align 4
  %inrange = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %inrange to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inrange, align 4
  %call35 = tail call ptr @uclogic_params_pen_inrange_to_str(i32 noundef %21) #9
  %fragmented_hires = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %fragmented_hires to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fragmented_hires, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool38.not = icmp eq i8 %23, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.10, ptr @.str.9
  %frame = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frame, align 4
  %desc_size44 = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %desc_size44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc_size44, align 4
  %id47 = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %id47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id47, align 4
  %re_lsb = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %re_lsb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %re_lsb, align 4
  %dev_id_byte = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %dev_id_byte to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_id_byte, align 4
  %pen_frame_flag = getelementptr inbounds %struct.uclogic_params, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %pen_frame_flag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pen_frame_flag, align 4
  %conv = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_probe.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, ptr noundef %9, i32 noundef %11, ptr noundef nonnull %cond24, ptr noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %call35, ptr noundef nonnull %cond39, ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %conv) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then16, %if.end11
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %call.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool58.not = icmp eq i8 %37, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %if.then93

if.end64:                                         ; preds = %do.end55
  %desc_ptr66 = getelementptr inbounds %struct.uclogic_drvdata, ptr %call.i, i32 0, i32 1
  %desc_size67 = getelementptr inbounds %struct.uclogic_drvdata, ptr %call.i, i32 0, i32 2
  %call68 = tail call i32 @uclogic_params_get_desc(ptr noundef nonnull %call.i, ptr noundef %desc_ptr66, ptr noundef %desc_size67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call68) #12
  br label %if.then93

if.end75:                                         ; preds = %if.end64
  %call.i140 = tail call i32 @hid_open_report(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool77.not = icmp eq i32 %call.i140, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %if.then93

if.end83:                                         ; preds = %if.end75
  %call84 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %do.end89

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %if.then93

if.then93:                                        ; preds = %do.end89, %do.end81, %do.end73, %do.end62
  %rc.0.ph = phi i32 [ %call84, %do.end89 ], [ %call.i140, %do.end81 ], [ %call68, %do.end73 ], [ -19, %do.end62 ]
  tail call void @uclogic_params_cleanup(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %if.end83.cleanup_crit_edge, %do.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %rc.0.ph, %if.then93 ], [ %call4, %do.end9 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uclogic_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %inrange_timer = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @del_timer_sync(ptr noundef %inrange_timer) #9
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  %desc_ptr = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_ptr, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @uclogic_params_cleanup(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uclogic_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pen_unused = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pen_unused to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pen_unused, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end56_crit_edge

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true2:                                   ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %id3 = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp eq i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp6 = icmp sgt i32 %size, 1
  %or.cond = and i1 %cmp6, %cmp4
  br i1 %or.cond, label %if.then, label %land.lhs.true2.if.end56_crit_edge

land.lhs.true2.if.end56_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then:                                          ; preds = %land.lhs.true2
  %id7 = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not = icmp eq i32 %11, 0
  br i1 %cmp8.not, label %if.then.if.end_crit_edge, label %land.lhs.true9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true9:                                   ; preds = %if.then
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %pen_frame_flag = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %pen_frame_flag to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pen_frame_flag, align 4
  %and201 = and i8 %15, %13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and201)
  %tobool11.not = icmp eq i8 %and201, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end_crit_edge, label %if.then12

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %conv15 = trunc i32 %11 to i8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %data, align 1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %if.then.if.end_crit_edge
  %inrange = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %inrange to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inrange, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %if.then20, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr i8, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %21 = xor i8 %20, 64
  store i8 %21, ptr %arrayidx21, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp25 = icmp ugt i32 %size, 9
  br i1 %cmp25, label %land.lhs.true27, label %if.end24.if.end44_crit_edge

if.end24.if.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true27:                                  ; preds = %if.end24
  %fragmented_hires = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %fragmented_hires to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fragmented_hires, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end44_crit_edge, label %if.then31

land.lhs.true27.if.end44_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then31:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx32 = getelementptr i8, ptr %data, i32 6
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %data, i32 7
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr i8, ptr %data, i32 5
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx34, align 1
  store i8 %29, ptr %arrayidx32, align 1
  %arrayidx36 = getelementptr i8, ptr %data, i32 4
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx36, align 1
  store i8 %31, ptr %arrayidx34, align 1
  %arrayidx38 = getelementptr i8, ptr %data, i32 8
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38, align 1
  store i8 %33, ptr %arrayidx36, align 1
  %arrayidx40 = getelementptr i8, ptr %data, i32 9
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx40, align 1
  store i8 %35, ptr %arrayidx33, align 1
  store i8 %25, ptr %arrayidx38, align 1
  store i8 %27, ptr %arrayidx40, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then31, %land.lhs.true27.if.end44_crit_edge, %if.end24.if.end44_crit_edge
  %36 = ptrtoint ptr %inrange to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inrange, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp47 = icmp eq i32 %37, 2
  br i1 %cmp47, label %if.then49, label %if.end44.if.end56_crit_edge

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx50 = getelementptr i8, ptr %data, i32 1
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx50, align 1
  %40 = or i8 %39, 64
  store i8 %40, ptr %arrayidx50, align 1
  %inrange_timer = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %41, 10
  %call54 = tail call i32 @mod_timer(ptr noundef %inrange_timer, i32 noundef %add) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end44.if.end56_crit_edge, %land.lhs.true2.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %entry.if.end56_crit_edge
  %type57 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 3
  %42 = ptrtoint ptr %type57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp58 = icmp eq i32 %43, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end56
  %id61 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %44 = ptrtoint ptr %id61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id61, align 4
  %id63 = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %id63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp64 = icmp eq i32 %45, %47
  br i1 %cmp64, label %if.then66, label %land.lhs.true60.cleanup_crit_edge

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %land.lhs.true60
  %dev_id_byte = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %dev_id_byte to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_id_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp68.not = icmp ne i32 %49, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %size)
  %cmp73 = icmp ult i32 %49, %size
  %or.cond202 = and i1 %cmp68.not, %cmp73
  br i1 %or.cond202, label %if.then75, label %if.then66.if.end79_crit_edge

if.then66.if.end79_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then75:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx78 = getelementptr i8, ptr %data, i32 %49
  %50 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 15, ptr %arrayidx78, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.then66.if.end79_crit_edge
  %re_lsb = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 5, i32 3
  %51 = ptrtoint ptr %re_lsb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %re_lsb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp81.not = icmp eq i32 %52, 0
  br i1 %cmp81.not, label %if.end79.cleanup_crit_edge, label %land.lhs.true83

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true83:                                  ; preds = %if.end79
  %div200 = lshr i32 %52, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div200, i32 %size)
  %cmp86 = icmp ult i32 %div200, %size
  br i1 %cmp86, label %if.then88, label %land.lhs.true83.cleanup_crit_edge

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then88:                                        ; preds = %land.lhs.true83
  %rem = and i32 %52, 7
  %re_state = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %re_state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %re_state, align 4
  %arrayidx94 = getelementptr i8, ptr %data, i32 %div200
  %55 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %56 to i32
  %shr = lshr i32 %conv95, %rem
  %57 = trunc i32 %shr to i8
  %conv97 = and i8 %57, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp99 = icmp eq i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv97)
  %cmp103 = icmp eq i8 %conv97, 0
  %or.cond203 = select i1 %cmp99, i1 %cmp103, i1 false
  br i1 %or.cond203, label %if.then88.if.end131_crit_edge, label %lor.lhs.false

if.then88.if.end131_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

lor.lhs.false:                                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp106 = icmp eq i8 %54, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv97)
  %cmp110 = icmp eq i8 %conv97, 3
  %or.cond204 = select i1 %cmp106, i1 %cmp110, i1 false
  br i1 %or.cond204, label %lor.lhs.false.if.end131_crit_edge, label %if.else

lor.lhs.false.if.end131_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %or.cond205 = select i1 %cmp106, i1 %cmp103, i1 false
  %or.cond206 = select i1 %cmp99, i1 %cmp110, i1 false
  %or.cond207 = select i1 %or.cond205, i1 true, i1 %or.cond206
  %spec.select = select i1 %or.cond207, i32 3, i32 0
  br label %if.end131

if.end131:                                        ; preds = %if.else, %lor.lhs.false.if.end131_crit_edge, %if.then88.if.end131_crit_edge
  %change.0 = phi i32 [ 1, %lor.lhs.false.if.end131_crit_edge ], [ 1, %if.then88.if.end131_crit_edge ], [ %spec.select, %if.else ]
  %shl = shl nuw nsw i32 3, %rem
  %neg = xor i32 %shl, -1
  %and134 = and i32 %conv95, %neg
  %shl136 = shl nuw nsw i32 %change.0, %rem
  %or137 = or i32 %shl136, %and134
  %conv138 = trunc i32 %or137 to i8
  %58 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv138, ptr %arrayidx94, align 1
  %59 = ptrtoint ptr %re_state to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv97, ptr %re_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %land.lhs.true83.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @uclogic_report_fixup(ptr nocapture noundef readonly %hdev, ptr noundef readnone %rdesc, ptr nocapture noundef writeonly %rsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %desc_ptr = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %desc_size = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc_size, align 4
  %6 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rdesc.addr.0 = phi ptr [ %3, %if.then ], [ %rdesc, %entry.if.end_crit_edge ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uclogic_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef readnone %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pen_unused = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pen_unused to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pen_unused, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %4 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %5)
  %cmp = icmp eq i32 %5, 851970
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uclogic_input_configured(ptr noundef %hdev, ptr nocapture noundef readonly %hi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 1
  %2 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %id3 = getelementptr inbounds %struct.uclogic_params, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %pen_input = getelementptr inbounds %struct.uclogic_drvdata, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %pen_input to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pen_input, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %report, align 4
  %field7 = getelementptr inbounds %struct.hid_report, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %field7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field7, align 4
  %application = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %application, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end5.cleanup_crit_edge [
    i32 65542, label %if.end5.if.then14_crit_edge
    i32 65538, label %sw.bb8
    i32 65543, label %sw.bb9
    i32 851970, label %sw.bb10
    i32 786433, label %sw.bb11
    i32 65664, label %sw.bb12
  ]

if.end5.if.then14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

sw.bb11:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

sw.bb12:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %if.end5.if.then14_crit_edge
  %suffix.0.ph = phi ptr [ @.str.25, %sw.bb8 ], [ @.str.26, %sw.bb9 ], [ @.str.27, %sw.bb10 ], [ @.str.28, %sw.bb11 ], [ @.str.29, %sw.bb12 ], [ @.str.24, %if.end5.if.then14_crit_edge ]
  %name15 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call16 = tail call i32 @strlen(ptr noundef %name15) #13
  %add = add i32 %call16, 2
  %call17 = tail call i32 @strlen(ptr noundef nonnull %suffix.0.ph) #13
  %add18 = add i32 %add, %call17
  %input19 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %18 = ptrtoint ptr %input19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input19, align 4
  %dev = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 40
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add18, i32 noundef 3520) #9
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.then14.cleanup_crit_edge, label %if.then22

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef %add18, ptr noundef nonnull @.str.30, ptr noundef %name15, ptr noundef nonnull %suffix.0.ph)
  %20 = ptrtoint ptr %input19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.then14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uclogic_resume(ptr noundef %hdev) #2 align 64 {
entry:
  %params = alloca %struct.uclogic_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %params) #9
  %0 = call ptr @memset(ptr %params, i32 255, i32 60)
  %call = call i32 @uclogic_params_init(ptr noundef nonnull %params, ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @uclogic_params_cleanup(ptr noundef nonnull %params) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %params) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uclogic_inrange_timeout(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pen_input = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pen_input, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #9
  %arrayidx.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 27, i32 10
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 4, i32 noundef 4, i32 noundef 852034) #9
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 320, i32 noundef 0) #9
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uclogic_params_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uclogic_params_pen_inrange_to_str(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uclogic_params_get_desc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uclogic_params_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_hid_uclogic__233_425_uclogic_driver_init6, !1, !"__initcall__kmod_hid_uclogic__233_425_uclogic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-uclogic-core.c", i32 425, i32 1}
!2 = !{ptr @__exitcall_uclogic_driver_exit, !1, !"__exitcall_uclogic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-uclogic-core.c", i32 427, i32 1}
!5 = !{ptr @__UNIQUE_ID_author235, !6, !"__UNIQUE_ID_author235", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-uclogic-core.c", i32 428, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-uclogic-core.c", i32 429, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-uclogic-core.c", i32 412, i32 10}
!13 = !{ptr @uclogic_driver, !14, !"uclogic_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-uclogic-core.c", i32 411, i32 26}
!15 = !{ptr @uclogic_devices, !16, !"uclogic_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-uclogic-core.c", i32 358, i32 35}
!17 = !{ptr @uclogic_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-uclogic-core.c", i32 182, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-uclogic-core.c", i32 189, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @uclogic_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @uclogic_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-uclogic-core.c", i32 193, i32 2}
!30 = !{ptr @uclogic_probe.__UNIQUE_ID_ddebug232, !29, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-uclogic-core.c", i32 196, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @uclogic_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @uclogic_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-uclogic-core.c", i32 206, i32 3}
!40 = !{ptr @uclogic_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @uclogic_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-uclogic-core.c", i32 214, i32 3}
!44 = !{ptr @uclogic_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @uclogic_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-uclogic-core.c", i32 220, i32 3}
!48 = !{ptr @uclogic_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @uclogic_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-uclogic-core.c", i32 129, i32 12}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-uclogic-core.c", i32 132, i32 12}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-uclogic-core.c", i32 135, i32 12}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-uclogic-core.c", i32 138, i32 12}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-uclogic-core.c", i32 141, i32 12}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-uclogic-core.c", i32 144, i32 12}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-uclogic-core.c", i32 152, i32 24}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-uclogic-core.c", i32 241, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @uclogic_resume._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @uclogic_resume._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148287285, i64 2148287290, i64 2148287303, i64 2148287347, i64 2148287381, i64 2148287402}
!79 = !{i8 0, i8 2}
