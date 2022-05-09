; ModuleID = '/llk/IR_all_yes/drivers/input/misc/twl4030-vibra.c_pt.bc'
source_filename = "../drivers/input/misc/twl4030-vibra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vibra_info = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_twl4030_vibra__226_245_twl4030_vibra_driver_init6 = internal global ptr @twl4030_vibra_driver_init, section ".initcall6.init", align 4
@twl4030_vibra_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_vibra_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_vibra_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_vibra_driver_exit = internal global ptr @twl4030_vibra_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias227 = internal constant [43 x i8] c"twl4030_vibra.alias=platform:twl4030-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [47 x i8] c"twl4030_vibra.description=TWL4030 Vibra driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [52 x i8] c"twl4030_vibra.file=drivers/input/misc/twl4030-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [26 x i8] c"twl4030_vibra.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [39 x i8] c"twl4030_vibra.author=Nokia Corporation\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-vibra\00", [18 x i8] zeroinitializer }, align 32
@twl4030_vibra_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twl4030_vibra_suspend, ptr @twl4030_vibra_resume, ptr @twl4030_vibra_suspend, ptr @twl4030_vibra_resume, ptr @twl4030_vibra_suspend, ptr @twl4030_vibra_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@twl4030_vibra_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030_vibra\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_vibra_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/misc/twl4030-vibra.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"platform_data not available\0A\00", [35 x i8] zeroinitializer }, align 32
@twl4030_vibra_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&info->play_work)\00", [60 x i8] zeroinitializer }, align 32
@twl4030_vibra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 205, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't allocate input device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_vibra_probe._entry_ptr = internal global ptr @twl4030_vibra_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl4030:vibrator\00", [47 x i8] zeroinitializer }, align 32
@twl4030_vibra_probe.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register vibrator to FF\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_vibra_probe.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't register input device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"twl4030_vibra_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 238, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 241, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"twl4030_vibra_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 163, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 191, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 201, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 205, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 211, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 218, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 224, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [38 x i8] c"../drivers/input/misc/twl4030-vibra.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 174, i32 38 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_twl4030_vibra_driver_exit, ptr @__initcall__kmod_twl4030_vibra__226_245_twl4030_vibra_driver_init6, ptr @twl4030_vibra_driver_exit, ptr @twl4030_vibra_probe._entry, ptr @twl4030_vibra_probe._entry_ptr, ptr @twl4030_vibra_driver, ptr @.str, ptr @twl4030_vibra_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @twl4030_vibra_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibra_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibra_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibra_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_vibra_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_vibra_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_vibra_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_vibra_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_vibra_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %reg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_vibra_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_vibra_probe, %if.then7)) #5
          to label %cleanup [label %if.then7], !srcloc !52

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_vibra_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  br i1 %tobool.not, label %if.end14.if.end.i_crit_edge, label %land.lhs.true.i

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.twl4030_vibra_check_coexist.exit_crit_edge

land.lhs.true.i.twl4030_vibra_check_coexist.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_vibra_check_coexist.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge
  %call.i128 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.12) #5
  %tobool2.not.i = icmp eq ptr %call.i128, null
  br i1 %tobool2.not.i, label %if.end.i.twl4030_vibra_check_coexist.exit_crit_edge, label %if.then3.i

if.end.i.twl4030_vibra_check_coexist.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_vibra_check_coexist.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %call.i128) #5
  br label %twl4030_vibra_check_coexist.exit

twl4030_vibra_check_coexist.exit:                 ; preds = %if.then3.i, %if.end.i.twl4030_vibra_check_coexist.exit_crit_edge, %land.lhs.true.i.twl4030_vibra_check_coexist.exit_crit_edge
  %retval.0.i129 = phi i1 [ true, %if.then3.i ], [ true, %land.lhs.true.i.twl4030_vibra_check_coexist.exit_crit_edge ], [ false, %if.end.i.twl4030_vibra_check_coexist.exit_crit_edge ]
  %coexist = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 6
  %frombool18 = zext i1 %retval.0.i129 to i8
  %9 = ptrtoint ptr %coexist to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool18, ptr %coexist, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %play_work, i32 noundef 0) #5
  %10 = ptrtoint ptr %play_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %play_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @twl4030_vibra_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23 = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vibra_play_work, ptr %func, align 4
  %call28 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %input_dev = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28, ptr %input_dev, align 4
  %cmp = icmp eq ptr %call28, null
  br i1 %cmp, label %do.end33, label %if.end35

