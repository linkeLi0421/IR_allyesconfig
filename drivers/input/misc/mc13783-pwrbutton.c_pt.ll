; ModuleID = '/llk/IR_all_yes/drivers/input/misc/mc13783-pwrbutton.c_pt.bc'
source_filename = "../drivers/input/misc/mc13783-pwrbutton.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mc13xxx_buttons_platform_data = type { i32, i16, i32, i16, i32, i16 }
%struct.mc13783_pwrb = type { ptr, ptr, i32, [3 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_mc13783_pwrbutton__233_264_mc13783_pwrbutton_driver_init6 = internal global ptr @mc13783_pwrbutton_driver_init, section ".initcall6.init", align 4
@mc13783_pwrbutton_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mc13783_pwrbutton_probe, ptr @mc13783_pwrbutton_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13783_pwrbutton_driver_exit = internal global ptr @mc13783_pwrbutton_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias234 = internal constant [51 x i8] c"mc13783_pwrbutton.alias=platform:mc13783-pwrbutton\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [51 x i8] c"mc13783_pwrbutton.description=MC13783 Power Button\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [60 x i8] c"mc13783_pwrbutton.file=drivers/input/misc/mc13783-pwrbutton\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [33 x i8] c"mc13783_pwrbutton.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [43 x i8] c"mc13783_pwrbutton.author=Philippe Retornaz\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13783-pwrbutton\00", [46 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mc13783_pwrbutton_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/misc/mc13783-pwrbutton.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe._entry_ptr = internal global ptr @mc13783_pwrbutton_probe._entry, section ".printk_index", align 4
@mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13783_pwrbutton\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't allocate power button\0A\00", [35 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"b1on\00", [27 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't request irq\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"b2on\00", [27 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"b3on\00", [27 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't request irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mc13783_pwrbutton/input0\00", [39 x i8] zeroinitializer }, align 32
@mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't register power button: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 27, i64 28, i64 29]
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"mc13783_pwrbutton_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 256, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 260, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 102, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 108, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 140, i32 20 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 142, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 159, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 178, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 180, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 190, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [42 x i8] c"../drivers/input/misc/mc13783-pwrbutton.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 200, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_mc13783_pwrbutton_driver_exit, ptr @__initcall__kmod_mc13783_pwrbutton__233_264_mc13783_pwrbutton_driver_init6, ptr @mc13783_pwrbutton_driver_exit, ptr @mc13783_pwrbutton_probe._entry, ptr @mc13783_pwrbutton_probe._entry_ptr, ptr @mc13783_pwrbutton_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_pwrbutton_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_pwrbutton_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_pwrbutton_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mc13783_pwrbutton_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13783_pwrbutton_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13783_pwrbutton_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_pwrbutton_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @input_allocate_device() #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.body7, label %if.end17

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_pwrbutton_probe, %if.then12)) #6
          to label %cleanup [label %if.then12], !srcloc !58

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #10
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.then20, label %if.end38

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_pwrbutton_probe, %if.then33)) #6
          to label %free_input_dev [label %if.then33], !srcloc !58

if.then33:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %free_input_dev

if.end38:                                         ; preds = %if.end17
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %and = shl i32 %8, 4
  %shl = and i32 %and, 48
  %b2on_flags = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %b2on_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b2on_flags, align 4
  %and39 = shl i32 %10, 6
  %shl40 = and i32 %and39, 192
  %or41 = or i32 %shl40, %shl
  %b3on_flags = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %b3on_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b3on_flags, align 4
  %and42 = shl i32 %12, 8
  %shl43 = and i32 %and42, 768
  %or44 = or i32 %or41, %shl43
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %call7.i.i, align 8
  %mc1378346 = getelementptr inbounds %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %mc1378346 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %mc1378346, align 4
  tail call void @mc13xxx_lock(ptr noundef %3) #6
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %and48 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end38.if.end90_crit_edge, label %if.then50

if.end38.if.end90_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then50:                                        ; preds = %if.end38
  %b1on_key = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %b1on_key to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %b1on_key, align 4
  %keymap = getelementptr inbounds %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %keymap to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %keymap, align 4
  %20 = load i16, ptr %b1on_key, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not = icmp eq i16 %20, 0
  br i1 %cmp.not, label %if.then50.if.end56_crit_edge, label %if.then53

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %20 to i32
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 6
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %22, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then50.if.end56_crit_edge
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %and58 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end62_crit_edge, label %if.then60

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %or61 = or i32 %26, 1
  store i32 %or61, ptr %flags, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56.if.end62_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %and64 = lshr i32 %28, 3
  %29 = and i32 %and64, 2
  %30 = or i32 %29, %or44
  %call69 = tail call i32 @mc13xxx_irq_request(ptr noundef %3, i32 noundef 27, ptr noundef nonnull @button_irq, ptr noundef nonnull @.str.8, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end62.if.end90_crit_edge, label %do.body72

if.end62.if.end90_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.body72:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_pwrbutton_probe, %if.then84)) #6
          to label %free_priv [label %if.then84], !srcloc !58

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  br label %free_priv

