; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/stmpe-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/stmpe-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmpe_keypad_variant = type { i8, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }
%struct.stmpe_keypad = type { ptr, ptr, ptr, i32, i32, i8, i32, i32, [64 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_stmpe_keypad__227_421_stmpe_keypad_driver_init6 = internal global ptr @stmpe_keypad_driver_init, section ".initcall6.init", align 4
@stmpe_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stmpe_keypad_probe, ptr @stmpe_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stmpe_keypad_driver_exit = internal global ptr @stmpe_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [54 x i8] c"stmpe_keypad.file=drivers/input/keyboard/stmpe-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [28 x i8] c"stmpe_keypad.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [49 x i8] c"stmpe_keypad.description=STMPExxxx keypad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [65 x i8] c"stmpe_keypad.author=Rabin Vincent <rabin.vincent@stericsson.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stmpe-keypad\00", [19 x i8] zeroinitializer }, align 32
@stmpe_keypad_variants = internal constant { [8 x %struct.stmpe_keypad_variant], [32 x i8] } { [8 x %struct.stmpe_keypad_variant] [%struct.stmpe_keypad_variant zeroinitializer, %struct.stmpe_keypad_variant zeroinitializer, %struct.stmpe_keypad_variant zeroinitializer, %struct.stmpe_keypad_variant zeroinitializer, %struct.stmpe_keypad_variant { i8 1, i8 0, i32 5, i32 3, i32 8, i32 8, i32 255, i32 65280 }, %struct.stmpe_keypad_variant zeroinitializer, %struct.stmpe_keypad_variant { i8 0, i8 1, i32 3, i32 2, i32 8, i32 12, i32 255, i32 2064128 }, %struct.stmpe_keypad_variant { i8 1, i8 1, i32 5, i32 3, i32 8, i32 12, i32 255, i32 2092800 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-interval\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,scan-count\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,no-autorepeat\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STMPE keypad\00", [19 x i8] zeroinitializer }, align 32
@stmpe_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 390, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stmpe_keypad_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/stmpe-keypad.c\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmpe_keypad_probe._entry_ptr = internal global ptr @stmpe_keypad_probe._entry, section ".printk_index", align 4
@stmpe_keypad_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 397, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@stmpe_keypad_probe._entry_ptr.12 = internal global ptr @stmpe_keypad_probe._entry.10, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"stmpe_keypad_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 415, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 416, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"stmpe_keypad_variants\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 82, i32 42 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 353, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 354, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 355, i32 52 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 361, i32 16 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 390, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [41 x i8] c"../drivers/input/keyboard/stmpe-keypad.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 396, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_stmpe_keypad_driver_exit, ptr @__initcall__kmod_stmpe_keypad__227_421_stmpe_keypad_driver_init6, ptr @stmpe_keypad_driver_exit, ptr @stmpe_keypad_probe._entry, ptr @stmpe_keypad_probe._entry.10, ptr @stmpe_keypad_probe._entry_ptr, ptr @stmpe_keypad_probe._entry_ptr.12, ptr @stmpe_keypad_driver, ptr @.str, ptr @stmpe_keypad_variants, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_keypad_variants to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_keypad_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmpe_keypad_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmpe_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
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
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rows) #6
  %6 = ptrtoint ptr %rows to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rows, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cols) #6
  %7 = ptrtoint ptr %cols to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cols, align 4, !annotation !45
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i, align 4
  %partnum = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %partnum, align 4
  %arrayidx = getelementptr [8 x %struct.stmpe_keypad_variant], ptr @stmpe_keypad_variants, i32 0, i32 %10
  %variant = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %variant, align 4
  %debounce_ms = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %debounce_ms, i32 noundef 1, i32 noundef 0) #6
  %scan_count = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 4
  %call.i.i105 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %scan_count, i32 noundef 1, i32 noundef 0) #6
  %call.i106 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i106, null
  %no_autorepeat = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 5
  %frombool = zext i1 %tobool.i to i8
  %12 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %no_autorepeat, align 4
  %call12 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.4, ptr %call12, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 24, ptr %id, align 4
  %parent18 = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %parent18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent18, align 8
  %call20 = call i32 @matrix_keypad_parse_properties(ptr noundef %dev, ptr noundef nonnull %rows, ptr noundef nonnull %cols) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rows, align 4
  %18 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cols, align 4
  %keymap = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 8
  %call24 = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %17, i32 noundef %19, ptr noundef %keymap, ptr noundef nonnull %call12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @input_set_capability(ptr noundef nonnull %call12, i32 noundef 4, i32 noundef 4) #6
  %20 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %no_autorepeat, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 5
  %22 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %evbit, align 4
  %or.i = or i32 %23, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %24 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rows, align 4
  %26 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23.not.i = icmp eq i32 %25, 0
  br i1 %cmp23.not.i, label %if.end32.stmpe_keypad_fill_used_pins.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

if.end32.stmpe_keypad_fill_used_pins.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_keypad_fill_used_pins.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp220.not.i = icmp eq i32 %27, 0
  %rows.i = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 6
  %cols.i = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 7
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc9.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %row.024.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc10.i, %for.inc9.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp220.not.i, label %for.cond1.preheader.i.for.inc9.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.inc9.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %shl.i = shl i32 %row.024.i, 3
  %shl6.i = shl nuw i32 1, %row.024.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %col.021.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %if.end.i.for.body3.i_crit_edge ]
  %add.i = add i32 %col.021.i, %shl.i
  %arrayidx.i = getelementptr %struct.stmpe_keypad, ptr %call.i, i32 0, i32 8, i32 %add.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp4.not.i = icmp eq i16 %29, 0
  br i1 %cmp4.not.i, label %for.body3.i.if.end.i_crit_edge, label %if.then.i

