; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-saitek.c_pt.bc'
source_filename = "../drivers/hid/hid-saitek.c"
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
%struct.atomic_t = type { i32 }
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
%struct.saitek_sc = type { i32, i32 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__initcall__kmod_hid_saitek__225_203_saitek_driver_init6 = internal global ptr @saitek_driver_init, section ".initcall6.init", align 4
@saitek_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @saitek_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @saitek_probe, ptr null, ptr null, ptr @saitek_raw_event, ptr null, ptr @saitek_event, ptr null, ptr @saitek_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_saitek_driver_exit = internal global ptr @saitek_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file226 = internal constant [39 x i8] c"hid_saitek.file=drivers/hid/hid-saitek\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [23 x i8] c"hid_saitek.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_saitek\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"saitek\00", [25 x i8] zeroinitializer }, align 32
@saitek_devices = internal constant { [9 x %struct.hid_device_id], [48 x i8] } { [9 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1569, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 5893, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3275, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3287, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3277, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3322, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 5897, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3280, i32 4 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saitek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 45, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't alloc saitek descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saitek_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-saitek.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@saitek_probe._entry_ptr = internal global ptr @saitek_probe._entry, section ".printk_index", align 4
@saitek_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 56, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@saitek_probe._entry_ptr.9 = internal global ptr @saitek_probe._entry.7, section ".printk_index", align 4
@saitek_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 62, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@saitek_probe._entry_ptr.12 = internal global ptr @saitek_probe._entry.10, section ".printk_index", align 4
@saitek_raw_event.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saitek_raw_event\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"entered mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@saitek_raw_event.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@saitek_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 79, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Fixing up Saitek PS1000 report descriptor\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saitek_report_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@saitek_report_fixup._entry_ptr = internal global ptr @saitek_report_fixup._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"saitek_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 195, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 203, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 196, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"saitek_devices\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 173, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 45, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 56, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 62, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 112, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [28 x i8] c"../drivers/hid/hid-saitek.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 79, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_saitek_driver_exit, ptr @__initcall__kmod_hid_saitek__225_203_saitek_driver_init6, ptr @saitek_driver_exit, ptr @saitek_probe._entry, ptr @saitek_probe._entry.10, ptr @saitek_probe._entry.7, ptr @saitek_probe._entry_ptr, ptr @saitek_probe._entry_ptr.12, ptr @saitek_probe._entry_ptr.9, ptr @saitek_report_fixup._entry, ptr @saitek_report_fixup._entry_ptr, ptr @saitek_driver, ptr @.str, ptr @.str.1, ptr @saitek_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saitek_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saitek_devices to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saitek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saitek_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saitek_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saitek_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saitek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @saitek_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saitek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @saitek_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saitek_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.saitek_sc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mode, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i32 = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not = icmp eq i32 %call.i32, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.2, %entry.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %entry.cleanup.sink.split_crit_edge ], [ %call.i32, %if.end.cleanup.sink.split_crit_edge ], [ %call10, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.11.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saitek_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef %raw_data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp = icmp eq i32 %size, 7
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.else41

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %raw_data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and1 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.else:                                          ; preds = %if.then
  %and6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and12 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select = select i1 %tobool13.not, i32 -1, i32 2
  br label %if.end16

if.end16:                                         ; preds = %if.else9, %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %mode.0 = phi i32 [ 0, %if.then.if.end16_crit_edge ], [ 1, %if.else.if.end16_crit_edge ], [ %spec.select, %if.else9 ]
  %6 = and i8 %5, -8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx, align 1
  %mode21 = getelementptr inbounds %struct.saitek_sc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mode.0, i32 %9)
  %cmp22.not = icmp eq i32 %mode.0, %9
  br i1 %cmp22.not, label %if.end16.if.end111_crit_edge, label %do.body

if.end16.if.end111_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

do.body:                                          ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saitek_raw_event.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saitek_raw_event, %if.then29)) #4
          to label %do.end [label %if.then29], !srcloc !50

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @saitek_raw_event.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %mode.0) #4
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %10 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp32.not = icmp eq i32 %11, -1
  br i1 %cmp32.not, label %do.end.if.end38_crit_edge, label %if.then34

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = or i8 %13, 4
  store i8 %14, ptr %arrayidx, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %do.end.if.end38_crit_edge
  %15 = ptrtoint ptr %mode21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mode.0, ptr %mode21, align 4
  br label %if.end111

if.else41:                                        ; preds = %entry
  %and43 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp ne i32 %and43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp46 = icmp eq i32 %size, 8
  %or.cond136 = and i1 %cmp46, %tobool44.not
  br i1 %or.cond136, label %if.then48, label %if.else41.if.end111_crit_edge

if.else41.if.end111_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then48:                                        ; preds = %if.else41
  %arrayidx50 = getelementptr i8, ptr %raw_data, i32 1
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool53.not = icmp sgt i8 %17, -1
  br i1 %tobool53.not, label %if.else55, label %if.then48.if.end69_crit_edge

if.then48.if.end69_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.else55:                                        ; preds = %if.then48
  %arrayidx56 = getelementptr i8, ptr %raw_data, i32 2
  %18 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %19 to i32
  %and58 = and i32 %conv57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else61, label %if.else55.if.end69_crit_edge

if.else55.if.end69_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.else61:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #6
  %and64 = and i32 %conv57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %spec.select137 = select i1 %tobool65.not, i32 -1, i32 2
  br label %if.end69

