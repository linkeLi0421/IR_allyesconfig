; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/touchright.c_pt.bc'
source_filename = "../drivers/input/touchscreen/touchright.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tr = type { ptr, ptr, i32, [5 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [47 x i8] c"touchright.author=Rick Koch <n1gp@hotmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [60 x i8] c"touchright.description=Touchright serial touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [53 x i8] c"touchright.file=drivers/input/touchscreen/touchright\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"touchright.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_touchright__231_174_tr_drv_init6 = internal global ptr @tr_drv_init, section ".initcall6.init", align 4
@tr_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @tr_serio_ids, i8 0, ptr null, ptr @tr_interrupt, ptr @tr_connect, ptr null, ptr null, ptr @tr_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_tr_drv_exit = internal global ptr @tr_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"touchright\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Touchright serial touchscreen driver\00", [59 x i8] zeroinitializer }, align 32
@tr_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 50 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Touchright Serial TouchScreen\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"tr_drv\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 163, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 174, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 167, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"tr_serio_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 151, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 114, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [42 x i8] c"../drivers/input/touchscreen/touchright.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 116, i32 20 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_tr_drv_exit, ptr @__initcall__kmod_touchright__231_174_tr_drv_init6, ptr @tr_drv_exit, ptr @tr_drv, ptr @.str, ptr @.str.1, ptr @tr_serio_ids, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tr_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tr_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tr_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @tr_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tr_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_unregister_driver(ptr noundef nonnull @tr_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tr_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %data2 = getelementptr inbounds %struct.tr, ptr %1, i32 0, i32 3
  %idx = getelementptr inbounds %struct.tr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.tr, ptr %1, i32 0, i32 3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %data, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data2, align 4
  %9 = and i8 %8, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp = icmp eq i8 %9, 64
  br i1 %cmp, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp7 = icmp eq i32 %inc, 5
  br i1 %cmp7, label %if.then9, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr %struct.tr, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv12, 5
  %arrayidx14 = getelementptr %struct.tr, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 2
  %16 = lshr i8 %15, 1
  %17 = zext i8 %16 to i32
  %or = or i32 %shl, %17
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %or) #5
  %arrayidx17 = getelementptr %struct.tr, ptr %1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %shl19 = shl nuw nsw i32 %conv18, 5
  %arrayidx21 = getelementptr %struct.tr, ptr %1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx21, align 4
  %22 = lshr i8 %21, 1
  %23 = zext i8 %22 to i32
  %or24 = or i32 %shl19, %23
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %or24) #5
  %24 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data2, align 4
  %26 = and i8 %25, 1
  %27 = zext i8 %26 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef %27) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %idx, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then9, %if.then.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tr_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #8
  %call1 = tail call ptr @input_allocate_device() #5
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail1

if.end:                                           ; preds = %entry
  %serio3 = getelementptr inbounds %struct.tr, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio3, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.tr, ptr %call7.i.i, i32 0, i32 4
  %phys4 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %phys4)
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.3, ptr %call1, align 8
  %phys9 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %phys9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phys, ptr %phys9, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 50, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %version, align 2
  %dev13 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev13, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %10 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %evbit, align 8
  %arrayidx15 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %arrayidx15, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_set_abs_params(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 511, i32 noundef 0, i32 noundef 0) #5
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_set_abs_params(ptr noundef %15, i32 noundef 1, i32 noundef 0, i32 noundef 511, i32 noundef 0, i32 noundef 0) #5
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call18 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end21:                                         ; preds = %if.end
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %call23 = tail call i32 @input_register_device(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %fail3

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail3:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_close(ptr noundef %serio) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.0 = phi i32 [ %call18, %if.end.fail2_crit_edge ], [ %call23, %fail3 ]
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tr_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.input_get_device.exit_crit_edge, label %cond.true.i

entry.input_get_device.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_get_device.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  %call.i = tail call ptr @get_device(ptr noundef %dev1.i) #5
  br label %input_get_device.exit

input_get_device.exit:                            ; preds = %cond.true.i, %entry.input_get_device.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %5) #5
  tail call void @serio_close(ptr noundef %serio) #5
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool.not.i10 = icmp eq ptr %8, null
  br i1 %tobool.not.i10, label %input_get_device.exit.input_put_device.exit_crit_edge, label %if.then.i

input_get_device.exit.input_put_device.exit_crit_edge: ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_put_device.exit

if.then.i:                                        ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev1.i11 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40
  tail call void @put_device(ptr noundef %dev1.i11) #5
  br label %input_put_device.exit

input_put_device.exit:                            ; preds = %if.then.i, %input_get_device.exit.input_put_device.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/touchright.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/touchright.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/touchright.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_touchright__231_174_tr_drv_init6, !8, !"__initcall__kmod_touchright__231_174_tr_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/touchright.c", i32 174, i32 1}
!9 = !{ptr @__exitcall_tr_drv_exit, !8, !"__exitcall_tr_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/touchscreen/touchright.c", i32 167, i32 17}
!13 = !{ptr @tr_drv, !14, !"tr_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/touchright.c", i32 163, i32 28}
!15 = !{ptr @tr_serio_ids, !16, !"tr_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/touchright.c", i32 151, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/touchright.c", i32 114, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/touchright.c", i32 116, i32 20}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