for.body3.i.if.end.i_crit_edge:                   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %rows.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rows.i, align 4
  %or.i107 = or i32 %31, %shl6.i
  store i32 %or.i107, ptr %rows.i, align 4
  %shl7.i = shl nuw i32 1, %col.021.i
  %32 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cols.i, align 4
  %or8.i = or i32 %33, %shl7.i
  store i32 %or8.i, ptr %cols.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body3.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %col.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %if.end.i.for.inc9.i_crit_edge, label %if.end.i.for.body3.i_crit_edge

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

if.end.i.for.inc9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %if.end.i.for.inc9.i_crit_edge, %for.cond1.preheader.i.for.inc9.i_crit_edge
  %inc10.i = add nuw i32 %row.024.i, 1
  %exitcond26.not.i = icmp eq i32 %inc10.i, %25
  br i1 %exitcond26.not.i, label %for.inc9.i.stmpe_keypad_fill_used_pins.exit_crit_edge, label %for.inc9.i.for.cond1.preheader.i_crit_edge

for.inc9.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

for.inc9.i.stmpe_keypad_fill_used_pins.exit_crit_edge: ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_keypad_fill_used_pins.exit

stmpe_keypad_fill_used_pins.exit:                 ; preds = %for.inc9.i.stmpe_keypad_fill_used_pins.exit_crit_edge, %if.end32.stmpe_keypad_fill_used_pins.exit_crit_edge
  %input33 = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %input33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call12, ptr %input33, align 4
  %35 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %variant, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debounce_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %40)
  %cmp.i = icmp ugt i32 %40, 127
  br i1 %cmp.i, label %stmpe_keypad_fill_used_pins.exit.cleanup_crit_edge, label %if.end.i108

stmpe_keypad_fill_used_pins.exit.cleanup_crit_edge: ; preds = %stmpe_keypad_fill_used_pins.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i108:                                      ; preds = %stmpe_keypad_fill_used_pins.exit
  %41 = ptrtoint ptr %scan_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %42)
  %cmp3.i = icmp ugt i32 %42, 15
  br i1 %cmp3.i, label %if.end.i108.cleanup_crit_edge, label %if.end5.i

