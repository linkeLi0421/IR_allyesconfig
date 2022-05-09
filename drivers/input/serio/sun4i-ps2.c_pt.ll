; ModuleID = '/llk/IR_all_yes/drivers/input/serio/sun4i-ps2.c_pt.bc'
source_filename = "../drivers/input/serio/sun4i-ps2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sun4i_ps2data = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@__initcall__kmod_sun4i_ps2__187_333_sun4i_ps2_driver_init6 = internal global ptr @sun4i_ps2_driver_init, section ".initcall6.init", align 4
@sun4i_ps2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_ps2_probe, ptr @sun4i_ps2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_ps2_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_ps2_driver_exit = internal global ptr @sun4i_ps2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [62 x i8] c"sun4i_ps2.author=Vishnu Patekar <vishnupatekar0510@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [57 x i8] c"sun4i_ps2.author=Aaron.maoye <leafy.myeh@newbietech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [54 x i8] c"sun4i_ps2.description=Allwinner A10/Sun4i PS/2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [45 x i8] c"sun4i_ps2.file=drivers/input/serio/sun4i-ps2\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [25 x i8] c"sun4i_ps2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-ps2\00", [22 x i8] zeroinitializer }, align 32
@sun4i_ps2_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ps2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&drvdata->lock\00", [17 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to locate registers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_ps2_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/serio/sun4i-ps2.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe._entry_ptr = internal global ptr @sun4i_ps2_probe._entry, section ".printk_index", align 4
@sun4i_ps2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe._entry_ptr.9 = internal global ptr @sun4i_ps2_probe._entry.7, section ".printk_index", align 4
@sun4i_ps2_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't get clock %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe._entry_ptr.12 = internal global ptr @sun4i_ps2_probe._entry.10, section ".printk_index", align 4
@sun4i_ps2_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable clock %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe._entry_ptr.15 = internal global ptr @sun4i_ps2_probe._entry.13, section ".printk_index", align 4
@sun4i_ps2_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate interrupt %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sun4i_ps2_probe._entry_ptr.18 = internal global ptr @sun4i_ps2_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"sun4i_ps2_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 325, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 329, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"sun4i_ps2_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 318, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 223, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 228, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 235, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 243, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 249, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [35 x i8] c"../drivers/input/serio/sun4i-ps2.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 278, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_sun4i_ps2_driver_exit, ptr @__initcall__kmod_sun4i_ps2__187_333_sun4i_ps2_driver_init6, ptr @sun4i_ps2_driver_exit, ptr @sun4i_ps2_probe._entry, ptr @sun4i_ps2_probe._entry.10, ptr @sun4i_ps2_probe._entry.13, ptr @sun4i_ps2_probe._entry.16, ptr @sun4i_ps2_probe._entry.7, ptr @sun4i_ps2_probe._entry_ptr, ptr @sun4i_ps2_probe._entry_ptr.12, ptr @sun4i_ps2_probe._entry_ptr.15, ptr @sun4i_ps2_probe._entry_ptr.18, ptr @sun4i_ps2_probe._entry_ptr.9, ptr @sun4i_ps2_driver, ptr @.str, ptr @sun4i_ps2_match, ptr @sun4i_ps2_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ps2_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ps2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_ps2_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_ps2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_ps2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ps2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i125 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1336) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i.i125, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.err_free_mem_crit_edge, label %do.body

entry.err_free_mem_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mem

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.sun4i_ps2data, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sun4i_ps2_probe.__key, i16 noundef signext 3) #7
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %err_free_mem

if.end11:                                         ; preds = %do.body
  %2 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call13 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %add.i) #7
  %reg_base = getelementptr inbounds %struct.sun4i_ps2data, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %reg_base, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %err_free_mem

if.end20:                                         ; preds = %if.end11
  %call21 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.sun4i_ps2data, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call21, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %8) #11
  br label %err_ioremap

if.end30:                                         ; preds = %if.end20
  %call.i = tail call i32 @clk_prepare(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.do.end37_crit_edge

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call21) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i, %if.end30.do.end37_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end30.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i.ph) #11
  br label %err_clk

if.end38:                                         ; preds = %if.end.i
  %id = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %id, align 1
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 7
  %10 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sun4i_ps2_write, ptr %write, align 8
  %open = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 8
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sun4i_ps2_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 9
  %12 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun4i_ps2_close, ptr %close, align 8
  %13 = ptrtoint ptr %call7.i.i125 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %call7.i.i125, align 8
  %parent = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %parent, align 8
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i126 = icmp eq ptr %16, null
  br i1 %tobool.not.i126, label %if.end.i127, label %if.end38.dev_name.exit_crit_edge