if.end69:                                         ; preds = %if.else61, %if.else55.if.end69_crit_edge, %if.then48.if.end69_crit_edge
  %mode49.0 = phi i32 [ 0, %if.then48.if.end69_crit_edge ], [ 1, %if.else55.if.end69_crit_edge ], [ %spec.select137, %if.else61 ]
  %20 = and i8 %17, 127
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx50, align 1
  %arrayidx74 = getelementptr i8, ptr %raw_data, i32 2
  %22 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx74, align 1
  %24 = and i8 %23, -4
  store i8 %24, ptr %arrayidx74, align 1
  %mode78 = getelementptr inbounds %struct.saitek_sc, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %mode78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mode49.0, i32 %26)
  %cmp79.not = icmp eq i32 %mode49.0, %26
  br i1 %cmp79.not, label %if.end69.if.end111_crit_edge, label %do.body82

if.end69.if.end111_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

do.body82:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saitek_raw_event.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saitek_raw_event, %if.then94)) #4
          to label %do.end98 [label %if.then94], !srcloc !50

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  %dev95 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @saitek_raw_event.__UNIQUE_ID_ddebug224, ptr noundef %dev95, ptr noundef nonnull @.str.14, i32 noundef %mode49.0) #4
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body82
  %27 = ptrtoint ptr %mode78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp100.not = icmp eq i32 %28, -1
  br i1 %cmp100.not, label %do.end98.if.end107_crit_edge, label %if.then102

do.end98.if.end107_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then102:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx50, align 1
  %31 = or i8 %30, -128
  store i8 %31, ptr %arrayidx50, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %do.end98.if.end107_crit_edge
  %32 = ptrtoint ptr %mode78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mode49.0, ptr %mode78, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end107, %if.end69.if.end111_crit_edge, %if.else41.if.end111_crit_edge, %if.end38, %if.end16.if.end111_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saitek_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %0 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hidinput, align 4
  %input1 = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ne i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true3:                                   ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true3.lor.lhs.false_crit_edge, label %land.lhs.true5

land.lhs.true3.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 282, i16 %11)
  %cmp7 = icmp eq i16 %11, 282
  br i1 %cmp7, label %land.lhs.true5.if.then_crit_edge, label %land.lhs.true5.lor.lhs.false_crit_edge

land.lhs.true5.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true5.if.then_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true5.lor.lhs.false_crit_edge, %land.lhs.true3.lor.lhs.false_crit_edge
  %and10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %code13 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %12 = ptrtoint ptr %code13 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %code13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 287, i16 %13)
  %cmp16 = icmp eq i16 %13, 287
  br i1 %cmp16, label %land.lhs.true12.if.then_crit_edge, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true12.if.then_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %land.lhs.true12.if.then_crit_edge, %land.lhs.true5.if.then_crit_edge
  %code18 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code18 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %code18, align 2
  %conv19 = zext i16 %15 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv19, i32 noundef 1) #4
  %16 = ptrtoint ptr %code18 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %code18, align 2
  %conv21 = zext i16 %17 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv21, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @saitek_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %5)
  %cmp = icmp eq i32 %5, 137
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %rdesc, i32 20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp2 = icmp eq i8 %7, 9
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %arrayidx5 = getelementptr i8, ptr %rdesc, i32 21
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %9)
  %cmp7 = icmp eq i8 %9, 51
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %arrayidx10 = getelementptr i8, ptr %rdesc, i32 94
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %11)
  %cmp12 = icmp eq i8 %11, -127
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %arrayidx15 = getelementptr i8, ptr %rdesc, i32 95
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp17 = icmp eq i8 %13, 3
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true14.if.end_crit_edge

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx20 = getelementptr i8, ptr %rdesc, i32 110
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %15)
  %cmp22 = icmp eq i8 %15, -127
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx25 = getelementptr i8, ptr %rdesc, i32 111
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp27 = icmp eq i8 %17, 3
  br i1 %cmp27, label %do.end, label %land.lhs.true24.if.end_crit_edge

land.lhs.true24.if.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 21, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx5, align 1
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx15, align 1
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %arrayidx25, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true24.if.end_crit_edge, %land.lhs.true19.if.end_crit_edge, %land.lhs.true14.if.end_crit_edge, %land.lhs.true9.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %rdesc
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_hid_saitek__225_203_saitek_driver_init6, !1, !"__initcall__kmod_hid_saitek__225_203_saitek_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-saitek.c", i32 203, i32 1}
!2 = !{ptr @__exitcall_saitek_driver_exit, !1, !"__exitcall_saitek_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file226, !4, !"__UNIQUE_ID_file226", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-saitek.c", i32 205, i32 1}
!5 = !{ptr @__UNIQUE_ID_license227, !4, !"__UNIQUE_ID_license227", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-saitek.c", i32 196, i32 10}
!9 = !{ptr @saitek_driver, !10, !"saitek_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-saitek.c", i32 195, i32 26}
!11 = !{ptr @saitek_devices, !12, !"saitek_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-saitek.c", i32 173, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-saitek.c", i32 45, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @saitek_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @saitek_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-saitek.c", i32 56, i32 3}
!23 = !{ptr @saitek_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @saitek_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-saitek.c", i32 62, i32 3}
!27 = !{ptr @saitek_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @saitek_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-saitek.c", i32 112, i32 4}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @saitek_raw_event.__UNIQUE_ID_ddebug223, !30, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!33 = !{ptr @saitek_raw_event.__UNIQUE_ID_ddebug224, !34, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-saitek.c", i32 135, i32 4}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-saitek.c", i32 79, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @saitek_report_fixup._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @saitek_report_fixup._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148280802, i64 2148280807, i64 2148280820, i64 2148280864, i64 2148280898, i64 2148280919}
