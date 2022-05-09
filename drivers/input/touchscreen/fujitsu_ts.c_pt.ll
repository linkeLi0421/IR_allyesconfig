; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/fujitsu_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/fujitsu_ts.c"
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
%struct.fujitsu = type { ptr, ptr, i32, [5 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [49 x i8] c"fujitsu_ts.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [57 x i8] c"fujitsu_ts.description=Fujitsu serial touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [53 x i8] c"fujitsu_ts.file=drivers/input/touchscreen/fujitsu_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"fujitsu_ts.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_fujitsu_ts__231_173_fujitsu_drv_init6 = internal global ptr @fujitsu_drv_init, section ".initcall6.init", align 4
@fujitsu_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @fujitsu_serio_ids, i8 0, ptr null, ptr @fujitsu_interrupt, ptr @fujitsu_connect, ptr null, ptr null, ptr @fujitsu_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_fujitsu_drv_exit = internal global ptr @fujitsu_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fujitsu_ts\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fujitsu serial touchscreen driver\00", [62 x i8] zeroinitializer }, align 32
@fujitsu_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 53 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fujitsu Serial Touchscreen\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"fujitsu_drv\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 162, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 173, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 166, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"fujitsu_serio_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 150, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 112, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [42 x i8] c"../drivers/input/touchscreen/fujitsu_ts.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 114, i32 20 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_fujitsu_drv_exit, ptr @__initcall__kmod_fujitsu_ts__231_173_fujitsu_drv_init6, ptr @fujitsu_drv_exit, ptr @fujitsu_drv, ptr @.str, ptr @.str.1, ptr @fujitsu_serio_ids, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fujitsu_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fujitsu_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fujitsu_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @fujitsu_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fujitsu_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_unregister_driver(ptr noundef nonnull @fujitsu_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fujitsu_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
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
  %idx = getelementptr inbounds %struct.fujitsu, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = and i8 %data, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp2.not = icmp eq i8 %6, -128
  br i1 %cmp2.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %data)
  %tobool.not = icmp sgt i8 %data, -1
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %inc = add i32 %5, 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %idx, align 4
  %arrayidx = getelementptr %struct.fujitsu, ptr %1, i32 0, i32 3, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %arrayidx, align 1
  %9 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp14 = icmp eq i32 %9, 5
  br i1 %cmp14, label %if.then16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %data11 = getelementptr inbounds %struct.fujitsu, ptr %1, i32 0, i32 3
  %arrayidx18 = getelementptr %struct.fujitsu, ptr %1, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18, align 2
  %conv19 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv19, 7
  %arrayidx21 = getelementptr %struct.fujitsu, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %or = or i32 %shl, %conv22
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %or) #5
  %arrayidx24 = getelementptr %struct.fujitsu, ptr %1, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx24, align 4
  %conv25 = zext i8 %15 to i32
  %shl26 = shl nuw nsw i32 %conv25, 7
  %arrayidx28 = getelementptr %struct.fujitsu, ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %or30 = or i32 %shl26, %conv29
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %or30) #5
  %18 = ptrtoint ptr %data11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data11, align 4
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp35 = icmp ne i8 %20, 2
  %lnot.ext.i = zext i1 %cmp35 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then16, %if.else.cleanup.sink.split_crit_edge
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fujitsu_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
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
  %serio3 = getelementptr inbounds %struct.fujitsu, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio3, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.fujitsu, ptr %call7.i.i, i32 0, i32 4
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
  store i16 53, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %version, align 2
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %9 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %evbit, align 8
  %arrayidx13 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024, ptr %arrayidx13, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #5
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call14 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end17:                                         ; preds = %if.end
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %call19 = tail call i32 @input_register_device(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %fail3

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail3:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_close(ptr noundef %serio) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.0 = phi i32 [ %call14, %if.end.fail2_crit_edge ], [ %call19, %fail3 ]
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fujitsu_disconnect(ptr noundef %serio) #2 align 64 {
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
!1 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_fujitsu_ts__231_173_fujitsu_drv_init6, !8, !"__initcall__kmod_fujitsu_ts__231_173_fujitsu_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 173, i32 1}
!9 = !{ptr @__exitcall_fujitsu_drv_exit, !8, !"__exitcall_fujitsu_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 166, i32 17}
!13 = !{ptr @fujitsu_drv, !14, !"fujitsu_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 162, i32 28}
!15 = !{ptr @fujitsu_serio_ids, !16, !"fujitsu_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 150, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 112, i32 4}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/fujitsu_ts.c", i32 114, i32 20}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