do.end33:                                         ; preds = %twl4030_vibra_check_coexist.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end35:                                         ; preds = %twl4030_vibra_check_coexist.exit
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call28, i32 0, i32 40, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.9, ptr %17, align 8
  %19 = load ptr, ptr %input_dev, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %version, align 2
  %21 = load ptr, ptr %input_dev, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 32
  %22 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @twl4030_vibra_close, ptr %close, align 4
  %23 = load ptr, ptr %input_dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %23, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %25, 65536
  store i32 %or.i, ptr %add.ptr.i, align 4
  %26 = load ptr, ptr %input_dev, align 4
  %call42 = tail call i32 @input_ff_create_memless(ptr noundef %26, ptr noundef null, ptr noundef nonnull @vibra_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.body45, label %if.end62

do.body45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_vibra_probe.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_vibra_probe, %if.then57)) #5
          to label %cleanup [label %if.then57], !srcloc !52

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_vibra_probe.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.10) #5
  br label %cleanup

if.end62:                                         ; preds = %if.end35
  %27 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_dev, align 4
  %call64 = tail call i32 @input_register_device(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.body67, label %if.end84

do.body67:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_vibra_probe.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_vibra_probe, %if.then79)) #5
          to label %err_iff [label %if.then79], !srcloc !52

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_vibra_probe.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  br label %err_iff

if.end84:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %reg.i, align 1, !annotation !53
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 7, ptr noundef nonnull %reg.i, i8 noundef zeroext 0, i32 noundef 1) #5
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg.i, align 1
  %32 = and i8 %31, -4
  store i8 %32, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %33 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %val.addr.i.i, align 1
  %call.i3.i = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %32, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  %driver_data.i.i130 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i130 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i130, align 4
  br label %cleanup

err_iff:                                          ; preds = %if.then79, %do.body67
  %35 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev, align 4
  tail call void @input_ff_destroy(ptr noundef %36) #5
  br label %cleanup