if.end38.dev_name.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i127:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i127, %if.end38.dev_name.exit_crit_edge
  %retval.0.i128 = phi ptr [ %18, %if.end.i127 ], [ %16, %if.end38.dev_name.exit_crit_edge ]
  %call41 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %retval.0.i128, i32 noundef 32) #7
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i125, i32 0, i32 2
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i130 = icmp eq ptr %20, null
  br i1 %tobool.not.i130, label %if.end.i131, label %dev_name.exit.dev_name.exit133_crit_edge

dev_name.exit.dev_name.exit133_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit133

if.end.i131:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit133

dev_name.exit133:                                 ; preds = %if.end.i131, %dev_name.exit.dev_name.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %22, %if.end.i131 ], [ %20, %dev_name.exit.dev_name.exit133_crit_edge ]
  %call44 = tail call i32 @strlcpy(ptr noundef %phys, ptr noundef %retval.0.i132, i32 noundef 32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #7, !srcloc !55
  %call49 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.sun4i_ps2data, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call49, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp = icmp slt i32 %call49, 0
  br i1 %cmp, label %dev_name.exit133.err_disable_clk_crit_edge, label %if.end53

dev_name.exit133.err_disable_clk_crit_edge:       ; preds = %dev_name.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end53:                                         ; preds = %dev_name.exit133
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i125, ptr %call7.i.i, align 8
  %dev55 = getelementptr inbounds %struct.sun4i_ps2data, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %dev55, align 4
  %call.i134 = tail call i32 @request_threaded_irq(i32 noundef %call49, ptr noundef nonnull @sun4i_ps2_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool58.not = icmp eq i32 %call.i134, 0
  br i1 %tobool58.not, label %if.end65, label %do.end62

do.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev55, align 4
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.17, i32 noundef %31, i32 noundef %call.i134) #11
  br label %err_disable_clk

if.end65:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i125, ptr noundef null) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_disable_clk:                                  ; preds = %do.end62, %dev_name.exit133.err_disable_clk_crit_edge
  %error.0 = phi i32 [ %call.i134, %do.end62 ], [ %call49, %dev_name.exit133.err_disable_clk_crit_edge ]
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %34) #7
  tail call void @clk_unprepare(ptr noundef %34) #7
  br label %err_clk

err_clk:                                          ; preds = %err_disable_clk, %do.end37
  %error.1 = phi i32 [ %retval.0.i.ph, %do.end37 ], [ %error.0, %err_disable_clk ]
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %36) #7
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_clk, %if.then24
  %error.2 = phi i32 [ %8, %if.then24 ], [ %error.1, %err_clk ]
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base, align 8
  tail call void @iounmap(ptr noundef %38) #7
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_ioremap, %do.end19, %do.end10, %entry.err_free_mem_crit_edge
  %error.3 = phi i32 [ %error.2, %err_ioremap ], [ -12, %do.end19 ], [ -6, %do.end10 ], [ -12, %entry.err_free_mem_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i125) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end65
  %retval.0 = phi i32 [ %error.3, %err_free_mem ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ps2_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @serio_unregister_port(ptr noundef %3) #7
  %irq = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %9) #7
  %reg_base = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ps2_write(ptr nocapture noundef readonly %serio, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serio, align 8
  %reg_base = getelementptr inbounds %struct.sun4i_ps2data, ptr %2, i32 0, i32 2
  %add.neg = sub i32 -1000, %0
  br label %do.body

do.body:                                          ; preds = %do.cond6.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.cond6, label %do.body3

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %conv = zext i8 %val to i32
  %7 = shl nuw i32 %conv, 24
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #7, !srcloc !55
  br label %cleanup

do.cond6:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %10
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond6.do.body_crit_edge, label %do.cond6.cleanup_crit_edge

do.cond6.cleanup_crit_edge:                       ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond6.do.body_crit_edge:                       ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %do.cond6.cleanup_crit_edge, %do.body3
  %retval.0 = phi i32 [ 0, %do.body3 ], [ 1, %do.cond6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ps2_open(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %reg_base = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 117834496) #7, !srcloc !55
  %clk = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %7) #7
  %div = udiv i32 %call, 1000000
  %sub = shl nuw nsw i32 %div, 8
  %or = add nsw i32 %sub, -249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #7, !srcloc !55
  %lock = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 251658240) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_ps2_close(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  %reg_base = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %5 = and i32 %4, -134217729
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !55
  %irq = getelementptr inbounds %struct.sun4i_ps2data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %9) #7
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ps2_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sun4i_ps2data, ptr %dev_id, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %reg_base = getelementptr inbounds %struct.sun4i_ps2data, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !56
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %and = and i32 %3, 271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i32 %3, 2
  %and11.lobit = lshr exact i32 %and11, 1
  %or = or i32 %and11, %and11.lobit
  %or17 = or i32 %or, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 251723776) #7, !srcloc !55
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxflags.0 = phi i32 [ %or17, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and20 = and i32 %7, 1542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr27 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 117899264) #7, !srcloc !55
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end.if.end28_crit_edge
  %shr = lshr i32 %7, 16
  %and29 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not70 = icmp eq i32 %and29, 0
  br i1 %tobool30.not70, label %if.end28.do.body40_crit_edge, label %while.body