if.end.i108.cleanup_crit_edge:                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i108
  %call.i109 = call i32 @stmpe_enable(ptr noundef %38, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp6.i = icmp slt i32 %call.i109, 0
  br i1 %cmp6.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  %43 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant, align 4
  %row_gpios3.i.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %row_gpios3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %row_gpios3.i.i, align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %regs.i.i = getelementptr inbounds %struct.stmpe, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %50, i32 29
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i, align 1
  %max_cols.i.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %44, i32 0, i32 4
  %53 = ptrtoint ptr %max_cols.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_cols.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp84.i.i = icmp sgt i32 %54, 0
  br i1 %cmp84.i.i, label %for.body.lr.ph.i.i, label %if.end8.i.for.cond10.preheader.i.i_crit_edge

if.end8.i.for.cond10.preheader.i.i_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond10.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end8.i
  %col_gpios2.i.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %44, i32 0, i32 6
  %55 = ptrtoint ptr %col_gpios2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %col_gpios2.i.i, align 4
  %cols.i.i = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %cols.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cols.i.i, align 4
  br label %for.body.i.i

for.cond10.preheader.loopexit.i.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.i.i = trunc i32 %pu_pins.1.i.i to i8
  br label %for.cond10.preheader.i.i

for.cond10.preheader.i.i:                         ; preds = %for.cond10.preheader.loopexit.i.i, %if.end8.i.for.cond10.preheader.i.i_crit_edge
  %pins.0.lcssa.i.i = phi i32 [ 0, %if.end8.i.for.cond10.preheader.i.i_crit_edge ], [ %pins.1.i.i, %for.cond10.preheader.loopexit.i.i ]
  %pu_pins.0.lcssa.i.i = phi i8 [ 0, %if.end8.i.for.cond10.preheader.i.i_crit_edge ], [ %phi.cast.i.i, %for.cond10.preheader.loopexit.i.i ]
  %max_rows.i.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %44, i32 0, i32 5
  %59 = ptrtoint ptr %max_rows.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_rows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp1190.i.i = icmp sgt i32 %60, 0
  br i1 %cmp1190.i.i, label %for.body12.lr.ph.i.i, label %for.cond10.preheader.i.i.for.end27.i.i_crit_edge

for.cond10.preheader.i.i.for.end27.i.i_crit_edge: ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end27.i.i

for.body12.lr.ph.i.i:                             ; preds = %for.cond10.preheader.i.i
  %rows.i.i = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 6
  %61 = ptrtoint ptr %rows.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rows.i.i, align 4
  br label %for.body12.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.088.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pu_pins.087.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %pu_pins.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pins.086.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %pins.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %col_gpios.085.i.i = phi i32 [ %56, %for.body.lr.ph.i.i ], [ %and9.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %63 = call i32 @llvm.cttz.i32(i32 %col_gpios.085.i.i, i1 false) #6, !range !47
  %shl.i.i = shl nuw i32 1, %i.088.i.i
  %and.i.i = and i32 %shl.i.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %shl5.i.i = shl nuw i32 1, %63
  %or.i.i = select i1 %tobool.not.i.i, i32 0, i32 %shl5.i.i
  %pins.1.i.i = or i32 %or.i.i, %pins.086.i.i
  %pu_pins.1.i.i = or i32 %or.i.i, %pu_pins.087.i.i
  %neg.i.i = xor i32 %shl5.i.i, -1
  %and9.i.i = and i32 %col_gpios.085.i.i, %neg.i.i
  %inc.i.i = add nuw nsw i32 %i.088.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %54
  br i1 %exitcond.not.i.i, label %for.cond10.preheader.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body12.i.i:                                   ; preds = %for.body12.i.i.for.body12.i.i_crit_edge, %for.body12.lr.ph.i.i
  %i.193.i.i = phi i32 [ 0, %for.body12.lr.ph.i.i ], [ %inc26.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ]
  %pins.292.i.i = phi i32 [ %pins.0.lcssa.i.i, %for.body12.lr.ph.i.i ], [ %pins.3.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ]
  %row_gpios.091.i.i = phi i32 [ %46, %for.body12.lr.ph.i.i ], [ %and24.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ]
  %64 = call i32 @llvm.cttz.i32(i32 %row_gpios.091.i.i, i1 false) #6, !range !47
  %shl15.i.i = shl nuw i32 1, %i.193.i.i
  %and16.i.i = and i32 %shl15.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %shl19.i.i = shl nuw i32 1, %64
  %or20.i.i = select i1 %tobool17.not.i.i, i32 0, i32 %shl19.i.i
  %pins.3.i.i = or i32 %or20.i.i, %pins.292.i.i
  %neg23.i.i = xor i32 %shl19.i.i, -1
  %and24.i.i = and i32 %row_gpios.091.i.i, %neg23.i.i
  %inc26.i.i = add nuw nsw i32 %i.193.i.i, 1
  %exitcond95.not.i.i = icmp eq i32 %inc26.i.i, %60
  br i1 %exitcond95.not.i.i, label %for.body12.i.i.for.end27.i.i_crit_edge, label %for.body12.i.i.for.body12.i.i_crit_edge

for.body12.i.i.for.body12.i.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i.i

for.body12.i.i.for.end27.i.i_crit_edge:           ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end27.i.i

for.end27.i.i:                                    ; preds = %for.body12.i.i.for.end27.i.i_crit_edge, %for.cond10.preheader.i.i.for.end27.i.i_crit_edge
  %pins.2.lcssa.i.i = phi i32 [ %pins.0.lcssa.i.i, %for.cond10.preheader.i.i.for.end27.i.i_crit_edge ], [ %pins.3.i.i, %for.body12.i.i.for.end27.i.i_crit_edge ]
  %call28.i.i = call i32 @stmpe_set_altfunc(ptr noundef %48, i32 noundef %pins.2.lcssa.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end31.i.i, label %for.end27.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge

for.end27.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge: ; preds = %for.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_keypad_altfunc_init.exit.i

if.end31.i.i:                                     ; preds = %for.end27.i.i
  %set_pullup.i.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %44, i32 0, i32 1
  %65 = ptrtoint ptr %set_pullup.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %set_pullup.i.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool32.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool32.not.i.i, label %if.end31.i.i.if.end12.i_crit_edge, label %if.then33.i.i

if.end31.i.i.if.end12.i_crit_edge:                ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then33.i.i:                                    ; preds = %if.end31.i.i
  %call34.i.i = call i32 @stmpe_reg_read(ptr noundef %48, i8 noundef zeroext %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end37.i.i, label %if.then33.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge

if.then33.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge: ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_keypad_altfunc_init.exit.i

if.end37.i.i:                                     ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call43.i.i = call i32 @stmpe_reg_write(ptr noundef %48, i8 noundef zeroext %52, i8 noundef zeroext %pu_pins.0.lcssa.i.i) #6
  br label %if.end12.i

stmpe_keypad_altfunc_init.exit.i:                 ; preds = %if.then33.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge, %for.end27.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %call28.i.i, %for.end27.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge ], [ %call34.i.i, %if.then33.i.i.stmpe_keypad_altfunc_init.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i)
  %cmp10.i = icmp slt i32 %retval.1.i.i, 0
  br i1 %cmp10.i, label %stmpe_keypad_altfunc_init.exit.i.cleanup_crit_edge, label %stmpe_keypad_altfunc_init.exit.i.if.end12.i_crit_edge

stmpe_keypad_altfunc_init.exit.i.if.end12.i_crit_edge: ; preds = %stmpe_keypad_altfunc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

stmpe_keypad_altfunc_init.exit.i.cleanup_crit_edge: ; preds = %stmpe_keypad_altfunc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %stmpe_keypad_altfunc_init.exit.i.if.end12.i_crit_edge, %if.end37.i.i, %if.end31.i.i.if.end12.i_crit_edge
  %cols.i110 = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 7
  %67 = ptrtoint ptr %cols.i110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cols.i110, align 4
  %conv.i = trunc i32 %68 to i8
  %call13.i = call i32 @stmpe_reg_write(ptr noundef %38, i8 noundef zeroext 96, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.cleanup_crit_edge, label %if.end17.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i:                                       ; preds = %if.end12.i
  %rows.i111 = getelementptr inbounds %struct.stmpe_keypad, ptr %call.i, i32 0, i32 6
  %69 = ptrtoint ptr %rows.i111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rows.i111, align 4
  %conv18.i = trunc i32 %70 to i8
  %call19.i = call i32 @stmpe_reg_write(ptr noundef %38, i8 noundef zeroext 98, i8 noundef zeroext %conv18.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.cleanup_crit_edge, label %if.end23.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.i:                                       ; preds = %if.end17.i
  %max_rows.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %36, i32 0, i32 5
  %71 = ptrtoint ptr %max_rows.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %72)
  %cmp24.i = icmp sgt i32 %72, 8
  br i1 %cmp24.i, label %if.then26.i, label %if.end23.i.if.end34.i_crit_edge

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.end23.i
  %73 = ptrtoint ptr %rows.i111 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rows.i111, align 4
  %shr.i = lshr i32 %74, 8
  %conv28.i = trunc i32 %shr.i to i8
  %call29.i = call i32 @stmpe_set_bits(ptr noundef %38, i8 noundef zeroext 97, i8 noundef zeroext -1, i8 noundef zeroext %conv28.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.then26.i.cleanup_crit_edge, label %if.then26.i.if.end34.i_crit_edge

if.then26.i.if.end34.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then26.i.cleanup_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34.i:                                       ; preds = %if.then26.i.if.end34.i_crit_edge, %if.end23.i.if.end34.i_crit_edge
  %75 = ptrtoint ptr %scan_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %scan_count, align 4
  %.tr.i = trunc i32 %76 to i8
  %conv36.i = shl i8 %.tr.i, 4
  %call37.i = call i32 @stmpe_set_bits(ptr noundef %38, i8 noundef zeroext 99, i8 noundef zeroext -16, i8 noundef zeroext %conv36.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end34.i.cleanup_crit_edge, label %stmpe_keypad_chip_init.exit

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

stmpe_keypad_chip_init.exit:                      ; preds = %if.end34.i
  %77 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %debounce_ms, align 4
  %.tr73.i = trunc i32 %78 to i8
  %79 = shl i8 %.tr73.i, 1
  %conv44.i = or i8 %79, 1
  %call45.i = call i32 @stmpe_set_bits(ptr noundef %38, i8 noundef zeroext 100, i8 noundef zeroext -1, i8 noundef zeroext %conv44.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp35 = icmp slt i32 %call45.i, 0
  br i1 %cmp35, label %stmpe_keypad_chip_init.exit.cleanup_crit_edge, label %if.end37

stmpe_keypad_chip_init.exit.cleanup_crit_edge:    ; preds = %stmpe_keypad_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %stmpe_keypad_chip_init.exit
  %call39 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef null, ptr noundef nonnull @stmpe_keypad_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %do.end

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call39) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %call44 = call i32 @input_register_device(ptr noundef nonnull %call12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call44) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end49, %do.end, %stmpe_keypad_chip_init.exit.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.then26.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %stmpe_keypad_altfunc_init.exit.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i108.cleanup_crit_edge, %stmpe_keypad_fill_used_pins.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %do.end ], [ %call44, %do.end49 ], [ 0, %if.end51 ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call20, %if.end15.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call45.i, %stmpe_keypad_chip_init.exit.cleanup_crit_edge ], [ %call37.i, %if.end34.i.cleanup_crit_edge ], [ %call29.i, %if.then26.i.cleanup_crit_edge ], [ %call19.i, %if.end17.i.cleanup_crit_edge ], [ %call13.i, %if.end12.i.cleanup_crit_edge ], [ %retval.1.i.i, %stmpe_keypad_altfunc_init.exit.i.cleanup_crit_edge ], [ %call.i109, %if.end5.i.cleanup_crit_edge ], [ -22, %if.end.i108.cleanup_crit_edge ], [ -22, %stmpe_keypad_fill_used_pins.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_keypad_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @stmpe_disable(ptr noundef %3, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_keypad_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %fifo = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.stmpe_keypad, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %variant2 = getelementptr inbounds %struct.stmpe_keypad, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant2, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %fifo) #6
  %4 = call ptr @memset(ptr %fifo, i32 255, i32 5)
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %num_data3.i = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %num_data3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_data3.i, align 4
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp25.i = icmp sgt i32 %10, 0
  br i1 %cmp25.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.cond.preheader_crit_edge

for.cond.preheader.i.for.cond.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  %conv.i = trunc i32 %10 to i8
  %call.i = call i32 @stmpe_block_read(ptr noundef %6, i8 noundef zeroext 104, i8 noundef zeroext %conv.i, ptr noundef nonnull %fifo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp slt i32 %call.i, 0
  br i1 %phi.cmp, label %if.then.i.cleanup21_crit_edge, label %if.then.i.for.cond.preheader_crit_edge

if.then.i.for.cond.preheader_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.then.i.cleanup21_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = trunc i32 %i.026.i to i8
  %conv5.i = add i8 %11, 104
  %call6.i = tail call i32 @stmpe_reg_read(ptr noundef %6, i8 noundef zeroext %conv5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body.i.cleanup21_crit_edge, label %if.end10.i

for.body.i.cleanup21_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

if.end10.i:                                       ; preds = %for.body.i
  %conv11.i = trunc i32 %call6.i to i8
  %arrayidx.i = getelementptr i8, ptr %fifo, i32 %i.026.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %13 = ptrtoint ptr %num_data3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_data3.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %if.end10.i.for.body.i_crit_edge, label %if.end10.i.for.cond.preheader_crit_edge

if.end10.i.for.cond.preheader_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.preheader:                               ; preds = %if.end10.i.for.cond.preheader_crit_edge, %if.then.i.for.cond.preheader_crit_edge, %for.cond.preheader.i.for.cond.preheader_crit_edge
  %num_normal_data = getelementptr inbounds %struct.stmpe_keypad_variant, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %num_normal_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_normal_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp342 = icmp sgt i32 %16, 0
  br i1 %cmp342, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup21_crit_edge

for.cond.preheader.cleanup21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i8], ptr %fifo, i32 0, i32 %i.043
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %and = and i32 %conv, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %and)
  %cmp10 = icmp eq i32 %and, 120
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = and i32 %conv, 127
  call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #6
  %arrayidx14 = getelementptr %struct.stmpe_keypad, ptr %dev, i32 0, i32 8, i32 %add
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %20 to i32
  %and7.lobit.mask.lobit = lshr i32 %conv, 7
  %21 = xor i32 %and7.lobit.mask.lobit, 1
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv15, i32 noundef %21) #6
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %22 = ptrtoint ptr %num_normal_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_normal_data, align 4
  %cmp3 = icmp slt i32 %inc, %23
  br i1 %cmp3, label %cleanup.for.body_crit_edge, label %cleanup.cleanup21_crit_edge

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup21:                                        ; preds = %cleanup.cleanup21_crit_edge, %for.cond.preheader.cleanup21_crit_edge, %for.body.i.cleanup21_crit_edge, %if.then.i.cleanup21_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.i.cleanup21_crit_edge ], [ 1, %for.cond.preheader.cleanup21_crit_edge ], [ 1, %cleanup.cleanup21_crit_edge ], [ 0, %for.body.i.cleanup21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %fifo) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_altfunc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_stmpe_keypad__227_421_stmpe_keypad_driver_init6, !1, !"__initcall__kmod_stmpe_keypad__227_421_stmpe_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 421, i32 1}
!2 = !{ptr @__exitcall_stmpe_keypad_driver_exit, !1, !"__exitcall_stmpe_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 423, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description230, !7, !"__UNIQUE_ID_description230", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 424, i32 1}
!8 = !{ptr @__UNIQUE_ID_author231, !9, !"__UNIQUE_ID_author231", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 425, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 416, i32 17}
!12 = !{ptr @stmpe_keypad_driver, !13, !"stmpe_keypad_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 415, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 353, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 354, i32 27}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 355, i32 52}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 361, i32 16}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 390, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stmpe_keypad_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @stmpe_keypad_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 396, i32 3}
!32 = !{ptr @stmpe_keypad_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stmpe_keypad_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @stmpe_keypad_variants, !35, !"stmpe_keypad_variants", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/stmpe-keypad.c", i32 82, i32 42}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
!47 = !{i32 0, i32 33}