cleanup:                                          ; preds = %err_iff, %if.end84, %if.then57, %do.body45, %do.end33, %if.end9.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ -12, %do.end33 ], [ %call64, %err_iff ], [ 0, %if.end84 ], [ -22, %if.then7 ], [ -12, %if.end9.cleanup_crit_edge ], [ %call42, %if.then57 ], [ -22, %do.body ], [ %call42, %do.body45 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vibra_play_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %val.addr.i.i31 = alloca i8, align 1
  %reg.i32 = alloca i8, align 1
  %val.addr.i29 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %reg.i = alloca i8, align 1
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !53
  %direction = getelementptr i8, ptr %work, i32 52
  %1 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %direction, align 4
  %speed = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %coexist = getelementptr i8, ptr %work, i32 56
  %5 = ptrtoint ptr %coexist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %coexist, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg, align 1
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %enabled = getelementptr i8, ptr %work, i32 44
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %reg.i, align 1, !annotation !53
  %call.i26 = call i32 @twl4030_audio_enable_resource(i32 noundef 0) #5
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg.i, i8 noundef zeroext 69, i32 noundef 1) #5
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg.i, align 1
  %15 = or i8 %14, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val.addr.i.i, align 1
  %call.i5.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %call4.i = call i32 @twl4030_audio_enable_resource(i32 noundef 1) #5
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enabled, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call.i27 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg, align 1
  %20 = and i8 %19, -3
  %masksel = select i1 %tobool6.not, i8 0, i8 2
  %cond = or i8 %20, %masksel
  store i8 %cond, ptr %reg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %21 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond, ptr %val.addr.i, align 1
  %call.i28 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %22 = trunc i32 %4 to i8
  %conv12 = sub i8 0, %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i29)
  %23 = ptrtoint ptr %val.addr.i29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12, ptr %val.addr.i29, align 1
  %call.i30 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i29, i8 noundef zeroext 70, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i29)
  br label %if.end18

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  %enabled14 = getelementptr i8, ptr %work, i32 44
  %24 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled14, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool15.not = icmp eq i8 %25, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.then16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i32) #5
  %26 = ptrtoint ptr %reg.i32 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %reg.i32, align 1, !annotation !53
  %call.i.i33 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg.i32, i8 noundef zeroext 69, i32 noundef 1) #5
  %27 = ptrtoint ptr %reg.i32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.i32, align 1
  %29 = and i8 %28, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i31) #5
  %30 = ptrtoint ptr %val.addr.i.i31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %val.addr.i.i31, align 1
  %call.i5.i34 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i31, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i31) #5
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 1) #5
  %call4.i35 = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #5
  %31 = ptrtoint ptr %enabled14 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enabled14, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i32) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else.if.end18_crit_edge, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_vibra_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %reg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #5
  %enabled = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %reg.i, align 1, !annotation !53
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg.i, i8 noundef zeroext 69, i32 noundef 1) #5
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg.i, align 1
  %7 = and i8 %6, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %8 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %val.addr.i.i, align 1
  %call.i5.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 1) #5
  %call4.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #5
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enabled, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vibra_play(ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %4 = lshr i16 %3, 8
  %5 = zext i16 %4 to i32
  %speed = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %tobool.not = icmp ult i16 %3, 256
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %weak_magnitude, align 2
  %9 = lshr i16 %8, 9
  %10 = zext i16 %9 to i32
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %12 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %direction, align 4
  %.lobit = lshr i16 %13, 15
  %14 = zext i16 %.lobit to i32
  %direction8 = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %direction8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %direction8, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %play_work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_audio_enable_resource(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_audio_disable_resource(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_vibra_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %reg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %reg.i, align 1, !annotation !53
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %reg.i, i8 noundef zeroext 69, i32 noundef 1) #5
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg.i, align 1
  %7 = and i8 %6, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %8 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %val.addr.i.i, align 1
  %call.i5.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 69, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 1) #5
  %call4.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #5
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enabled, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_vibra_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %reg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg.i, align 1, !annotation !53
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 7, ptr noundef nonnull %reg.i, i8 noundef zeroext 0, i32 noundef 1) #5
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg.i, align 1
  %3 = and i8 %2, -4
  store i8 %3, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %4 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %val.addr.i.i, align 1
  %call.i3.i = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %3, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_twl4030_vibra__226_245_twl4030_vibra_driver_init6, !1, !"__initcall__kmod_twl4030_vibra__226_245_twl4030_vibra_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 245, i32 1}
!2 = !{ptr @__exitcall_twl4030_vibra_driver_exit, !1, !"__exitcall_twl4030_vibra_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias227, !4, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 247, i32 1}
!5 = !{ptr @__UNIQUE_ID_description228, !6, !"__UNIQUE_ID_description228", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 248, i32 1}
!7 = !{ptr @__UNIQUE_ID_file229, !8, !"__UNIQUE_ID_file229", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 249, i32 1}
!9 = !{ptr @__UNIQUE_ID_license230, !8, !"__UNIQUE_ID_license230", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author231, !11, !"__UNIQUE_ID_author231", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 250, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 241, i32 11}
!14 = !{ptr @twl4030_vibra_driver, !15, !"twl4030_vibra_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 238, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 191, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @twl4030_vibra_probe.__UNIQUE_ID_ddebug223, !17, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!22 = !{ptr @twl4030_vibra_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 201, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 205, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @twl4030_vibra_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @twl4030_vibra_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 211, i32 26}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 218, i32 3}
!35 = !{ptr @twl4030_vibra_probe.__UNIQUE_ID_ddebug224, !34, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 224, i32 3}
!38 = !{ptr @twl4030_vibra_probe.__UNIQUE_ID_ddebug225, !37, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 174, i32 38}
!41 = !{ptr @twl4030_vibra_pm_ops, !42, !"twl4030_vibra_pm_ops", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/twl4030-vibra.c", i32 163, i32 8}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148957441, i64 2148957446, i64 2148957459, i64 2148957503, i64 2148957537, i64 2148957558}
!53 = !{!"auto-init"}
!54 = !{i8 0, i8 2}
