; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/stm/heartbeat.c_pt.bc'
source_filename = "../drivers/hwtracing/stm/heartbeat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.stm_heartbeat = type { %struct.stm_source_data, %struct.hrtimer, i32 }
%struct.stm_source_data = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__param_str_nr_devs = internal constant [22 x i8] c"stm_heartbeat.nr_devs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nr_devs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_nr_devs = internal constant %struct.kernel_param { ptr @__param_str_nr_devs, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @nr_devs } }, section "__param", align 4
@__UNIQUE_ID_nr_devstype183 = internal constant [35 x i8] c"stm_heartbeat.parmtype=nr_devs:int\00", section ".modinfo", align 1
@__param_str_interval_ms = internal constant [26 x i8] c"stm_heartbeat.interval_ms\00", align 1
@interval_ms = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_interval_ms = internal constant %struct.kernel_param { ptr @__param_str_interval_ms, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @interval_ms } }, section "__param", align 4
@__UNIQUE_ID_interval_mstype184 = internal constant [39 x i8] c"stm_heartbeat.parmtype=interval_ms:int\00", section ".modinfo", align 1
@__initcall__kmod_stm_heartbeat__185_115_stm_heartbeat_init6 = internal global ptr @stm_heartbeat_init, section ".initcall6.init", align 4
@__exitcall_stm_heartbeat_exit = internal global ptr @stm_heartbeat_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [55 x i8] c"stm_heartbeat.file=drivers/hwtracing/stm/stm_heartbeat\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [29 x i8] c"stm_heartbeat.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [47 x i8] c"stm_heartbeat.description=stm_heartbeat driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [77 x i8] c"stm_heartbeat.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"heartbeat.%d\00", [19 x i8] zeroinitializer }, align 32
@stm_heartbeat = internal global { [32 x %struct.stm_heartbeat], [640 x i8] } zeroinitializer, align 32
@str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"heartbeat stm source driver is here to serve you\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"nr_devs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 18, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"interval_ms\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 19, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 74, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"stm_heartbeat\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 28, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.14 = private constant [37 x i8] c"../drivers/hwtracing/stm/heartbeat.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 30, i32 19 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_interval_mstype184, ptr @__UNIQUE_ID_license187, ptr @__UNIQUE_ID_nr_devstype183, ptr @__exitcall_stm_heartbeat_exit, ptr @__initcall__kmod_stm_heartbeat__185_115_stm_heartbeat_init6, ptr @__param_interval_ms, ptr @__param_nr_devs, ptr @nr_devs, ptr @interval_ms, ptr @.str, ptr @stm_heartbeat, ptr @str], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_heartbeat to i32), i32 2560, i32 3200, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_heartbeat_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp ugt i32 %0, 32
  br i1 %1, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = load i32, ptr @nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp253 = icmp sgt i32 %2, 0
  br i1 %cmp253, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %i.054) #2
  %arrayidx = getelementptr [32 x %struct.stm_heartbeat], ptr @stm_heartbeat, i32 0, i32 %i.054
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.cond23_crit_edge, label %if.end7

for.body.for.cond23_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond23

if.end7:                                          ; preds = %for.body
  %nr_chans = getelementptr inbounds %struct.stm_source_data, ptr %arrayidx, i32 0, i32 3
  %4 = ptrtoint ptr %nr_chans to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nr_chans, align 4
  %link = getelementptr inbounds %struct.stm_source_data, ptr %arrayidx, i32 0, i32 4
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stm_heartbeat_link, ptr %link, align 8
  %unlink = getelementptr inbounds %struct.stm_source_data, ptr %arrayidx, i32 0, i32 5
  %6 = ptrtoint ptr %unlink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @stm_heartbeat_unlink, ptr %unlink, align 4
  %hrtimer = getelementptr [32 x %struct.stm_heartbeat], ptr @stm_heartbeat, i32 0, i32 %i.054, i32 1
  tail call void @hrtimer_init(ptr noundef %hrtimer, i32 noundef 1, i32 noundef 0) #2
  %function = getelementptr [32 x %struct.stm_heartbeat], ptr @stm_heartbeat, i32 0, i32 %i.054, i32 1, i32 2
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @stm_heartbeat_hrtimer_handler, ptr %function, align 8
  %call19 = tail call i32 @stm_source_register_device(ptr noundef null, ptr noundef %arrayidx) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.inc, label %if.end7.fail_free_crit_edge

if.end7.fail_free_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %fail_free