if.end28.do.body40_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

while.body:                                       ; preds = %if.end28
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %add.ptr34 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !56
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %call39 = tail call i32 @serio_interrupt(ptr noundef %17, i8 noundef zeroext %conv, i32 noundef %rxflags.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 1
  br i1 %tobool30.not, label %while.body.do.body40_crit_edge, label %while.body.1

while.body.do.body40_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

while.body.1:                                     ; preds = %while.body
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  %add.ptr34.1 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.1) #7, !srcloc !56
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %conv.1 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 4
  %call39.1 = tail call i32 @serio_interrupt(ptr noundef %23, i8 noundef zeroext %conv.1, i32 noundef %rxflags.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and29)
  %tobool30.not.1 = icmp eq i32 %and29, 2
  br i1 %tobool30.not.1, label %while.body.1.do.body40_crit_edge, label %while.body.2

while.body.1.do.body40_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base, align 4
  %add.ptr34.2 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.2) #7, !srcloc !56
  %27 = lshr i32 %26, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %conv.2 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %call39.2 = tail call i32 @serio_interrupt(ptr noundef %29, i8 noundef zeroext %conv.2, i32 noundef %rxflags.0) #7
  br label %do.body40

do.body40:                                        ; preds = %while.body.2, %while.body.1.do.body40_crit_edge, %while.body.do.body40_crit_edge, %if.end28.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 4
  %add.ptr44 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %2) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base, align 4
  %add.ptr49 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %6) #7, !srcloc !55
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_sun4i_ps2__187_333_sun4i_ps2_driver_init6, !1, !"__initcall__kmod_sun4i_ps2__187_333_sun4i_ps2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 333, i32 1}
!2 = !{ptr @__exitcall_sun4i_ps2_driver_exit, !1, !"__exitcall_sun4i_ps2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 335, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 336, i32 1}
!7 = !{ptr @__UNIQUE_ID_description190, !8, !"__UNIQUE_ID_description190", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 337, i32 1}
!9 = !{ptr @__UNIQUE_ID_file191, !10, !"__UNIQUE_ID_file191", i1 false, i1 false}
!10 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 338, i32 1}
!11 = !{ptr @__UNIQUE_ID_license192, !10, !"__UNIQUE_ID_license192", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 329, i32 11}
!14 = !{ptr @sun4i_ps2_driver, !15, !"sun4i_ps2_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 325, i32 31}
!16 = !{ptr @sun4i_ps2_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 223, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 228, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sun4i_ps2_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @sun4i_ps2_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 235, i32 3}
!29 = !{ptr @sun4i_ps2_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun4i_ps2_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 243, i32 3}
!33 = !{ptr @sun4i_ps2_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sun4i_ps2_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 249, i32 3}
!37 = !{ptr @sun4i_ps2_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sun4i_ps2_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 278, i32 3}
!41 = !{ptr @sun4i_ps2_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun4i_ps2_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sun4i_ps2_match, !44, !"sun4i_ps2_match", i1 false, i1 false}
!44 = !{!"../drivers/input/serio/sun4i-ps2.c", i32 318, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2153068555}
!55 = !{i64 4627132}
!56 = !{i64 4627550}
!57 = !{i64 2153060360}
!58 = !{i64 2153060668}
!59 = !{i64 2153055976}
!60 = !{i64 2153056968}
!61 = !{i64 2153057403}
!62 = !{i64 2153058503}
!63 = !{i64 2153059207}
!64 = !{i64 2153059551}
!65 = !{i64 2153049991}
!66 = !{i64 2153050510}
!67 = !{i64 2153052537}
!68 = !{i64 2153053837}
!69 = !{i64 2153054541}
!70 = !{i64 2153054775}
!71 = !{i64 2153055215}