if.end90:                                         ; preds = %if.end62.if.end90_crit_edge, %if.end38.if.end90_crit_edge
  %reg.1 = phi i32 [ %30, %if.end62.if.end90_crit_edge ], [ %or44, %if.end38.if.end90_crit_edge ]
  %31 = ptrtoint ptr %b2on_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b2on_flags, align 4
  %and92 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end141_crit_edge, label %if.then94

if.end90.if.end141_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then94:                                        ; preds = %if.end90
  %b2on_key = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %b2on_key to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %b2on_key, align 4
  %arrayidx96 = getelementptr %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx96, align 2
  %36 = load i16, ptr %b2on_key, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp99.not = icmp eq i16 %36, 0
  br i1 %cmp99.not, label %if.then94.if.end106_crit_edge, label %if.then101

if.then94.if.end106_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then101:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  %conv98 = zext i16 %36 to i32
  %keybit104 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 6
  %rem.i339 = and i32 %conv98, 31
  %shl.i340 = shl nuw i32 1, %rem.i339
  %div2.i341 = lshr i32 %conv98, 5
  %add.ptr.i342 = getelementptr i32, ptr %keybit104, i32 %div2.i341
  %37 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i342, align 4
  %or.i343 = or i32 %38, %shl.i340
  store i32 %or.i343, ptr %add.ptr.i342, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.then94.if.end106_crit_edge
  %39 = ptrtoint ptr %b2on_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %b2on_flags, align 4
  %and108 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end113_crit_edge, label %if.then110

if.end106.if.end113_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %flags111 = getelementptr inbounds %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags111, align 8
  %or112 = or i32 %42, 2
  store i32 %or112, ptr %flags111, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end106.if.end113_crit_edge
  %43 = ptrtoint ptr %b2on_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %b2on_flags, align 4
  %and115 = lshr i32 %44, 2
  %45 = and i32 %and115, 4
  %46 = or i32 %45, %reg.1
  %call120 = tail call i32 @mc13xxx_irq_request(ptr noundef %3, i32 noundef 28, ptr noundef nonnull @button_irq, ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end113.if.end141_crit_edge, label %do.body123

if.end113.if.end141_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

do.body123:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_pwrbutton_probe, %if.then135)) #6
          to label %free_irq_b1 [label %if.then135], !srcloc !58

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  br label %free_irq_b1

if.end141:                                        ; preds = %if.end113.if.end141_crit_edge, %if.end90.if.end141_crit_edge
  %reg.3 = phi i32 [ %46, %if.end113.if.end141_crit_edge ], [ %reg.1, %if.end90.if.end141_crit_edge ]
  %47 = ptrtoint ptr %b3on_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %b3on_flags, align 4
  %and143 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end141.if.end192_crit_edge, label %if.then145

