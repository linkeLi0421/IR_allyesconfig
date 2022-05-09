; ModuleID = '/llk/IR_all_yes/sound/core/hrtimer.c_pt.bc'
source_filename = "../sound/core/hrtimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.snd_hrtimer = type { ptr, %struct.hrtimer, i8 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID_author189 = internal constant [48 x i8] c"snd_hrtimer.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [45 x i8] c"snd_hrtimer.description=ALSA hrtimer backend\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [40 x i8] c"snd_hrtimer.file=sound/core/snd-hrtimer\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [24 x i8] c"snd_hrtimer.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [30 x i8] c"snd_hrtimer.alias=snd-timer-3\00", section ".modinfo", align 1
@mytimer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_snd_hrtimer__194_168_snd_hrtimer_init6 = internal global ptr @snd_hrtimer_init, section ".initcall6.init", align 4
@__exitcall_snd_hrtimer_exit = internal global ptr @snd_hrtimer_exit, section ".exitcall.exit", align 4
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@resolution = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hrtimer\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HR timer\00", [23 x i8] zeroinitializer }, align 32
@hrtimer_hw = internal unnamed_addr constant %struct.snd_timer_hardware { i32 17, i32 0, i32 0, i32 0, i32 0, ptr @snd_hrtimer_open, ptr @snd_hrtimer_close, ptr null, ptr @snd_hrtimer_start, ptr @snd_hrtimer_stop, ptr null, ptr null }, section ".init.rodata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"mytimer\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 128, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 22, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 138, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [24 x i8] c"../sound/core/hrtimer.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 144, i32 22 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_snd_hrtimer_exit, ptr @__initcall__kmod_snd_hrtimer__194_168_snd_hrtimer_init6, ptr @snd_hrtimer_exit, ptr @mytimer, ptr @resolution, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mytimer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resolution to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_hrtimer_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @mytimer, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @snd_timer_global_free(ptr noundef nonnull %0) #5
  store ptr null, ptr @mytimer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_global_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_init() #0 section ".init.text" align 64 {
entry:
  %timer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer) #5
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %timer, align 4, !annotation !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hrtimer_resolution to i32))
  %1 = load i32, ptr @hrtimer_resolution, align 4
  store i32 %1, ptr @resolution, align 4
  %call = call i32 @snd_timer_global_new(ptr noundef nonnull @.str, i32 noundef 3, ptr noundef nonnull %timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %module = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %module, align 4
  %name = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 9)
  %hw = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %hw, ptr @hrtimer_hw, i32 48)
  %7 = load i32, ptr @resolution, align 4
  %resolution = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %resolution, align 4
  %div = udiv i32 1000000000, %7
  %ticks = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %ticks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %ticks, align 4
  %max_instances = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %max_instances to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %max_instances, align 4
  %call4 = call i32 @snd_timer_global_register(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  %11 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %timer, align 4
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 @snd_timer_global_free(ptr noundef %12) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %12, ptr @mytimer, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_global_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_global_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_open(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %call7.i.i, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %hrt, i32 noundef 1, i32 noundef 1) #5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %t, ptr %call7.i.i, align 8
  %function = getelementptr inbounds %struct.snd_hrtimer, ptr %call7.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snd_hrtimer_callback, ptr %function, align 8
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 10
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_close(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %running = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 8
  %2 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %running, align 4
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %in_callback to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %in_callback, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 1
  %call = tail call i32 @hrtimer_cancel(ptr noundef %hrt) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_start(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in_callback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_callback, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 1
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 9
  %4 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sticks, align 4
  %6 = load i32, ptr @resolution, align 4
  %mul = mul i32 %6, %5
  %conv = zext i32 %mul to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %hrt, i64 noundef %conv, i64 noundef 0, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_stop(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %t, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in_callback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_callback, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 1
  %call = tail call i32 @hrtimer_try_to_cancel(ptr noundef %hrt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_callback(ptr nocapture noundef %hrt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrt, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.snd_timer, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %running = getelementptr inbounds %struct.snd_timer, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %in_callback = getelementptr i8, ptr %hrt, i32 48
  %4 = ptrtoint ptr %in_callback to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %in_callback, align 8
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sticks, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %base = getelementptr inbounds %struct.hrtimer, ptr %hrt, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %get_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_time, align 4
  %call = tail call i64 %10() #5
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %hrt, i32 0, i32 1
  %11 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %expires.i, align 8
  %sub = sub i64 %call, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %if.else214.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else214.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = load i32, ptr @resolution, align 4
  %mul = mul i32 %13, %6
  %conv = zext i32 %mul to i64
  %call215.i = tail call i64 @__ktime_divns(i64 noundef %sub, i64 noundef %conv) #5
  %extract.t = trunc i64 %call215.i to i32
  %conv6 = add i32 %6, %extract.t
  br label %if.end7

if.end7:                                          ; preds = %if.else214.i, %if.end.if.end7_crit_edge
  %ticks.0 = phi i32 [ %conv6, %if.else214.i ], [ %6, %if.end.if.end7_crit_edge ]
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  tail call void @snd_timer_interrupt(ptr noundef %15, i32 noundef %ticks.0) #5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %16 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.end7.if.end16_crit_edge, label %if.then12

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sticks, align 4
  %20 = load i32, ptr @resolution, align 4
  %mul14 = mul i32 %20, %19
  %conv15 = zext i32 %mul14 to i64
  %21 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %expires.i, align 8
  %add.i36 = add i64 %22, %conv15
  store i64 %add.i36, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %hrt, i32 0, i32 1
  %23 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %_softexpires.i, align 8
  %add3.i = add i64 %24, %conv15
  store i64 %add3.i, ptr %_softexpires.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end7.if.end16_crit_edge
  %ret.0 = phi i32 [ 1, %if.then12 ], [ 0, %if.end7.if.end16_crit_edge ]
  %25 = ptrtoint ptr %in_callback to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %in_callback, align 8
  br label %out

out:                                              ; preds = %if.end16, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end16 ], [ 0, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_divns(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/core/hrtimer.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/core/hrtimer.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/core/hrtimer.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias193, !8, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!8 = !{!"../sound/core/hrtimer.c", i32 19, i32 1}
!9 = !{ptr @__initcall__kmod_snd_hrtimer__194_168_snd_hrtimer_init6, !10, !"__initcall__kmod_snd_hrtimer__194_168_snd_hrtimer_init6", i1 false, i1 false}
!10 = !{!"../sound/core/hrtimer.c", i32 168, i32 1}
!11 = !{ptr @__exitcall_snd_hrtimer_exit, !12, !"__exitcall_snd_hrtimer_exit", i1 false, i1 false}
!12 = !{!"../sound/core/hrtimer.c", i32 169, i32 1}
!13 = !{ptr @mytimer, !14, !"mytimer", i1 false, i1 false}
!14 = !{!"../sound/core/hrtimer.c", i32 128, i32 26}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/core/hrtimer.c", i32 138, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/hrtimer.c", i32 144, i32 22}
!19 = !{ptr @resolution, !20, !"resolution", i1 false, i1 false}
!20 = !{!"../sound/core/hrtimer.c", i32 22, i32 21}
!21 = !{ptr @hrtimer_hw, !22, !"hrtimer_hw", i1 false, i1 false}
!22 = !{!"../sound/core/hrtimer.c", i32 116, i32 40}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i8 0, i8 2}