for.inc:                                          ; preds = %if.end7
  %inc = add nuw nsw i32 %i.054, 1
  %8 = load i32, ptr @nr_devs, align 4
  %cmp2 = icmp slt i32 %inc, %8
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.cond23:                                       ; preds = %fail_free, %for.body.for.cond23_crit_edge
  %i.1.in = phi i32 [ %i.2, %fail_free ], [ %i.054, %for.body.for.cond23_crit_edge ]
  %ret.0 = phi i32 [ %ret.1, %fail_free ], [ -12, %for.body.for.cond23_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp24 = icmp sgt i32 %i.1, -1
  br i1 %cmp24, label %for.body25, label %for.cond23.cleanup_crit_edge

for.cond23.cleanup_crit_edge:                     ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body25:                                       ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx26 = getelementptr [32 x %struct.stm_heartbeat], ptr @stm_heartbeat, i32 0, i32 %i.1
  tail call void @stm_source_unregister_device(ptr noundef %arrayidx26) #2
  br label %fail_free

fail_free:                                        ; preds = %for.body25, %if.end7.fail_free_crit_edge
  %i.2 = phi i32 [ %i.1, %for.body25 ], [ %i.054, %if.end7.fail_free_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %for.body25 ], [ %call19, %if.end7.fail_free_crit_edge ]
  %arrayidx28 = getelementptr [32 x %struct.stm_heartbeat], ptr @stm_heartbeat, i32 0, i32 %i.2
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx28, align 8
  tail call void @kfree(ptr noundef %10) #2
  br label %for.cond23

cleanup:                                          ; preds = %for.cond23.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %for.cond23.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm_heartbeat_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.stm_heartbeat], ptr @stm_heartbeat, i32 0, i32 %i.07
  tail call void @stm_source_unregister_device(ptr noundef %arrayidx) #2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  tail call void @kfree(ptr noundef %2) #2
  %inc = add nuw nsw i32 %i.07, 1
  %3 = load i32, ptr @nr_devs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_heartbeat_link(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.stm_heartbeat, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %active, align 8
  %hrtimer = getelementptr inbounds %struct.stm_heartbeat, ptr %data, i32 0, i32 1
  %1 = load i32, ptr @interval_ms, align 4
  %conv = sext i32 %1 to i64
  %mul.i = mul nsw i64 %conv, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 0) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm_heartbeat_unlink(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.stm_heartbeat, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %active, align 8
  %hrtimer = getelementptr inbounds %struct.stm_heartbeat, ptr %data, i32 0, i32 1
  %call = tail call i32 @hrtimer_cancel(ptr noundef %hrtimer) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_heartbeat_hrtimer_handler(ptr noundef %hr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hr, i32 -24
  %call = tail call i32 @stm_source_write(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull @str, i32 noundef 49) #2
  %active = getelementptr i8, ptr %hr, i32 48
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = load i32, ptr @interval_ms, align 4
  %conv = sext i32 %2 to i64
  %mul.i = mul nsw i64 %conv, 1000000
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hr, i32 0, i32 3
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %6() #2
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hr, i64 noundef %call.i, i64 noundef %mul.i) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool4.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_source_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_source_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_source_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__param_nr_devs, !1, !"__param_nr_devs", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_nr_devstype183, !1, !"__UNIQUE_ID_nr_devstype183", i1 false, i1 false}
!3 = !{ptr @__param_interval_ms, !4, !"__param_interval_ms", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 22, i32 1}
!5 = !{ptr @__UNIQUE_ID_interval_mstype184, !4, !"__UNIQUE_ID_interval_mstype184", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_stm_heartbeat__185_115_stm_heartbeat_init6, !7, !"__initcall__kmod_stm_heartbeat__185_115_stm_heartbeat_init6", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 115, i32 1}
!8 = !{ptr @__exitcall_stm_heartbeat_exit, !9, !"__exitcall_stm_heartbeat_exit", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 116, i32 1}
!10 = !{ptr @__UNIQUE_ID_file186, !11, !"__UNIQUE_ID_file186", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 118, i32 1}
!12 = !{ptr @__UNIQUE_ID_license187, !11, !"__UNIQUE_ID_license187", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description188, !14, !"__UNIQUE_ID_description188", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 119, i32 1}
!15 = !{ptr @__UNIQUE_ID_author189, !16, !"__UNIQUE_ID_author189", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 120, i32 1}
!17 = !{ptr @__param_str_nr_devs, !1, !"__param_str_nr_devs", i1 false, i1 false}
!18 = !{ptr @nr_devs, !19, !"nr_devs", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 18, i32 12}
!20 = !{ptr @__param_str_interval_ms, !4, !"__param_str_interval_ms", i1 false, i1 false}
!21 = !{ptr @interval_ms, !22, !"interval_ms", i1 false, i1 false}
!22 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 19, i32 12}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 74, i32 26}
!25 = !{ptr @stm_heartbeat, !26, !"stm_heartbeat", i1 false, i1 false}
!26 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 28, i32 3}
!27 = !{ptr @str, !28, !"str", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/stm/heartbeat.c", i32 30, i32 19}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