if.end141.if.end192_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.then145:                                       ; preds = %if.end141
  %b3on_key = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %5, i32 0, i32 5
  %49 = ptrtoint ptr %b3on_key to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %b3on_key, align 4
  %arrayidx147 = getelementptr %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx147, align 8
  %52 = load i16, ptr %b3on_key, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp150.not = icmp eq i16 %52, 0
  br i1 %cmp150.not, label %if.then145.if.end157_crit_edge, label %if.then152

if.then145.if.end157_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then152:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  %conv149 = zext i16 %52 to i32
  %keybit155 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 6
  %rem.i347 = and i32 %conv149, 31
  %shl.i348 = shl nuw i32 1, %rem.i347
  %div2.i349 = lshr i32 %conv149, 5
  %add.ptr.i350 = getelementptr i32, ptr %keybit155, i32 %div2.i349
  %53 = ptrtoint ptr %add.ptr.i350 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i350, align 4
  %or.i351 = or i32 %54, %shl.i348
  store i32 %or.i351, ptr %add.ptr.i350, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %if.then145.if.end157_crit_edge
  %55 = ptrtoint ptr %b3on_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %b3on_flags, align 4
  %and159 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.if.end164_crit_edge, label %if.then161

if.end157.if.end164_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  %flags162 = getelementptr inbounds %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %flags162 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags162, align 8
  %or163 = or i32 %58, 4
  store i32 %or163, ptr %flags162, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end157.if.end164_crit_edge
  %59 = ptrtoint ptr %b3on_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %b3on_flags, align 4
  %and166 = lshr i32 %60, 1
  %61 = and i32 %and166, 8
  %62 = or i32 %61, %reg.3
  %call171 = tail call i32 @mc13xxx_irq_request(ptr noundef %3, i32 noundef 29, ptr noundef nonnull @button_irq, ptr noundef nonnull @.str.11, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end164.if.end192_crit_edge, label %do.body174

if.end164.if.end192_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

do.body174:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_pwrbutton_probe, %if.then186)) #6
          to label %free_irq_b2 [label %if.then186], !srcloc !58

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call171) #6
  br label %free_irq_b2

if.end192:                                        ; preds = %if.end164.if.end192_crit_edge, %if.end141.if.end192_crit_edge
  %reg.5 = phi i32 [ %62, %if.end164.if.end192_crit_edge ], [ %reg.3, %if.end141.if.end192_crit_edge ]
  %call193 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef 15, i32 noundef 1022, i32 noundef %reg.5) #6
  tail call void @mc13xxx_unlock(ptr noundef %3) #6
  %63 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.6, ptr %call4, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 1
  %64 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.13, ptr %phys, align 4
  %parent196 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 1
  %65 = ptrtoint ptr %parent196 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dev, ptr %parent196, align 8
  %keymap197 = getelementptr inbounds %struct.mc13783_pwrb, ptr %call7.i.i, i32 0, i32 3
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 17
  %66 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %keymap197, ptr %keycode, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 15
  %67 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %keycodemax, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 16
  %68 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %keycodesize, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 5
  %69 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %evbit, align 4
  %or.i355 = or i32 %70, 2
  store i32 %or.i355, ptr %evbit, align 4
  %call200 = tail call i32 @input_register_device(ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end220, label %do.body203

do.body203:                                       ; preds = %if.end192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_pwrbutton_probe, %if.then215)) #6
          to label %free_irq [label %if.then215], !srcloc !58

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call200) #6
  br label %free_irq

if.end220:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

free_irq:                                         ; preds = %if.then215, %do.body203
  tail call void @mc13xxx_lock(ptr noundef %3) #6
  %72 = ptrtoint ptr %b3on_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %b3on_flags, align 4
  %and222 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %free_irq.free_irq_b2_crit_edge, label %if.then224

free_irq.free_irq_b2_crit_edge:                   ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_irq_b2

if.then224:                                       ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #8
  %call225 = tail call i32 @mc13xxx_irq_free(ptr noundef %3, i32 noundef 29, ptr noundef nonnull %call7.i.i) #6
  br label %free_irq_b2

