; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-picolcd_cir.c_pt.bc'
source_filename = "../drivers/hid/hid-picolcd_cir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_event = type { %union.anon.86, i8, i8 }
%union.anon.86 = type { i32 }
%struct.picolcd_data = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, [2 x i8], i16, [2 x i8], ptr, ptr, [17 x i16], ptr, ptr, i8, ptr, i8, i8, i8, [8 x ptr], %struct.spinlock, %struct.mutex, ptr, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PicoLCD (graphic)\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-rc6-mce\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 115, i32 27 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [33 x i8] c"../drivers/hid/hid-picolcd_cir.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 116, i32 27 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @picolcd_raw_cir(ptr noundef %data, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %raw_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #4
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %rc_dev = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 10
  %1 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rc_dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 23
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp8 = icmp sgt i32 %size, 0
  br i1 %cmp8, label %cond.end16, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.end16:                                       ; preds = %if.end
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %raw_data, align 1
  %conv10 = zext i8 %6 to i32
  %sub = add nsw i32 %size, -1
  %7 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1870 = icmp ugt i32 %7, 1
  br i1 %cmp1870, label %for.body.lr.ph, label %cond.end16.for.end_crit_edge

cond.end16.for.end_crit_edge:                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end16
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %add72 = phi i32 [ 1, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %add45, %for.body.for.body_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %raw_data, i32 %i.071
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %arrayidx23 = getelementptr i8, ptr %raw_data, i32 %add72
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %11 to i32
  %or = or i32 %shl, %conv24
  %.lobit = and i8 %9, -128
  %12 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %.lobit
  store i8 %bf.set, ptr %pulse, align 1
  %sub32 = sub nuw nsw i32 65536, %or
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool30.not69 = icmp slt i8 %9, 0
  %cond35 = select i1 %tobool30.not69, i32 %sub32, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.071)
  %cmp36 = icmp eq i32 %i.071, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %cond35)
  %cmp38 = icmp ugt i32 %cond35, 15000
  %or.cond = select i1 %cmp36, i1 %cmp38, i1 false
  %sub41 = add nsw i32 %cond35, -15000
  %spec.select = select i1 %or.cond, i32 %sub41, i32 %cond35
  %13 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %rawir, align 8
  %14 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rc_dev, align 4
  %call44 = call i32 @ir_raw_event_store(ptr noundef %15, ptr noundef nonnull %rawir) #4
  %add45 = add nuw nsw i32 %i.071, 2
  %add = or i32 %add45, 1
  %cmp18 = icmp ult i32 %add, %7
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end16.for.end_crit_edge, %if.end.for.end_crit_edge
  %16 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_dev, align 4
  call void @ir_raw_event_handle(ptr noundef %17) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #4
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @picolcd_init_cir(ptr noundef %data, ptr nocapture noundef readnone %report) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rc_allocate_device(i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %priv, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 130023420, ptr %allowed_protocols, align 8
  %open = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 48
  %2 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @picolcd_cir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 49
  %3 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @picolcd_cir_close, ptr %close, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 39
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %device_name, align 8
  %7 = load ptr, ptr %data, align 4
  %phys = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 40
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %phys, ptr %input_phys, align 4
  %9 = load ptr, ptr %data, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bus, align 8
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %input_id, align 8
  %13 = load ptr, ptr %data, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %15 to i16
  %vendor6 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %vendor6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %vendor6, align 2
  %17 = load ptr, ptr %data, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %product, align 8
  %conv8 = trunc i32 %19 to i16
  %product10 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %product10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv8, ptr %product10, align 4
  %21 = load ptr, ptr %data, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version, align 4
  %conv12 = trunc i32 %23 to i16
  %version14 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %version14 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv12, ptr %version14, align 2
  %25 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 18
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %parent, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %28 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.1, ptr %map_name, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 34
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100000, ptr %timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 37
  %30 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %rx_resolution, align 8
  %call17 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %err

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rc_dev = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 10
  %31 = ptrtoint ptr %rc_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %rc_dev, align 4
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rc_free_device(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %err ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_cir_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, -5
  store i32 %and, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_cir_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_exit_cir(ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_dev = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc_dev, align 4
  store ptr null, ptr %rc_dev, align 4
  tail call void @rc_unregister_device(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-picolcd_cir.c", i32 115, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-picolcd_cir.c", i32 116, i32 27}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