free_irq_b2:                                      ; preds = %if.then224, %free_irq.free_irq_b2_crit_edge, %if.then186, %do.body174
  %err.0 = phi i32 [ %call171, %if.then186 ], [ %call200, %if.then224 ], [ %call200, %free_irq.free_irq_b2_crit_edge ], [ %call171, %do.body174 ]
  %74 = ptrtoint ptr %b2on_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %b2on_flags, align 4
  %and228 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %free_irq_b2.free_irq_b1_crit_edge, label %if.then230

free_irq_b2.free_irq_b1_crit_edge:                ; preds = %free_irq_b2
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_irq_b1

if.then230:                                       ; preds = %free_irq_b2
  call void @__sanitizer_cov_trace_pc() #8
  %call231 = tail call i32 @mc13xxx_irq_free(ptr noundef %3, i32 noundef 28, ptr noundef nonnull %call7.i.i) #6
  br label %free_irq_b1

free_irq_b1:                                      ; preds = %if.then230, %free_irq_b2.free_irq_b1_crit_edge, %if.then135, %do.body123
  %err.1 = phi i32 [ %call120, %if.then135 ], [ %err.0, %if.then230 ], [ %err.0, %free_irq_b2.free_irq_b1_crit_edge ], [ %call120, %do.body123 ]
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %5, align 4
  %and234 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %free_irq_b1.free_priv_crit_edge, label %if.then236

free_irq_b1.free_priv_crit_edge:                  ; preds = %free_irq_b1
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_priv

if.then236:                                       ; preds = %free_irq_b1
  call void @__sanitizer_cov_trace_pc() #8
  %call237 = tail call i32 @mc13xxx_irq_free(ptr noundef %3, i32 noundef 27, ptr noundef nonnull %call7.i.i) #6
  br label %free_priv

free_priv:                                        ; preds = %if.then236, %free_irq_b1.free_priv_crit_edge, %if.then84, %do.body72
  %err.2 = phi i32 [ %call69, %if.then84 ], [ %err.1, %if.then236 ], [ %err.1, %free_irq_b1.free_priv_crit_edge ], [ %call69, %do.body72 ]
  tail call void @mc13xxx_unlock(ptr noundef %3) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %free_input_dev

free_input_dev:                                   ; preds = %free_priv, %if.then33, %if.then20
  %err.3 = phi i32 [ %err.2, %free_priv ], [ -12, %if.then33 ], [ -12, %if.then20 ]
  tail call void @input_free_device(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %free_input_dev, %if.end220, %if.then12, %do.body7, %do.end
  %retval.0 = phi i32 [ %err.3, %free_input_dev ], [ 0, %if.end220 ], [ -19, %do.end ], [ -12, %if.then12 ], [ -12, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_pwrbutton_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %mc13783 = getelementptr inbounds %struct.mc13783_pwrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mc13783 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc13783, align 4
  tail call void @mc13xxx_lock(ptr noundef %5) #6
  %b3on_flags = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %b3on_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b3on_flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %mc13783 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc13783, align 4
  %call3 = tail call i32 @mc13xxx_irq_free(ptr noundef %9, i32 noundef 29, ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b2on_flags = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %b2on_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b2on_flags, align 4
  %and4 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mc13783 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc13783, align 4
  %call8 = tail call i32 @mc13xxx_irq_free(ptr noundef %13, i32 noundef 28, ptr noundef %1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %and10 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mc13783 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc13783, align 4
  %call14 = tail call i32 @mc13xxx_irq_free(ptr noundef %17, i32 noundef 27, ptr noundef %1) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %18 = ptrtoint ptr %mc13783 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc13783, align 4
  tail call void @mc13xxx_unlock(ptr noundef %19) #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %21) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @button_irq(i32 noundef %irq, ptr nocapture noundef readonly %_priv) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !59
  %mc13783 = getelementptr inbounds %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 1
  %1 = ptrtoint ptr %mc13783 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mc13783, align 4
  %call2 = call i32 @mc13xxx_reg_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %val) #6
  %3 = zext i32 %irq to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq, label %entry.sw.epilog_crit_edge [
    i32 27, label %sw.bb
    i32 28, label %sw.bb5
    i32 29, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %and = lshr i32 %5, 3
  %and.lobit = and i32 %and, 1
  store i32 %and.lobit, ptr %val, align 4
  %flags = getelementptr inbounds %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %xor = xor i32 %and.lobit, 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %9 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_priv, align 4
  %keymap = getelementptr inbounds %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 3
  %11 = ptrtoint ptr %keymap to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %keymap, align 4
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i = icmp ne i32 %14, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef %conv, i32 noundef %lnot.ext.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and6 = lshr i32 %16, 4
  %and6.lobit = and i32 %and6, 1
  store i32 %and6.lobit, ptr %val, align 4
  %flags9 = getelementptr inbounds %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 2
  %17 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags9, align 4
  %and10 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb5.if.end14_crit_edge, label %if.then12

sw.bb5.if.end14_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %xor13 = xor i32 %and6.lobit, 1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %xor13, ptr %val, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb5.if.end14_crit_edge
  %20 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_priv, align 4
  %arrayidx17 = getelementptr %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %23 to i32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i46 = icmp ne i32 %25, 0
  %lnot.ext.i47 = zext i1 %tobool.i46 to i32
  call void @input_event(ptr noundef %21, i32 noundef 1, i32 noundef %conv18, i32 noundef %lnot.ext.i47) #6
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and20 = lshr i32 %27, 5
  %and20.lobit = and i32 %and20, 1
  store i32 %and20.lobit, ptr %val, align 4
  %flags23 = getelementptr inbounds %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 2
  %28 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags23, align 4
  %and24 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %sw.bb19.if.end28_crit_edge, label %if.then26

sw.bb19.if.end28_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %xor27 = xor i32 %and20.lobit, 1
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %xor27, ptr %val, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %sw.bb19.if.end28_crit_edge
  %31 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_priv, align 4
  %arrayidx31 = getelementptr %struct.mc13783_pwrb, ptr %_priv, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx31, align 4
  %conv32 = zext i16 %34 to i32
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i48 = icmp ne i32 %36, 0
  %lnot.ext.i49 = zext i1 %tobool.i48 to i32
  call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef %conv32, i32 noundef %lnot.ext.i49) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %if.end14, %if.end, %entry.sw.epilog_crit_edge
  %37 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_priv, align 4
  call void @input_event(ptr noundef %38, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_mc13783_pwrbutton__233_264_mc13783_pwrbutton_driver_init6, !1, !"__initcall__kmod_mc13783_pwrbutton__233_264_mc13783_pwrbutton_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 264, i32 1}
!2 = !{ptr @__exitcall_mc13783_pwrbutton_driver_exit, !1, !"__exitcall_mc13783_pwrbutton_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias234, !4, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 266, i32 1}
!5 = !{ptr @__UNIQUE_ID_description235, !6, !"__UNIQUE_ID_description235", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 267, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 268, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author238, !11, !"__UNIQUE_ID_author238", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 269, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 260, i32 11}
!14 = !{ptr @mc13783_pwrbutton_driver, !15, !"mc13783_pwrbutton_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 256, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 102, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mc13783_pwrbutton_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mc13783_pwrbutton_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 108, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug227, !25, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!28 = !{ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug228, !29, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 115, i32 3}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 140, i32 20}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 142, i32 4}
!34 = !{ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug229, !33, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 159, i32 20}
!37 = !{ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug230, !38, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 161, i32 4}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 178, i32 20}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 180, i32 4}
!43 = !{ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug231, !42, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 190, i32 14}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/mc13783-pwrbutton.c", i32 200, i32 3}
!48 = !{ptr @mc13783_pwrbutton_probe.__UNIQUE_ID_ddebug232, !47, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148958890, i64 2148958895, i64 2148958908, i64 2148958952, i64 2148958986, i64 2148959007}
!59 = !{!"auto-init"}
